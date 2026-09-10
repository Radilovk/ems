.class public final Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;
.super Ljava/awt/Graphics2D;
.source "EscherGraphics2d.java"


# instance fields
.field private _deviceclip:Ljava/awt/Shape;

.field private _escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

.field private _img:Ljava/awt/image/BufferedImage;

.field private _paint:Ljava/awt/Paint;

.field private _stroke:Ljava/awt/Stroke;

.field private _trans:Ljava/awt/geom/AffineTransform;

.field private logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/EscherGraphics;)V
    .locals 3
    .param p1, "escherGraphics"    # Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    .line 86
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    .line 87
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    .line 88
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setImg(Ljava/awt/image/BufferedImage;)V

    .line 89
    sget-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setColor(Ljava/awt/Color;)V

    .line 90
    return-void
.end method

.method private getDeviceclip()Ljava/awt/Shape;
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_deviceclip:Ljava/awt/Shape;

    return-object v0
.end method

.method private getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    return-object v0
.end method

.method private getG2D()Ljava/awt/Graphics2D;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    check-cast v0, Ljava/awt/Graphics2D;

    return-object v0
.end method

.method private getImg()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_img:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method private getTrans()Ljava/awt/geom/AffineTransform;
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_trans:Ljava/awt/geom/AffineTransform;

    return-object v0
.end method

.method private setDeviceclip(Ljava/awt/Shape;)V
    .locals 0
    .param p1, "deviceclip"    # Ljava/awt/Shape;

    .line 606
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_deviceclip:Ljava/awt/Shape;

    .line 607
    return-void
.end method

.method private setImg(Ljava/awt/image/BufferedImage;)V
    .locals 0
    .param p1, "img"    # Ljava/awt/image/BufferedImage;

    .line 581
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_img:Ljava/awt/image/BufferedImage;

    .line 582
    return-void
.end method

.method private setTrans(Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .param p1, "trans"    # Ljava/awt/geom/AffineTransform;

    .line 596
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_trans:Ljava/awt/geom/AffineTransform;

    .line 597
    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 94
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->addRenderingHints(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public clearRect(IIII)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    .line 100
    .local v0, "paint1":Ljava/awt/Paint;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getBackground()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setColor(Ljava/awt/Color;)V

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->fillRect(IIII)V

    .line 102
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setPaint(Ljava/awt/Paint;)V

    .line 103
    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 107
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getDeviceclip()Ljava/awt/Shape;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/awt/geom/Area;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    .line 110
    .local v0, "area":Ljava/awt/geom/Area;
    if-eqz p1, :cond_0

    .line 111
    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, v1}, Ljava/awt/geom/Area;->intersect(Ljava/awt/geom/Area;)V

    .line 112
    :cond_0
    move-object p1, v0

    .line 114
    .end local v0    # "area":Ljava/awt/geom/Area;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setClip(Ljava/awt/Shape;)V

    .line 115
    return-void
.end method

.method public clipRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 119
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->clip(Ljava/awt/Shape;)V

    .line 120
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .line 125
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics2D;->copyArea(IIIIII)V

    .line 126
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 2

    .line 130
    new-instance v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;-><init>(Lorg/apache/poi/hssf/usermodel/EscherGraphics;)V

    .line 131
    .local v0, "g2d":Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;
    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->dispose()V

    .line 137
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 138
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getImg()Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->flush()V

    .line 139
    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 8
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 143
    instance-of v0, p1, Ljava/awt/geom/Line2D;

    if-eqz v0, :cond_1

    .line 145
    move-object v0, p1

    check-cast v0, Ljava/awt/geom/Line2D;

    .line 147
    .local v0, "shape2d":Ljava/awt/geom/Line2D;
    const/4 v1, 0x0

    .line 148
    .local v1, "width":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_stroke:Ljava/awt/Stroke;

    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/awt/BasicStroke;

    if-eqz v3, :cond_0

    .line 149
    check-cast v2, Ljava/awt/BasicStroke;

    invoke-virtual {v2}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v2

    float-to-int v2, v2

    mul-int/lit16 v1, v2, 0x319c

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX1()D

    move-result-wide v2

    double-to-int v3, v2

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY1()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    double-to-int v6, v6

    move-object v2, p0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawLine(IIIII)V

    .line 153
    .end local v0    # "shape2d":Ljava/awt/geom/Line2D;
    .end local v1    # "width":I
    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "draw not fully supported"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 159
    :cond_2
    :goto_0
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .line 164
    new-instance v8, Ljava/awt/geom/Arc2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    invoke-virtual {p0, v8}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->draw(Ljava/awt/Shape;)V

    .line 165
    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 1
    .param p1, "g"    # Ljava/awt/font/GlyphVector;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 169
    invoke-virtual {p1, p2, p3}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->fill(Ljava/awt/Shape;)V

    .line 170
    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 10
    .param p1, "bufferedimage"    # Ljava/awt/image/BufferedImage;
    .param p2, "op"    # Ljava/awt/image/BufferedImageOp;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 222
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 223
    .local v1, "img":Ljava/awt/image/BufferedImage;
    new-instance v9, Ljava/awt/geom/AffineTransform;

    int-to-float v7, p3

    int-to-float v8, p4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljava/awt/geom/AffineTransform;-><init>(FFFFFF)V

    invoke-virtual {p0, v1, v9, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 224
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 3
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "bgColor"    # Ljava/awt/Color;
    .param p11, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "drawImage() not supported"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 13
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 183
    move-object v12, p0

    iget-object v0, v12, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, v12, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "drawImage() not supported"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 185
    :cond_0
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 3
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "bgColor"    # Ljava/awt/Color;
    .param p7, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "drawImage() not supported"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 191
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 8
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "observer"    # Ljava/awt/image/ImageObserver;

    .line 198
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bgColor"    # Ljava/awt/Color;
    .param p5, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 203
    invoke-virtual {p1, p5}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p5}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 7
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 208
    invoke-virtual {p1, p4}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p4}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 2
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "affinetransform"    # Ljava/awt/geom/AffineTransform;
    .param p3, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .line 213
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/AffineTransform;

    .line 214
    .local v0, "affinetransform1":Ljava/awt/geom/AffineTransform;
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, p3}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 216
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setTrans(Ljava/awt/geom/AffineTransform;)V

    .line 217
    const/4 v1, 0x1

    return v1
.end method

.method public drawLine(IIII)V
    .locals 7
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "width":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_stroke:Ljava/awt/Stroke;

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/awt/BasicStroke;

    if-eqz v2, :cond_0

    .line 235
    check-cast v1, Ljava/awt/BasicStroke;

    invoke-virtual {v1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit16 v0, v1, 0x319c

    .line 237
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawLine(IIIII)V

    .line 239
    return-void
.end method

.method public drawLine(IIIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "width"    # I

    .line 228
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawLine(IIIII)V

    .line 229
    return-void
.end method

.method public drawOval(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 243
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawOval(IIII)V

    .line 245
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 250
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawPolygon([I[II)V

    .line 251
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 4
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 255
    if-lez p3, :cond_1

    .line 257
    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 258
    .local v0, "generalpath":Ljava/awt/geom/GeneralPath;
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 259
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 260
    aget v2, p1, v1

    int-to-float v2, v2

    aget v3, p2, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->draw(Ljava/awt/Shape;)V

    .line 264
    .end local v0    # "generalpath":Ljava/awt/geom/GeneralPath;
    :cond_1
    return-void
.end method

.method public drawRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 268
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawRect(IIII)V

    .line 269
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "renderableimage"    # Ljava/awt/image/renderable/RenderableImage;
    .param p2, "affinetransform"    # Ljava/awt/geom/AffineTransform;

    .line 273
    invoke-interface {p1}, Ljava/awt/image/renderable/RenderableImage;->createDefaultRendering()Ljava/awt/image/RenderedImage;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 274
    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 5
    .param p1, "renderedimage"    # Ljava/awt/image/RenderedImage;
    .param p2, "affinetransform"    # Ljava/awt/geom/AffineTransform;

    .line 278
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 279
    .local v0, "bufferedimage":Ljava/awt/image/BufferedImage;
    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    .line 280
    invoke-virtual {p0, v0, p2, v4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 281
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .line 285
    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->draw(Ljava/awt/Shape;)V

    .line 286
    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 290
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawString(Ljava/lang/String;II)V

    .line 291
    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 295
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawString(Ljava/lang/String;II)V

    .line 296
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 6
    .param p1, "attributedcharacteriterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 300
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 301
    .local v0, "textlayout":Ljava/awt/font/TextLayout;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getPaint()Ljava/awt/Paint;

    move-result-object v1

    .line 302
    .local v1, "paint1":Ljava/awt/Paint;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setColor(Ljava/awt/Color;)V

    .line 303
    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->fill(Ljava/awt/Shape;)V

    .line 304
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setPaint(Ljava/awt/Paint;)V

    .line 305
    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1
    .param p1, "attributedcharacteriterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 309
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawString(Ljava/text/AttributedCharacterIterator;II)V

    .line 310
    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 3
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 314
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "fill(Shape) not supported"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 316
    :cond_0
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 9
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I
    .param p5, "i1"    # I
    .param p6, "j1"    # I

    .line 320
    new-instance v8, Ljava/awt/geom/Arc2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    const/4 v7, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    invoke-virtual {p0, v8}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->fill(Ljava/awt/Shape;)V

    .line 321
    return-void
.end method

.method public fillOval(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 325
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->fillOval(IIII)V

    .line 326
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .line 349
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->fillPolygon([I[II)V

    .line 350
    return-void
.end method

.method public fillRect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 354
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->fillRect(IIII)V

    .line 355
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .line 360
    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->fill(Ljava/awt/Shape;)V

    .line 361
    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .line 365
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getBackground()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 2

    .line 372
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getDeviceclip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "_ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 382
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getDeviceclip()Ljava/awt/Shape;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getClip()Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 1

    .line 395
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 1

    .line 400
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    .line 405
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getFont()Ljava/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 1
    .param p1, "font"    # Ljava/awt/Font;

    .line 410
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 2

    .line 415
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 416
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    return-object v0
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_paint:Ljava/awt/Paint;

    return-object v0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/awt/RenderingHints$Key;

    .line 426
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    .line 431
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v0

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_stroke:Ljava/awt/Stroke;

    return-object v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    .line 441
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/AffineTransform;

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 2
    .param p1, "rectangle"    # Ljava/awt/Rectangle;
    .param p2, "shape"    # Ljava/awt/Shape;
    .param p3, "flag"    # Z

    .line 446
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 447
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getStroke()Ljava/awt/Stroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    .line 448
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 449
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z

    move-result v0

    return v0
.end method

.method public rotate(D)V
    .locals 1
    .param p1, "d"    # D

    .line 454
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 455
    return-void
.end method

.method public rotate(DDD)V
    .locals 7
    .param p1, "d"    # D
    .param p3, "d1"    # D
    .param p5, "d2"    # D

    .line 459
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 460
    return-void
.end method

.method public scale(DD)V
    .locals 1
    .param p1, "d"    # D
    .param p3, "d1"    # D

    .line 464
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 465
    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 1
    .param p1, "c"    # Ljava/awt/Color;

    .line 469
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setBackground(Ljava/awt/Color;)V

    .line 470
    return-void
.end method

.method public setClip(IIII)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I
    .param p4, "l"    # I

    .line 474
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setClip(Ljava/awt/Shape;)V

    .line 475
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 1
    .param p1, "shape"    # Ljava/awt/Shape;

    .line 479
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setDeviceclip(Ljava/awt/Shape;)V

    .line 480
    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 1
    .param p1, "c"    # Ljava/awt/Color;

    .line 484
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_escherGraphics:Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setColor(Ljava/awt/Color;)V

    .line 485
    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 1
    .param p1, "composite"    # Ljava/awt/Composite;

    .line 489
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 490
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 1
    .param p1, "font"    # Ljava/awt/Font;

    .line 494
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setFont(Ljava/awt/Font;)V

    .line 495
    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 1
    .param p1, "paint1"    # Ljava/awt/Paint;

    .line 499
    if-eqz p1, :cond_0

    .line 501
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_paint:Ljava/awt/Paint;

    .line 502
    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_0

    .line 503
    move-object v0, p1

    check-cast v0, Ljava/awt/Color;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setColor(Ljava/awt/Color;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setPaintMode()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setPaintMode()V

    .line 510
    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/awt/RenderingHints$Key;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 514
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 515
    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 519
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getG2D()Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    .line 520
    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 0
    .param p1, "s"    # Ljava/awt/Stroke;

    .line 524
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->_stroke:Ljava/awt/Stroke;

    .line 525
    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "affinetransform"    # Ljava/awt/geom/AffineTransform;

    .line 529
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->setTrans(Ljava/awt/geom/AffineTransform;)V

    .line 530
    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 1
    .param p1, "color1"    # Ljava/awt/Color;

    .line 534
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getEscherGraphics()Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setXORMode(Ljava/awt/Color;)V

    .line 535
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .param p1, "d"    # D
    .param p3, "d1"    # D

    .line 539
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    .line 540
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 1
    .param p1, "affinetransform"    # Ljava/awt/geom/AffineTransform;

    .line 544
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 545
    return-void
.end method

.method public translate(DD)V
    .locals 1
    .param p1, "d"    # D
    .param p3, "d1"    # D

    .line 561
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 562
    return-void
.end method

.method public translate(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 566
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics2d;->getTrans()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 567
    return-void
.end method
