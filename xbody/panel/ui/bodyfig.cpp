#include "bodyfig.h"

bool BodyFig::load(const QString &dir, const QString &key) {
    QImage a(dir + QLatin1Char('/') + key + QLatin1String("-art.png"));
    QImage m(dir + QLatin1Char('/') + key + QLatin1String("-idx.png"));
    if (a.isNull() || m.isNull() || a.size() != m.size()) return false;
    art_ = a.convertToFormat(QImage::Format_ARGB32_Premultiplied);
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
            int r = qRed(p);
            if (qBlue(p) <= 8 || r < 1 || r > REGIONS) continue;   // outside, or the deltoid / body (no channel)
            map_[y * w + x] = (unsigned char)r;
            idx_.push_back(y * w + x);
            region_.push_back((unsigned char)(r - 1));
            shade_.push_back((unsigned char)qGreen(p));
            cov_.push_back((unsigned char)qBlue(p));
        }
    }
    over_ = QImage(w, h, QImage::Format_ARGB32_Premultiplied);
    over_.fill(0);
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
    l = 56 + l * 78 / 100;   // softer darks: the lighter figure, the red stays red (as the tablet app)
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

void BodyFig::paint(const unsigned col[REGIONS], const int alpha[REGIONS]) {
    QString key;
    for (int i = 0; i < REGIONS; i++) key += QString::number(col[i]) + QLatin1Char(':') + QString::number(alpha[i]) + QLatin1Char(',');
    if (key == painted_ || over_.isNull()) return;
    painted_ = key;
    over_.fill(0);
    QRgb *px = (QRgb *)over_.bits();
    for (size_t j = 0; j < idx_.size(); j++) {
        int z = region_[j];
        if (alpha[z] <= 0) continue;
        px[idx_[j]] = shadeOf(col[z], shade_[j], cov_[j] * alpha[z] / 100);
    }
}
