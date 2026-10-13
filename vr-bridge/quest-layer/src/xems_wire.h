// XEMS VR haptic bridge — wire format (Quest 3 layer <-> tablet gateway).
// Little-endian, packed, UDP. Tablet listens on kPort; the layer uses one ephemeral port for everything.
//
//   layer  -> tablet : HELLO (heartbeat + discovery, broadcast until ACKed), HAPTIC, STOP, PONG
//   tablet -> layer  : ACK (reply to HELLO, pairs the layer to the tablet's unicast address), PING
//   game   -> tablet : CTRL — the game's own impulse dock (XEMS Studio, vr-workout/scripts/game/tablet.gd), from its
//                      own socket; accepted only from the address the layer is paired from
//   tablet -> game   : STATE — the answer to every CTRL (the suit side as the tablet sees it)
//
// Clock sync (NTP-style, both sides CLOCK_MONOTONIC ns):
//   PING.h.tNs = t0 (tablet send)  ->  PONG.t0 = t0, PONG.t1 = quest receive, PONG.h.tNs = t2 (quest send)
//   tablet receive = t3;  offset(quest - tablet) = ((t1 - t0) + (t2 - t3)) / 2;  rtt = (t3 - t0) - (t2 - t1)
//
// Java mirror: branding/java/src/com/isaigu/gymapp/wearable/vr/VrWire.java — keep both in sync.
#pragma once
#include <cstddef>
#include <cstdint>

namespace xems::wire {

constexpr uint32_t kMagic   = 0x48525658u;  // bytes 'X' 'V' 'R' 'H'
constexpr uint8_t  kVersion = 1;
constexpr uint16_t kPort    = 47800;

enum Type : uint8_t {
    T_HAPTIC = 0x01,
    T_STOP   = 0x02,
    T_HELLO  = 0x03,
    T_PONG   = 0x04,
    T_CTRL   = 0x05,
    T_ACK    = 0x81,
    T_PING   = 0x82,
    T_STATE  = 0x83,
};

enum CtrlOp : uint8_t {
    CTRL_QUERY    = 0,  // just the STATE
    CTRL_PAUSE    = 1,  // arg 1 = the game stops driving the strength (the row keeps the trainer's strength)
    CTRL_STRENGTH = 2,  // value = step of the trainer's strength (the ceiling), only while VR drives; |step| <= 5
    CTRL_FLOOR    = 3,  // value = weakest hit, % of the trainer's strength (0..90)
    CTRL_SENS     = 4,  // arg = which hits pass: 0 strong only, 1 normal, 2 all
    CTRL_SMOOTH   = 5,  // arg = rise: 0 sharp, 1 normal, 2 soft
    CTRL_REST     = 6,  // arg = channel (partsDisabled index 0..9), value 1 = rests while VR drives
    CTRL_RESET    = 7,  // the tablet's defaults
};

enum StateFlags : uint8_t {
    ST_LINKED  = 0x01,  // the haptic layer is paired
    ST_DRIVING = 0x02,  // VR drives a running row now
    ST_PAUSED  = 0x04,  // "the game drives the strength" is off
    ST_MUSIC   = 0x08,  // the music player owns the strength; VR waits
};

enum Hand : uint8_t {
    HAND_UNKNOWN = 0,  // non-hand subaction path (gamepad, …)
    HAND_LEFT    = 1,
    HAND_RIGHT   = 2,
    HAND_BOTH    = 3,  // XR_NULL_PATH and the action is bound to both hands / bindings unknown
};

enum HapticFlags : uint8_t {
    HF_MIN_DURATION = 0x01,  // XR_MIN_HAPTIC_DURATION / 0: runtime-defined shortest pulse, durationUs = 0
    HF_FREQ_UNSPEC  = 0x02,  // XR_FREQUENCY_UNSPECIFIED, frequencyHz = 0
    HF_ENVELOPE     = 0x04,  // XR_FB_haptic_amplitude_envelope: amplitude = envelope peak
    HF_PCM          = 0x08,  // XR_FB_haptic_pcm: amplitude = |sample| peak, duration = samples / rate
    HF_APPEND       = 0x10,  // PCM append: extends the running pulse instead of restarting it
};

enum StopReason : uint8_t {
    SR_APP      = 0,  // xrStopHapticFeedback
    SR_UNFOCUS  = 1,  // session left FOCUSED (menu, guardian, headset off)
    SR_SHUTDOWN = 2,  // xrDestroyInstance
};

enum HelloCaps : uint16_t {
    CAP_PCM      = 0x0001,
    CAP_ENVELOPE = 0x0002,
};

#pragma pack(push, 1)
struct Header {
    uint32_t magic;
    uint8_t  version;
    uint8_t  type;
    uint16_t reserved;
    uint32_t session;  // random per layer instance — a new value = game restarted
    uint32_t seq;      // per session, all packet types, wraps
    uint64_t tNs;      // sender CLOCK_MONOTONIC
};

struct Haptic {
    Header   h;
    uint8_t  hand;
    uint8_t  flags;
    uint16_t reserved;
    float    amplitude;    // 0..1
    uint32_t durationUs;   // saturates at 0xFFFFFFFF (XR_INFINITE_DURATION)
    float    frequencyHz;  // 0 when HF_FREQ_UNSPEC
};

struct Stop {
    Header  h;
    uint8_t hand;
    uint8_t reason;
    uint8_t reserved[2];
};

struct Hello {
    Header   h;
    uint16_t caps;
    uint8_t  nameLen;
    char     name[93];  // package name, not NUL-terminated
};

struct Pong {
    Header   h;   // h.tNs = t2
    uint64_t t0;
    uint64_t t1;
};

struct Ctrl {
    Header   h;   // h.session = the game's own random id
    uint8_t  op;
    uint8_t  arg;
    uint16_t reserved;
    int32_t  value;
};

struct State {
    Header   h;
    uint8_t  flags;
    uint8_t  sens;
    uint8_t  smooth;
    uint8_t  floor;     // %
    uint16_t rests;     // bit per channel (partsDisabled index)
    uint8_t  level;     // the game's haptic level 0..100
    int8_t   applied;   // strength sent to the suit 0..100, -1 = not driving
    int32_t  ceiling;   // the trainer's strength while VR drives, -1 otherwise
    uint32_t passed;    // hits that became an impulse since the link
    uint32_t dropped;   // haptics the gate dropped
    uint32_t reserved;
};
#pragma pack(pop)

static_assert(sizeof(Header) == 24, "wire");
static_assert(sizeof(Haptic) == 40, "wire");
static_assert(sizeof(Stop)   == 28, "wire");
static_assert(sizeof(Hello)  == 120, "wire");
static_assert(sizeof(Pong)   == 40, "wire");
static_assert(sizeof(Ctrl)   == 32, "wire");
static_assert(sizeof(State)  == 48, "wire");

}  // namespace xems::wire
