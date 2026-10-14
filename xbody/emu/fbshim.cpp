// Emulator only (never shipped): LD_PRELOAD for qemu-arm that turns /dev/fb0 into a plain file so the card's Qt
// (LinuxFb driver) draws into it; scripts/xbody/screen.py turns the file into a PNG.
//   XEMS_FB=/path/file XEMS_FB_W=1920 XEMS_FB_H=1080 (32 bpp ARGB)
#include <dlfcn.h>
#define XEMS_O_RDWR 02  // not <fcntl.h>: its open64 declaration clashes with the wrapper below
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <linux/fb.h>

static int fbfd = -1;

static int env_int(const char *k, int d) { const char *v = getenv(k); return v ? atoi(v) : d; }

static int redirect(const char *path, int flags, int mode, int (*real)(const char *, int, ...)) {
    if (path && strcmp(path, "/dev/fb0") == 0 && getenv("XEMS_FB")) {
        fbfd = real(getenv("XEMS_FB"), XEMS_O_RDWR, 0);
        return fbfd;
    }
    return real(path, flags, mode);
}

extern "C" int open(const char *path, int flags, ...) {
    static int (*real)(const char *, int, ...) = (int (*)(const char *, int, ...))dlsym(RTLD_NEXT, "open");
    va_list ap; va_start(ap, flags); int mode = va_arg(ap, int); va_end(ap);
    return redirect(path, flags, mode, real);
}

extern "C" int open64(const char *path, int flags, ...) {
    static int (*real)(const char *, int, ...) = (int (*)(const char *, int, ...))dlsym(RTLD_NEXT, "open64");
    va_list ap; va_start(ap, flags); int mode = va_arg(ap, int); va_end(ap);
    return redirect(path, flags, mode, real);
}

// QScreenLinuxFb::connect checks access(dev, R_OK|W_OK) before it opens.
extern "C" int access(const char *path, int mode) {
    static int (*real)(const char *, int) = (int (*)(const char *, int))dlsym(RTLD_NEXT, "access");
    if (path && strcmp(path, "/dev/fb0") == 0 && getenv("XEMS_FB")) return 0;
    return real(path, mode);
}

extern "C" int ioctl(int fd, unsigned long req, ...) {
    static int (*real)(int, unsigned long, ...) = (int (*)(int, unsigned long, ...))dlsym(RTLD_NEXT, "ioctl");
    va_list ap; va_start(ap, req); void *arg = va_arg(ap, void *); va_end(ap);
    if (fd != fbfd || fbfd < 0) return real(fd, req, arg);
    int w = env_int("XEMS_FB_W", 1920), h = env_int("XEMS_FB_H", 1080);
    if (req == FBIOGET_VSCREENINFO) {
        struct fb_var_screeninfo *v = (struct fb_var_screeninfo *)arg;
        memset(v, 0, sizeof *v);
        v->xres = v->xres_virtual = w; v->yres = v->yres_virtual = h; v->bits_per_pixel = 32;
        v->red.offset = 16; v->red.length = 8; v->green.offset = 8; v->green.length = 8;
        v->blue.offset = 0; v->blue.length = 8; v->transp.offset = 24; v->transp.length = 8;
        v->width = 476; v->height = 268;   // mm, ~21.5" 16:9
        return 0;
    }
    if (req == FBIOGET_FSCREENINFO) {
        struct fb_fix_screeninfo *f = (struct fb_fix_screeninfo *)arg;
        memset(f, 0, sizeof *f);
        strcpy(f->id, "xems-emu");
        f->smem_len = w * h * 4; f->line_length = w * 4;
        f->type = FB_TYPE_PACKED_PIXELS; f->visual = FB_VISUAL_TRUECOLOR;
        return 0;
    }
    return 0;   // PUT_VSCREENINFO, PAN, BLANK, CMAP …: accept
}
