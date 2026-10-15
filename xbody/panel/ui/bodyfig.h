// The XEMS body figures on the panel (owner: the XEMS figures, female by default, every zone as red as its impulse):
// art + zone map from /opt/xems/body (scripts/xbody/gen-panel-body.py), recoloured like the tablet's live board —
// the shade keeps the muscle's volume. Regions are the XEMS channels (0 Гърди … 9 Задно бедро).
#pragma once
#include <QImage>
#include <QString>
#include <vector>

class BodyFig {
public:
    enum { REGIONS = 10 };
    bool load(const QString &dir, const QString &key);   // false: the files are missing
    bool ok() const { return !art_.isNull(); }
    const QImage &art() const { return art_; }
    const QImage &over() const { return over_; }
    int width() const { return art_.width(); }
    int height() const { return art_.height(); }
    // Colour (0xRRGGBB) and opacity 0..100 per region; repaints the overlay only when they changed.
    void paint(const unsigned col[REGIONS], const int alpha[REGIONS]);
    int regionAt(int x, int y) const;   // −1: none (looks a few pixels around: a finger is wide)

private:
    QImage art_, over_;
    std::vector<int> idx_;
    std::vector<unsigned char> region_, shade_, cov_, map_;
    QString painted_;
};
