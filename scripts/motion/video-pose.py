# Video as the truth for XEMS Motion (docs/xems-motion.md 1.15): MediaPipe Pose (heavy) on every 10th of a second
# -> joint angles of the person in the clip. pip install mediapipe; apt-get install -y libegl1 libgles2; model:
# storage.googleapis.com/mediapipe-models/pose_landmarker/pose_landmarker_heavy/float16/latest/pose_landmarker_heavy.task
#   python3 scripts/motion/video-pose.py <clip.mp4> <pose_landmarker_heavy.task> <out.json>
import sys, json, math, subprocess
import numpy as np, mediapipe as mp
from mediapipe.tasks import python as mpt
from mediapipe.tasks.python import vision
vid, model, out = sys.argv[1], sys.argv[2], sys.argv[3]
W, H, FPS = 360, 640, 10
p = subprocess.Popen(['ffmpeg', '-v', 'error', '-i', vid, '-vf', f'fps={FPS},scale={W}:{H}', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-'], stdout=subprocess.PIPE)
opt = vision.PoseLandmarkerOptions(base_options=mpt.BaseOptions(model_asset_path=model), running_mode=vision.RunningMode.VIDEO)
lm = vision.PoseLandmarker.create_from_options(opt)
res = []; i = 0
while True:
    b = p.stdout.read(W * H * 3)
    if len(b) < W * H * 3: break
    img = mp.Image(image_format=mp.ImageFormat.SRGB, data=np.frombuffer(b, np.uint8).reshape(H, W, 3))
    r = lm.detect_for_video(img, int(i * 1000 / FPS))
    t = i / FPS; i += 1
    if not r.pose_world_landmarks: res.append({'t': t}); continue
    P = np.array([[q.x, q.y, q.z] for q in r.pose_world_landmarks[0]]); vis = [q.visibility for q in r.pose_world_landmarks[0]]
    ang = lambda a, b: math.degrees(math.acos(max(-1, min(1, np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b) + 1e-9)))))
    sh = {'l': 11, 'r': 12}; el = {'l': 13, 'r': 14}; wr = {'l': 15, 'r': 16}; hp = {'l': 23, 'r': 24}; kn = {'l': 25, 'r': 26}; an = {'l': 27, 'r': 28}
    msh = (P[11] + P[12]) / 2; mhp = (P[23] + P[24]) / 2; down = mhp - msh
    o = {'t': t, 'lean': ang(msh - mhp, np.array([0, -1, 0]))}
    for s in 'lr':
        o[s + 'Elbow'] = 180 - ang(P[sh[s]] - P[el[s]], P[wr[s]] - P[el[s]])
        o[s + 'ShElev'] = ang(P[el[s]] - P[sh[s]], down)
        o[s + 'Knee'] = 180 - ang(P[hp[s]] - P[kn[s]], P[an[s]] - P[kn[s]])
        o[s + 'vis'] = min(vis[sh[s]], vis[el[s]], vis[wr[s]])
    # the arm segments' DIRECTIONS in the trunk's own frame (x forward, y left, z up): what a 3-D figure shows
    zu = (msh - mhp) / (np.linalg.norm(msh - mhp) + 1e-9)
    yl = P[11] - P[12]; yl = yl - zu * np.dot(yl, zu); yl /= np.linalg.norm(yl) + 1e-9
    xf = np.cross(yl, zu)
    tf = lambda v: [round(float(np.dot(v, xf)), 3), round(float(np.dot(v, yl)), 3), round(float(np.dot(v, zu)), 3)]
    for s in 'lr':
        u = P[el[s]] - P[sh[s]]; f = P[wr[s]] - P[el[s]]
        o[s + 'U'] = tf(u / (np.linalg.norm(u) + 1e-9)); o[s + 'F'] = tf(f / (np.linalg.norm(f) + 1e-9))
    res.append({k: (round(v, 1) if isinstance(v, float) else v) for k, v in o.items()})
json.dump(res, open(out, 'w'))
print('frames', len(res), 'with pose', sum(1 for r in res if 'lean' in r))
