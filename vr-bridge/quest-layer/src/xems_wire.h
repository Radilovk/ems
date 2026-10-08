// XEMS VR haptic bridge — wire format (Quest 3 layer <-> tablet gateway).
// Little-endian, packed, UDP. Tablet listens on kPort; the layer uses one ephemeral port for everything.
//
//   layer  -> tablet : HELLO (heartbeat + discovery, broadcast until ACKed), HAPTIC, STOP, PONG
//   tablet -> layer  : ACK (reply to HELLO, pairs the layer to the tablet's unicast address), PING
//
// Clock sync (NTP-style, both sides CLOCK_MONOTONIC ns):
//   PING.h.tNs = t0 (tablet send)  ->  PONG.t0 = t0, PONG.t1 = quest receive, PONG.h.tNs = t2 (quest send)
//   tablet receive = t3;  offset(quest - tablet) = ((t1 - t0) + (t2 - t3)) / 2;  rtt = (t3 - t0) - (t2 - t1)
//
// Java mirror: vr-bridge/tablet/src/com/isaigu/gymapp/vr/VrWire.java — keep both in sync.
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
    T_ACK    = 0x81,
    T_PING   = 0x82,
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
#pragma pack(pop)

static_assert(sizeof(Header) == 24, "wire");
static_assert(sizeof(Haptic) == 40, "wire");
static_assert(sizeof(Stop)   == 28, "wire");
static_assert(sizeof(Hello)  == 120, "wire");
static_assert(sizeof(Pong)   == 40, "wire");

}  // namespace xems::wire
