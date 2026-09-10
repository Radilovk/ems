.class public Lorg/apache/poi/ss/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final PIXEL_DPI:I = 0x60

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/poi/ss/util/ImageUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;
    .locals 16
    .param p0, "picture"    # Lorg/apache/poi/ss/usermodel/Picture;

    .line 228
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    .line 229
    .local v0, "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 230
    .local v1, "isHSSF":Z
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    .line 232
    .local v2, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    const-wide/16 v3, 0x0

    .line 233
    .local v3, "w":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v5

    .line 236
    .local v5, "col2":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "col2":I
    .local v6, "col2":I
    invoke-interface {v2, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v5

    float-to-double v3, v5

    .line 237
    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v5

    int-to-double v11, v5

    div-double/2addr v11, v7

    sub-double v11, v9, v11

    mul-double v3, v3, v11

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    int-to-double v11, v5

    sub-double/2addr v3, v11

    .line 243
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    move-result v5

    if-ge v6, v5, :cond_1

    .line 244
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "col2":I
    .restart local v5    # "col2":I
    invoke-interface {v2, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v6

    float-to-double v11, v6

    add-double/2addr v3, v11

    move v6, v5

    goto :goto_0

    .line 247
    .end local v5    # "col2":I
    .restart local v6    # "col2":I
    :cond_1
    if-eqz v1, :cond_2

    .line 248
    invoke-interface {v2, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v5

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v11

    int-to-float v11, v11

    mul-float v5, v5, v11

    float-to-double v11, v5

    div-double/2addr v11, v7

    add-double/2addr v3, v11

    goto :goto_1

    .line 250
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    int-to-double v7, v5

    add-double/2addr v3, v7

    .line 253
    :goto_1
    const-wide/16 v7, 0x0

    .line 254
    .local v7, "h":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v5

    .line 256
    .local v5, "row2":I
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "row2":I
    .local v11, "row2":I
    invoke-static {v2, v5}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v7

    .line 257
    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    if-eqz v1, :cond_3

    .line 258
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v5

    int-to-double v14, v5

    div-double/2addr v14, v12

    sub-double/2addr v9, v14

    mul-double v7, v7, v9

    goto :goto_2

    .line 260
    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    int-to-double v9, v5

    sub-double/2addr v7, v9

    .line 263
    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    move-result v5

    if-ge v11, v5, :cond_4

    .line 264
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "row2":I
    .restart local v5    # "row2":I
    invoke-static {v2, v11}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v9

    add-double/2addr v7, v9

    move v11, v5

    goto :goto_2

    .line 267
    .end local v5    # "row2":I
    .restart local v11    # "row2":I
    :cond_4
    if-eqz v1, :cond_5

    .line 268
    invoke-static {v2, v11}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v9

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v5

    int-to-double v14, v5

    mul-double v9, v9, v14

    div-double/2addr v9, v12

    add-double/2addr v7, v9

    goto :goto_3

    .line 270
    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    int-to-double v9, v5

    add-double/2addr v7, v9

    .line 273
    :goto_3
    new-instance v5, Ljava/awt/Dimension;

    double-to-int v9, v3

    mul-int/lit16 v9, v9, 0x2535

    double-to-int v10, v7

    mul-int/lit16 v10, v10, 0x2535

    invoke-direct {v5, v9, v10}, Ljava/awt/Dimension;-><init>(II)V

    return-object v5
.end method

.method public static getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "type"    # I

    .line 63
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0}, Ljava/awt/Dimension;-><init>()V

    .line 65
    .local v0, "size":Ljava/awt/Dimension;
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    .line 104
    sget-object v2, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    const-string v3, "Only JPEG, PNG and DIB pictures can be automatically sized"

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v2, "iis":Ljavax/imageio/stream/ImageInputStream;
    :try_start_1
    invoke-static {v2}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/ImageReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .local v4, "r":Ljavax/imageio/ImageReader;
    :try_start_2
    invoke-virtual {v4, v2}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object v6

    .line 81
    .local v6, "img":Ljava/awt/image/BufferedImage;
    invoke-static {v4}, Lorg/apache/poi/ss/util/ImageUtils;->getResolution(Ljavax/imageio/ImageReader;)[I

    move-result-object v7

    .line 85
    .local v7, "dpi":[I
    aget v8, v7, v5

    const/16 v9, 0x60

    if-nez v8, :cond_1

    aput v9, v7, v5

    .line 86
    :cond_1
    const/4 v8, 0x1

    aget v10, v7, v8

    if-nez v10, :cond_2

    aput v9, v7, v8

    .line 88
    :cond_2
    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x60

    aget v5, v7, v5

    div-int/2addr v10, v5

    iput v10, v0, Ljava/awt/Dimension;->width:I

    .line 89
    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x60

    aget v8, v7, v8

    div-int/2addr v5, v8

    iput v5, v0, Ljava/awt/Dimension;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v6    # "img":Ljava/awt/image/BufferedImage;
    .end local v7    # "dpi":[I
    :try_start_3
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    nop

    .line 94
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v4    # "r":Ljavax/imageio/ImageReader;
    :try_start_4
    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    nop

    .line 100
    .end local v2    # "iis":Ljavax/imageio/stream/ImageInputStream;
    goto :goto_0

    .line 91
    .restart local v2    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .restart local v4    # "r":Ljavax/imageio/ImageReader;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->dispose()V

    .end local v0    # "size":Ljava/awt/Dimension;
    .end local v2    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "type":I
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v4    # "r":Ljavax/imageio/ImageReader;
    .restart local v0    # "size":Ljava/awt/Dimension;
    .restart local v2    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "type":I
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .end local v0    # "size":Ljava/awt/Dimension;
    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "type":I
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 97
    .end local v2    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .restart local v0    # "size":Ljava/awt/Dimension;
    .restart local p0    # "is":Ljava/io/InputStream;
    .restart local p1    # "type":I
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Throwable;)V

    .line 102
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 106
    :goto_0
    return-object v0
.end method

.method public static getResolution(Ljavax/imageio/ImageReader;)[I
    .locals 11
    .param p0, "r"    # Ljavax/imageio/ImageReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/16 v0, 0x60

    .local v0, "hdpi":I
    const/16 v1, 0x60

    .line 119
    .local v1, "vdpi":I
    const-wide v2, 0x4039666666666666L    # 25.4

    .line 122
    .local v2, "mm2inch":D
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v5

    const-string v6, "javax_imageio_1.0"

    invoke-virtual {v5, v6}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 123
    .local v5, "node":Lorg/w3c/dom/Element;
    const-string v6, "HorizontalPixelSize"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 124
    .local v6, "lst":Lorg/w3c/dom/NodeList;
    const-string v7, "value"

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ne v9, v8, :cond_0

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    div-double v9, v2, v9

    double-to-int v0, v9

    .line 126
    :cond_0
    const-string v9, "VerticalPixelSize"

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ne v9, v8, :cond_1

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-double v9, v7

    div-double v9, v2, v9

    double-to-int v1, v9

    .line 129
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v0, v7, v4

    aput v1, v7, v8

    return-object v7
.end method

.method private static getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowNum"    # I

    .line 278
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 279
    .local v0, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDefaultRowHeightInPoints()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result v1

    :goto_0
    float-to-double v1, v1

    .line 280
    .local v1, "points":D
    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    div-int/lit16 v3, v3, 0x2535

    int-to-double v3, v3

    return-wide v3
.end method

.method public static setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;
    .locals 30
    .param p0, "picture"    # Lorg/apache/poi/ss/usermodel/Picture;
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 140
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    .line 141
    .local v0, "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 142
    .local v1, "isHSSF":Z
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v2

    .line 143
    .local v2, "data":Lorg/apache/poi/ss/usermodel/PictureData;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    .line 146
    .local v3, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v4

    .line 148
    .local v4, "imgSize":Ljava/awt/Dimension;
    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/util/ImageUtils;->getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;

    move-result-object v5

    .line 149
    .local v5, "anchorSize":Ljava/awt/Dimension;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v8, 0x40c29a8000000000L    # 9525.0

    cmpl-double v10, p1, v6

    if-nez v10, :cond_0

    invoke-virtual {v4}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v10

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v10

    div-double/2addr v10, v8

    mul-double v10, v10, p1

    .line 151
    .local v10, "scaledWidth":D
    :goto_0
    cmpl-double v12, p3, v6

    if-nez v12, :cond_1

    invoke-virtual {v4}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v8

    mul-double v6, v6, p3

    .line 154
    .local v6, "scaledHeight":D
    :goto_1
    const-wide/16 v12, 0x0

    .line 155
    .local v12, "w":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v14

    .line 156
    .local v14, "col2":I
    const/4 v15, 0x0

    .line 159
    .local v15, "dx2":I
    add-int/lit8 v16, v14, 0x1

    .end local v14    # "col2":I
    .local v16, "col2":I
    invoke-interface {v3, v14}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v14

    float-to-double v12, v14

    .line 160
    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v14

    int-to-double v8, v14

    div-double v8, v8, v17

    sub-double v8, v19, v8

    mul-double v12, v12, v8

    move/from16 v8, v16

    goto :goto_2

    .line 163
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v8

    div-int/lit16 v8, v8, 0x2535

    int-to-double v8, v8

    sub-double/2addr v12, v8

    move/from16 v8, v16

    .line 166
    .end local v16    # "col2":I
    .local v8, "col2":I
    :goto_2
    cmpg-double v9, v12, v10

    if-gez v9, :cond_3

    .line 167
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "col2":I
    .restart local v16    # "col2":I
    invoke-interface {v3, v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v12, v8

    move/from16 v8, v16

    goto :goto_2

    .line 170
    .end local v16    # "col2":I
    .restart local v8    # "col2":I
    :cond_3
    cmpl-double v9, v12, v10

    if-lez v9, :cond_6

    .line 172
    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v9

    move-object v14, v4

    move-object/from16 v16, v5

    .end local v4    # "imgSize":Ljava/awt/Dimension;
    .end local v5    # "anchorSize":Ljava/awt/Dimension;
    .local v14, "imgSize":Ljava/awt/Dimension;
    .local v16, "anchorSize":Ljava/awt/Dimension;
    float-to-double v4, v9

    .line 173
    .local v4, "cw":D
    sub-double v23, v12, v10

    .line 174
    .local v23, "delta":D
    if-eqz v1, :cond_4

    .line 175
    sub-double v25, v4, v23

    div-double v25, v25, v4

    move/from16 v27, v8

    .end local v8    # "col2":I
    .local v27, "col2":I
    mul-double v8, v25, v17

    double-to-int v8, v8

    move v15, v8

    .end local v15    # "dx2":I
    .local v8, "dx2":I
    goto :goto_3

    .line 177
    .end local v27    # "col2":I
    .local v8, "col2":I
    .restart local v15    # "dx2":I
    :cond_4
    move/from16 v27, v8

    .end local v8    # "col2":I
    .restart local v27    # "col2":I
    sub-double v8, v4, v23

    const-wide v17, 0x40c29a8000000000L    # 9525.0

    mul-double v8, v8, v17

    double-to-int v8, v8

    move v15, v8

    .line 179
    :goto_3
    if-gez v15, :cond_5

    const/4 v15, 0x0

    :cond_5
    move/from16 v8, v27

    goto :goto_4

    .line 170
    .end local v14    # "imgSize":Ljava/awt/Dimension;
    .end local v16    # "anchorSize":Ljava/awt/Dimension;
    .end local v23    # "delta":D
    .end local v27    # "col2":I
    .local v4, "imgSize":Ljava/awt/Dimension;
    .restart local v5    # "anchorSize":Ljava/awt/Dimension;
    .restart local v8    # "col2":I
    :cond_6
    move-object v14, v4

    move-object/from16 v16, v5

    .line 181
    .end local v4    # "imgSize":Ljava/awt/Dimension;
    .end local v5    # "anchorSize":Ljava/awt/Dimension;
    .restart local v14    # "imgSize":Ljava/awt/Dimension;
    .restart local v16    # "anchorSize":Ljava/awt/Dimension;
    :goto_4
    invoke-interface {v0, v8}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol2(I)V

    .line 182
    invoke-interface {v0, v15}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDx2(I)V

    .line 184
    const-wide/16 v4, 0x0

    .line 185
    .local v4, "h":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v9

    .line 186
    .local v9, "row2":I
    const/16 v17, 0x0

    .line 188
    .local v17, "dy2":I
    add-int/lit8 v18, v9, 0x1

    .end local v9    # "row2":I
    .local v18, "row2":I
    invoke-static {v3, v9}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v4

    .line 189
    const-wide/high16 v23, 0x4070000000000000L    # 256.0

    if-eqz v1, :cond_7

    .line 190
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v9

    move/from16 v25, v8

    .end local v8    # "col2":I
    .local v25, "col2":I
    int-to-double v8, v9

    div-double v8, v8, v23

    sub-double v19, v19, v8

    mul-double v4, v4, v19

    move/from16 v8, v18

    goto :goto_5

    .line 192
    .end local v25    # "col2":I
    .restart local v8    # "col2":I
    :cond_7
    move/from16 v25, v8

    .end local v8    # "col2":I
    .restart local v25    # "col2":I
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v8

    div-int/lit16 v8, v8, 0x2535

    int-to-double v8, v8

    sub-double/2addr v4, v8

    move/from16 v8, v18

    .line 195
    .end local v18    # "row2":I
    .local v8, "row2":I
    :goto_5
    cmpg-double v9, v4, v6

    if-gez v9, :cond_8

    .line 196
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "row2":I
    .restart local v18    # "row2":I
    invoke-static {v3, v8}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v8

    add-double/2addr v4, v8

    move/from16 v8, v18

    goto :goto_5

    .line 199
    .end local v18    # "row2":I
    .restart local v8    # "row2":I
    :cond_8
    cmpl-double v9, v4, v6

    if-lez v9, :cond_b

    .line 200
    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v18

    .line 201
    .local v18, "ch":D
    sub-double v26, v4, v6

    .line 202
    .local v26, "delta":D
    if-eqz v1, :cond_9

    .line 203
    sub-double v28, v18, v26

    div-double v28, v28, v18

    move v9, v1

    move-object/from16 v20, v2

    .end local v1    # "isHSSF":Z
    .end local v2    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .local v9, "isHSSF":Z
    .local v20, "data":Lorg/apache/poi/ss/usermodel/PictureData;
    mul-double v1, v28, v23

    double-to-int v1, v1

    move/from16 v17, v1

    .end local v17    # "dy2":I
    .local v1, "dy2":I
    goto :goto_6

    .line 205
    .end local v9    # "isHSSF":Z
    .end local v20    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .local v1, "isHSSF":Z
    .restart local v2    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .restart local v17    # "dy2":I
    :cond_9
    move v9, v1

    move-object/from16 v20, v2

    .end local v1    # "isHSSF":Z
    .end local v2    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .restart local v9    # "isHSSF":Z
    .restart local v20    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    sub-double v1, v18, v26

    const-wide v21, 0x40c29a8000000000L    # 9525.0

    mul-double v1, v1, v21

    double-to-int v1, v1

    move/from16 v17, v1

    .line 207
    :goto_6
    if-gez v17, :cond_a

    const/16 v17, 0x0

    :cond_a
    move/from16 v1, v17

    goto :goto_7

    .line 199
    .end local v9    # "isHSSF":Z
    .end local v18    # "ch":D
    .end local v20    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .end local v26    # "delta":D
    .restart local v1    # "isHSSF":Z
    .restart local v2    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    :cond_b
    move v9, v1

    move-object/from16 v20, v2

    .end local v1    # "isHSSF":Z
    .end local v2    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    .restart local v9    # "isHSSF":Z
    .restart local v20    # "data":Lorg/apache/poi/ss/usermodel/PictureData;
    move/from16 v1, v17

    .line 210
    .end local v17    # "dy2":I
    .local v1, "dy2":I
    :goto_7
    invoke-interface {v0, v8}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow2(I)V

    .line 211
    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDy2(I)V

    .line 213
    new-instance v2, Ljava/awt/Dimension;

    const-wide v17, 0x40c29a8000000000L    # 9525.0

    mul-double v21, v10, v17

    move-object/from16 v19, v0

    move/from16 v23, v1

    .end local v0    # "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .end local v1    # "dy2":I
    .local v19, "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .local v23, "dy2":I
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    mul-double v17, v17, v6

    move-object v0, v3

    move-wide/from16 v21, v4

    .end local v3    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v4    # "h":D
    .local v0, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .local v21, "h":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {v2, v1, v4}, Ljava/awt/Dimension;-><init>(II)V

    move-object v1, v2

    .line 218
    .local v1, "dim":Ljava/awt/Dimension;
    return-object v1
.end method
