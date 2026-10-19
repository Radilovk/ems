#include "bodyfig.h"

bool BodyFig::load(const QString &dir, const QString &key) {
    QImage a(dir + QLatin1Char('/') + key + QLatin1String("-art.png"));
    QImage d(dir + QLatin1Char('/') + key + QLatin1String("-dark.png"));
    QImage m(dir + QLatin1Char('/') + key + QLatin1String("-idx.png"));
    if (a.isNull() || m.isNull() || a.size() != m.size()) return false;
    art_ = a.convertToFormat(QImage::Format_ARGB32_Premultiplied);
    artDark_ = d.size() == a.size() ? d.convertToFormat(QImage::Format_ARGB32_Premultiplied) : art_;
    m = m.convertToFormat(QImage::Format_RGB32);
    int w = m.width(), h = m.height();
    map_.assign(w * h, 0);
    idx_.clear();
    region_.clear();
    shade_.clear();
    cov_.clear();
    for (int y = 0; y < h; y++) {
        const QRgb *row = (const QRgb *)m.constScanLine(y);
        for (int x = 0; x < w; x++) {
            QRgb p = row[x];
            int r = qRed(p), i = y * w + x;
            if (qBlue(p) <= 8 || r < 1 || r > REGIONS) continue;   // outside, or the deltoid / body (no channel)
            map_[i] = (unsigned char)r;
            idx_.push_back(i);
            region_.push_back((unsigned char)(r - 1));
            shade_.push_back((unsigned char)qGreen(p));   // the art's own tone (scripts/figure_looks.py)
            cov_.push_back((unsigned char)qBlue(p));
        }
    }
    over_ = QImage(w, h, QImage::Format_ARGB32_Premultiplied);
    over_.fill(0);
    glow_ = QImage(w, h, QImage::Format_ARGB32_Premultiplied);
    glow_.fill(0);
    painted_.clear();
    return true;
}

int BodyFig::regionAt(int x, int y) const {
    int w = art_.width(), h = art_.height();
    for (int r = 0; r <= 6; r += 3)
        for (int dy = -r; dy <= r; dy += r ? r : 1)
            for (int dx = -r; dx <= r; dx += r ? r : 1) {
                int xx = x + dx, yy = y + dy;
                if (xx < 0 || yy < 0 || xx >= w || yy >= h) continue;
                if (map_[yy * w + xx]) return map_[yy * w + xx] - 1;
            }
    return -1;
}

// The report's recolour: dark → black, mid → the colour, light → toward white; premultiplied for QImage.
static QRgb shadeOf(unsigned c, int l, int alpha) {
    l = 41 + l * 214 / 255;   // the figure's tone: hollows deep, lights brighter — the red keeps its volume (0.16 + 0.84·l)
    int r = (c >> 16) & 0xFF, g = (c >> 8) & 0xFF, b = c & 0xFF;
    if (l < 128) {
        r = r * 2 * l / 255;
        g = g * 2 * l / 255;
        b = b * 2 * l / 255;
    } else {
        int k = (2 * l - 255) * 55 / 100;   // of 255
        r += (255 - r) * k / 255;
        g += (255 - g) * k / 255;
        b += (255 - b) * k / 255;
    }
    return qRgba(r * alpha / 255, g * alpha / 255, b * alpha / 255, alpha);
}

// The dark look's recolour: the hollows stay red-dark, the lights only a little paler — a saturated muscle.
static QRgb shadeDark(unsigned c, int l8, int alpha) {
    float l = 0.30f + 0.70f * l8 / 255.f;
    int r = (c >> 16) & 0xFF, g = (c >> 8) & 0xFF, b = c & 0xFF;
    if (l < 0.6f) {
        float k = 0.35f + l / 0.6f * 0.65f;
        r = (int)(r * k);
        g = (int)(g * k);
        b = (int)(b * k);
    } else {
        float k2 = (l - 0.6f) / 0.4f * 0.22f;
        r = (int)(r + (255 - r) * k2);
        g = (int)(g + (255 - g) * k2);
        b = (int)(b + (255 - b) * k2);
    }
    return qRgba(r * alpha / 255, g * alpha / 255, b * alpha / 255, alpha);
}

void BodyFig::paint(const unsigned col[REGIONS], const int alpha[REGIONS], bool dark) {
    QString key = QLatin1String(dark ? "d" : "l");
    for (int i = 0; i < REGIONS; i++) key += QString::number(col[i]) + QLatin1Char(':') + QString::number(alpha[i]) + QLatin1Char(',');
    if (key == painted_ || over_.isNull()) return;
    painted_ = key;
    over_.fill(0);
    QRgb *px = (QRgb *)over_.bits();
    for (size_t j = 0; j < idx_.size(); j++) {
        int z = region_[j];
        if (alpha[z] <= 0) continue;
        int cv = cov_[j] * alpha[z] / 100;
        px[idx_[j]] = dark ? shadeDark(col[z], shade_[j], cv) : shadeOf(col[z], shade_[j], cv);
    }
    if (dark) halo();
}

// A box blur of radius r along rows (horizontal) or columns, src → dst.
static void box(const float *src, float *dst, int w, int h, int r, bool horizontal) {
    int len = horizontal ? w : h, lines = horizontal ? h : w, step = horizontal ? 1 : w;
    float k = 1.f / (2 * r + 1);
    for (int ln = 0; ln < lines; ln++) {
        int base = horizontal ? ln * w : ln;
        float sum = 0;
        for (int i = -r; i <= r; i++) sum += src[base + qBound(0, i, len - 1) * step];
        for (int i = 0; i < len; i++) {
            dst[base + i * step] = sum * k;
            sum += src[base + qMin(len - 1, i + r + 1) * step] - src[base + qMax(0, i - r) * step];
        }
    }
}

// The working zones' light on the dark figure: their colour, blurred wide (two box passes ≈ a soft gaussian).
void BodyFig::halo() {
    int w = over_.width(), h = over_.height(), n = w * h;
    if ((int)ga_.size() != n) {
        gr_.assign(n, 0.f);
        gg_.assign(n, 0.f);
        gb_.assign(n, 0.f);
        ga_.assign(n, 0.f);
        tmp_.assign(n, 0.f);
    }
    const QRgb *px = (const QRgb *)over_.constBits();   // premultiplied: the channels are already colour × alpha
    for (int i = 0; i < n; i++) {
        ga_[i] = qAlpha(px[i]) / 255.f;
        gr_[i] = qRed(px[i]);
        gg_[i] = qGreen(px[i]);
        gb_[i] = qBlue(px[i]);
    }
    std::vector<float> *ch[4] = {&gr_, &gg_, &gb_, &ga_};
    for (int pass = 0; pass < 2; pass++)
        for (int c = 0; c < 4; c++) {
            box(&(*ch[c])[0], &tmp_[0], w, h, 7, true);
            box(&tmp_[0], &(*ch[c])[0], w, h, 7, false);
        }
    QRgb *g = (QRgb *)glow_.bits();
    for (int i = 0; i < n; i++) {
        float al = ga_[i];
        if (al < 0.004f) {
            g[i] = 0;
            continue;
        }
        // 85 % of the blurred light; premultiplied, so the colour scales with the same factor
        g[i] = qRgba(qMin(255, (int)(gr_[i] * 0.85f)), qMin(255, (int)(gg_[i] * 0.85f)), qMin(255, (int)(gb_[i] * 0.85f)),
                     qMin(255, (int)(al * 0.85f * 255)));
    }
}
