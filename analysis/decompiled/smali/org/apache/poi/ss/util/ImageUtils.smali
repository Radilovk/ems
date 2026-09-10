.class public Lorg/apache/poi/ss/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final PIXEL_DPI:I = 0x60

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/poi/ss/util/ImageUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;
    .locals 18
    .param p0, "picture"    # Lorg/apache/poi/ss/usermodel/Picture;

    .prologue
    .line 228
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    .line 229
    .local v0, "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    instance-of v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 230
    .local v3, "isHSSF":Z
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    .line 232
    .local v8, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    const-wide/16 v10, 0x0

    .line 233
    .local v10, "w":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v1

    .line 236
    .local v1, "col2":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "col2":I
    .local v2, "col2":I
    invoke-interface {v8, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v9

    float-to-double v10, v9

    .line 237
    if-eqz v3, :cond_0

    .line 238
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v9

    int-to-double v14, v9

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    move v1, v2

    .line 243
    .end local v2    # "col2":I
    .restart local v1    # "col2":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    move-result v9

    if-ge v1, v9, :cond_1

    .line 244
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "col2":I
    .restart local v2    # "col2":I
    invoke-interface {v8, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v9

    float-to-double v12, v9

    add-double/2addr v10, v12

    move v1, v2

    .end local v2    # "col2":I
    .restart local v1    # "col2":I
    goto :goto_0

    .line 240
    .end local v1    # "col2":I
    .restart local v2    # "col2":I
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v9

    div-int/lit16 v9, v9, 0x2535

    int-to-double v12, v9

    sub-double/2addr v10, v12

    move v1, v2

    .end local v2    # "col2":I
    .restart local v1    # "col2":I
    goto :goto_0

    .line 247
    :cond_1
    if-eqz v3, :cond_2

    .line 248
    invoke-interface {v8, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v9

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v9, v12

    float-to-double v12, v9

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 253
    :goto_1
    const-wide/16 v4, 0x0

    .line 254
    .local v4, "h":D
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v6

    .line 256
    .local v6, "row2":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "row2":I
    .local v7, "row2":I
    invoke-static {v8, v6}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v4

    .line 257
    if-eqz v3, :cond_3

    .line 258
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v9

    int-to-double v14, v9

    const-wide/high16 v16, 0x4070000000000000L    # 256.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v4, v12

    move v6, v7

    .line 263
    .end local v7    # "row2":I
    .restart local v6    # "row2":I
    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 264
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "row2":I
    .restart local v7    # "row2":I
    invoke-static {v8, v6}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v12

    add-double/2addr v4, v12

    move v6, v7

    .end local v7    # "row2":I
    .restart local v6    # "row2":I
    goto :goto_2

    .line 250
    .end local v4    # "h":D
    .end local v6    # "row2":I
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v9

    div-int/lit16 v9, v9, 0x2535

    int-to-double v12, v9

    add-double/2addr v10, v12

    goto :goto_1

    .line 260
    .restart local v4    # "h":D
    .restart local v7    # "row2":I
    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v9

    div-int/lit16 v9, v9, 0x2535

    int-to-double v12, v9

    sub-double/2addr v4, v12

    move v6, v7

    .end local v7    # "row2":I
    .restart local v6    # "row2":I
    goto :goto_2

    .line 267
    :cond_4
    if-eqz v3, :cond_5

    .line 268
    invoke-static {v8, v6}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v12

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v9

    int-to-double v14, v9

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    div-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 273
    :goto_3
    new-instance v9, Ljava/awt/Dimension;

    double-to-int v12, v10

    mul-int/lit16 v12, v12, 0x2535

    double-to-int v13, v4

    mul-int/lit16 v13, v13, 0x2535

    invoke-direct {v9, v12, v13}, Ljava/awt/Dimension;-><init>(II)V

    return-object v9

    .line 270
    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v9

    div-int/lit16 v9, v9, 0x2535

    int-to-double v12, v9

    add-double/2addr v4, v12

    goto :goto_3
.end method

.method public static getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x5

    .line 63
    new-instance v6, Ljava/awt/Dimension;

    invoke-direct {v6}, Ljava/awt/Dimension;-><init>()V

    .line 65
    .local v6, "size":Ljava/awt/Dimension;
    packed-switch p1, :pswitch_data_0

    .line 104
    sget-object v7, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    const-string v8, "Only JPEG, PNG and DIB pictures can be automatically sized"

    invoke-virtual {v7, v9, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 106
    :goto_0
    return-object v6

    .line 73
    :pswitch_0
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 75
    .local v3, "iis":Ljavax/imageio/stream/ImageInputStream;
    :try_start_1
    invoke-static {v3}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 76
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/imageio/ImageReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .local v5, "r":Ljavax/imageio/ImageReader;
    :try_start_2
    invoke-virtual {v5, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    .line 79
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object v4

    .line 81
    .local v4, "img":Ljava/awt/image/BufferedImage;
    invoke-static {v5}, Lorg/apache/poi/ss/util/ImageUtils;->getResolution(Ljavax/imageio/ImageReader;)[I

    move-result-object v0

    .line 85
    .local v0, "dpi":[I
    const/4 v7, 0x0

    aget v7, v0, v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    const/16 v8, 0x60

    aput v8, v0, v7

    .line 86
    :cond_0
    const/4 v7, 0x1

    aget v7, v0, v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    const/16 v8, 0x60

    aput v8, v0, v7

    .line 88
    :cond_1
    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x60

    const/4 v8, 0x0

    aget v8, v0, v8

    div-int/2addr v7, v8

    iput v7, v6, Ljava/awt/Dimension;->width:I

    .line 89
    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x60

    const/4 v8, 0x1

    aget v8, v0, v8

    div-int/2addr v7, v8

    iput v7, v6, Ljava/awt/Dimension;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {v5}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "dpi":[I
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v3    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .end local v4    # "img":Ljava/awt/image/BufferedImage;
    .end local v5    # "r":Ljavax/imageio/ImageReader;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v7, v9, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .restart local v3    # "iis":Ljavax/imageio/stream/ImageInputStream;
    .restart local v5    # "r":Ljavax/imageio/ImageReader;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljavax/imageio/ImageReader;->dispose()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/imageio/ImageReader;>;"
    .end local v5    # "r":Ljavax/imageio/ImageReader;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getResolution(Ljavax/imageio/ImageReader;)[I
    .locals 10
    .param p0, "r"    # Ljavax/imageio/ImageReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    const/16 v0, 0x60

    .local v0, "hdpi":I
    const/16 v5, 0x60

    .line 119
    .local v5, "vdpi":I
    const-wide v2, 0x4039666666666666L    # 25.4

    .line 122
    .local v2, "mm2inch":D
    invoke-virtual {p0, v8}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v6

    const-string v7, "javax_imageio_1.0"

    invoke-virtual {v6, v7}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 123
    .local v4, "node":Lorg/w3c/dom/Element;
    const-string v6, "HorizontalPixelSize"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 124
    .local v1, "lst":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "value"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    div-double v6, v2, v6

    double-to-int v0, v6

    .line 126
    :cond_0
    const-string v6, "VerticalPixelSize"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "value"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    div-double v6, v2, v6

    double-to-int v5, v6

    .line 129
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v0, v6, v8

    aput v5, v6, v9

    return-object v6
.end method

.method private static getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D
    .locals 6
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowNum"    # I

    .prologue
    .line 278
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    .line 279
    .local v2, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v2, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDefaultRowHeightInPoints()F

    move-result v3

    float-to-double v0, v3

    .line 280
    .local v0, "points":D
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    div-int/lit16 v3, v3, 0x2535

    int-to-double v4, v3

    return-wide v4

    .line 279
    .end local v0    # "points":D
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result v3

    float-to-double v0, v3

    goto :goto_0
.end method

.method public static setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;
    .locals 37
    .param p0, "picture"    # Lorg/apache/poi/ss/usermodel/Picture;
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .prologue
    .line 140
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v2

    .line 141
    .local v2, "anchor":Lorg/apache/poi/ss/usermodel/ClientAnchor;
    instance-of v0, v2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move/from16 v19, v0

    .line 142
    .local v19, "isHSSF":Z
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v10

    .line 143
    .local v10, "data":Lorg/apache/poi/ss/usermodel/PictureData;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v26

    .line 146
    .local v26, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v18

    .line 148
    .local v18, "imgSize":Ljava/awt/Dimension;
    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/util/ImageUtils;->getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;

    move-result-object v3

    .line 149
    .local v3, "anchorSize":Ljava/awt/Dimension;
    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v27, p1, v30

    if-nez v27, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v24

    .line 151
    .local v24, "scaledWidth":D
    :goto_0
    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v27, p3, v30

    if-nez v27, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v22

    .line 154
    .local v22, "scaledHeight":D
    :goto_1
    const-wide/16 v28, 0x0

    .line 155
    .local v28, "w":D
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v6

    .line 156
    .local v6, "col2":I
    const/4 v14, 0x0

    .line 159
    .local v14, "dx2":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "col2":I
    .local v7, "col2":I
    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 160
    if-eqz v19, :cond_2

    .line 161
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4090000000000000L    # 1024.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    .line 166
    :goto_2
    cmpg-double v27, v28, v24

    if-gez v27, :cond_3

    .line 167
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "col2":I
    .restart local v6    # "col2":I
    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move v7, v6

    .end local v6    # "col2":I
    .restart local v7    # "col2":I
    goto :goto_2

    .line 149
    .end local v7    # "col2":I
    .end local v14    # "dx2":I
    .end local v22    # "scaledHeight":D
    .end local v24    # "scaledWidth":D
    .end local v28    # "w":D
    :cond_0
    invoke-virtual {v3}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v30

    const-wide v32, 0x40c29a8000000000L    # 9525.0

    div-double v30, v30, v32

    mul-double v24, v30, p1

    goto :goto_0

    .line 151
    .restart local v24    # "scaledWidth":D
    :cond_1
    invoke-virtual {v3}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v30

    const-wide v32, 0x40c29a8000000000L    # 9525.0

    div-double v30, v30, v32

    mul-double v22, v30, p3

    goto :goto_1

    .line 163
    .restart local v7    # "col2":I
    .restart local v14    # "dx2":I
    .restart local v22    # "scaledHeight":D
    .restart local v28    # "w":D
    :cond_2
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v27

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x2535

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    goto :goto_2

    .line 170
    :cond_3
    cmpl-double v27, v28, v24

    if-lez v27, :cond_b

    .line 172
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "col2":I
    .restart local v6    # "col2":I
    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v27

    move/from16 v0, v27

    float-to-double v8, v0

    .line 173
    .local v8, "cw":D
    sub-double v12, v28, v24

    .line 174
    .local v12, "delta":D
    if-eqz v19, :cond_5

    .line 175
    sub-double v30, v8, v12

    div-double v30, v30, v8

    const-wide/high16 v32, 0x4090000000000000L    # 1024.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v14, v0

    .line 179
    :goto_3
    if-gez v14, :cond_4

    const/4 v14, 0x0

    .line 181
    .end local v8    # "cw":D
    .end local v12    # "delta":D
    :cond_4
    :goto_4
    invoke-interface {v2, v6}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol2(I)V

    .line 182
    invoke-interface {v2, v14}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDx2(I)V

    .line 184
    const-wide/16 v16, 0x0

    .line 185
    .local v16, "h":D
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v20

    .line 186
    .local v20, "row2":I
    const/4 v15, 0x0

    .line 188
    .local v15, "dy2":I
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "row2":I
    .local v21, "row2":I
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v16

    .line 189
    if-eqz v19, :cond_6

    .line 190
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4070000000000000L    # 256.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    mul-double v16, v16, v30

    .line 195
    :goto_5
    cmpg-double v27, v16, v22

    if-gez v27, :cond_7

    .line 196
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "row2":I
    .restart local v20    # "row2":I
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v30

    add-double v16, v16, v30

    move/from16 v21, v20

    .end local v20    # "row2":I
    .restart local v21    # "row2":I
    goto :goto_5

    .line 177
    .end local v15    # "dy2":I
    .end local v16    # "h":D
    .end local v21    # "row2":I
    .restart local v8    # "cw":D
    .restart local v12    # "delta":D
    :cond_5
    sub-double v30, v8, v12

    const-wide v32, 0x40c29a8000000000L    # 9525.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v14, v0

    goto :goto_3

    .line 192
    .end local v8    # "cw":D
    .end local v12    # "delta":D
    .restart local v15    # "dy2":I
    .restart local v16    # "h":D
    .restart local v21    # "row2":I
    :cond_6
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v27

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x2535

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v16, v16, v30

    goto :goto_5

    .line 199
    :cond_7
    cmpl-double v27, v16, v22

    if-lez v27, :cond_a

    .line 200
    add-int/lit8 v20, v21, -0x1

    .end local v21    # "row2":I
    .restart local v20    # "row2":I
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v4

    .line 201
    .local v4, "ch":D
    sub-double v12, v16, v22

    .line 202
    .restart local v12    # "delta":D
    if-eqz v19, :cond_9

    .line 203
    sub-double v30, v4, v12

    div-double v30, v30, v4

    const-wide/high16 v32, 0x4070000000000000L    # 256.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v15, v0

    .line 207
    :goto_6
    if-gez v15, :cond_8

    const/4 v15, 0x0

    .line 210
    .end local v4    # "ch":D
    .end local v12    # "delta":D
    :cond_8
    :goto_7
    move/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow2(I)V

    .line 211
    invoke-interface {v2, v15}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDy2(I)V

    .line 213
    new-instance v11, Ljava/awt/Dimension;

    const-wide v30, 0x40c29a8000000000L    # 9525.0

    mul-double v30, v30, v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v27, v0

    const-wide v30, 0x40c29a8000000000L    # 9525.0

    mul-double v30, v30, v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v11, v0, v1}, Ljava/awt/Dimension;-><init>(II)V

    .line 218
    .local v11, "dim":Ljava/awt/Dimension;
    return-object v11

    .line 205
    .end local v11    # "dim":Ljava/awt/Dimension;
    .restart local v4    # "ch":D
    .restart local v12    # "delta":D
    :cond_9
    sub-double v30, v4, v12

    const-wide v32, 0x40c29a8000000000L    # 9525.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v15, v0

    goto :goto_6

    .end local v4    # "ch":D
    .end local v12    # "delta":D
    .end local v20    # "row2":I
    .restart local v21    # "row2":I
    :cond_a
    move/from16 v20, v21

    .end local v21    # "row2":I
    .restart local v20    # "row2":I
    goto :goto_7

    .end local v6    # "col2":I
    .end local v15    # "dy2":I
    .end local v16    # "h":D
    .end local v20    # "row2":I
    .restart local v7    # "col2":I
    :cond_b
    move v6, v7

    .end local v7    # "col2":I
    .restart local v6    # "col2":I
    goto/16 :goto_4
.end method
