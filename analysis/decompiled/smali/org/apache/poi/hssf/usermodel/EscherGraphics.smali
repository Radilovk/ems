.class public Lorg/apache/poi/hssf/usermodel/EscherGraphics;
.super Ljava/awt/Graphics;
.source "EscherGraphics.java"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private background:Ljava/awt/Color;

.field private escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

.field private font:Ljava/awt/Font;

.field private foreground:Ljava/awt/Color;

.field private verticalPixelsPerPoint:F

.field private verticalPointsPerPixel:F

.field private workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;F)V
    .locals 4
    .param p1, "escherGroup"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p3, "forecolor"    # Ljava/awt/Color;
    .param p4, "verticalPointsPerPixel"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    invoke-direct {p0}, Ljava/awt/Graphics;-><init>()V

    .line 65
    iput v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 68
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 82
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    .line 83
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 84
    iput p4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 85
    div-float v0, v1, p4

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    .line 86
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 87
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 89
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;Ljava/awt/Font;F)V
    .locals 2
    .param p1, "escherGroup"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .param p2, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p3, "foreground"    # Ljava/awt/Color;
    .param p4, "font"    # Ljava/awt/Font;
    .param p5, "verticalPointsPerPixel"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    invoke-direct {p0}, Ljava/awt/Graphics;-><init>()V

    .line 65
    iput v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 68
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 102
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    .line 103
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 104
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 106
    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 107
    iput p5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    .line 108
    div-float v0, v1, p5

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    .line 109
    return-void
.end method

.method private addToAll([II)[I
    .locals 3
    .param p1, "values"    # [I
    .param p2, "amount"    # I

    .prologue
    .line 243
    array-length v2, p1

    new-array v1, v2, [I

    .line 244
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 245
    aget v2, p1, v0

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-object v1
.end method

.method private findBiggest([I)I
    .locals 3
    .param p1, "values"    # [I

    .prologue
    .line 388
    const/high16 v1, -0x80000000

    .line 389
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 391
    aget v2, p1, v0

    if-le v2, v1, :cond_0

    .line 392
    aget v1, p1, v0

    .line 389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    return v1
.end method

.method private findSmallest([I)I
    .locals 3
    .param p1, "values"    # [I

    .prologue
    .line 399
    const v1, 0x7fffffff

    .line 400
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 402
    aget v2, p1, v0

    if-ge v2, v1, :cond_0

    .line 403
    aget v1, p1, v0

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_1
    return v1
.end method

.method private matchFont(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 13
    .param p1, "font"    # Ljava/awt/Font;

    .prologue
    const/16 v12, 0x2bc

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 298
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v4}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->findColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v10

    .line 300
    .local v10, "hssfColor":Lorg/apache/poi/hssf/util/HSSFColor;
    if-nez v10, :cond_0

    .line 301
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v4}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->findSimilarColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v10

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v9, v0

    .line 303
    .local v9, "bold":Z
    :goto_0
    invoke-virtual {p1}, Ljava/awt/Font;->getStyle()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    move v5, v0

    .line 304
    .local v5, "italic":Z
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v9, :cond_4

    move v1, v12

    :goto_2
    invoke-virtual {v10}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    int-to-short v3, v3

    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v4

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(SSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v11

    .line 312
    .local v11, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    if-nez v11, :cond_1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v11

    .line 315
    if-eqz v9, :cond_5

    :goto_3
    invoke-virtual {v11, v12}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setBoldweight(S)V

    .line 316
    invoke-virtual {v10}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v0

    invoke-virtual {v11, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setColor(S)V

    .line 317
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-short v0, v0

    invoke-virtual {v11, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setFontHeight(S)V

    .line 318
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setFontName(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v11, v5}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setItalic(Z)V

    .line 320
    invoke-virtual {v11, v6}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setStrikeout(Z)V

    .line 321
    invoke-virtual {v11, v6}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setTypeOffset(S)V

    .line 322
    invoke-virtual {v11, v6}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setUnderline(B)V

    .line 325
    :cond_1
    return-object v11

    .end local v5    # "italic":Z
    .end local v9    # "bold":Z
    .end local v11    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_2
    move v9, v6

    .line 302
    goto :goto_0

    .restart local v9    # "bold":Z
    :cond_3
    move v5, v6

    .line 303
    goto :goto_1

    .restart local v5    # "italic":Z
    :cond_4
    move v1, v6

    .line 304
    goto :goto_2

    .restart local v11    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_5
    move v12, v6

    .line 315
    goto :goto_3
.end method


# virtual methods
.method public clearRect(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 127
    .local v0, "color":Ljava/awt/Color;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setColor(Ljava/awt/Color;)V

    .line 128
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->fillRect(IIII)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setColor(Ljava/awt/Color;)V

    .line 130
    return-void
.end method

.method public clipRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x5

    .line 134
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "clipRect not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 136
    :cond_0
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    const/4 v2, 0x5

    .line 140
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "copyArea not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 6

    .prologue
    .line 146
    new-instance v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPointsPerPixel:F

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/awt/Color;Ljava/awt/Font;F)V

    .line 148
    .local v0, "g":Lorg/apache/poi/hssf/usermodel/EscherGraphics;
    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    const/4 v2, 0x5

    .line 158
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawArc not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 3
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "bgcolor"    # Ljava/awt/Color;
    .param p11, "observer"    # Ljava/awt/image/ImageObserver;

    .prologue
    const/4 v2, 0x5

    .line 168
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawImage not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 3
    .param p1, "img"    # Ljava/awt/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I
    .param p10, "observer"    # Ljava/awt/image/ImageObserver;

    .prologue
    const/4 v2, 0x5

    .line 179
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawImage not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 181
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 13
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "color"    # Ljava/awt/Color;
    .param p7, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .prologue
    .line 186
    add-int v5, p2, p4

    add-int v6, p3, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 12
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I
    .param p6, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .prologue
    .line 191
    add-int v5, p2, p4

    add-int v6, p3, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v11, p6

    invoke-virtual/range {v1 .. v11}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "color"    # Ljava/awt/Color;
    .param p5, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .prologue
    .line 196
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

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 7
    .param p1, "image"    # Ljava/awt/Image;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "imageobserver"    # Ljava/awt/image/ImageObserver;

    .prologue
    .line 201
    invoke-virtual {p1, p4}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-virtual {p1, p4}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 206
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->drawLine(IIIII)V

    .line 207
    return-void
.end method

.method public drawLine(IIIII)V
    .locals 4
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "width"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 212
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 213
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineWidth(I)V

    .line 214
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 215
    return-void
.end method

.method public drawOval(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 220
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineWidth(I)V

    .line 222
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setNoFill(Z)V

    .line 224
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 8
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v2

    .line 230
    .local v2, "right":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v0

    .line 231
    .local v0, "bottom":I
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v1

    .line 232
    .local v1, "left":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v4

    .line 233
    .local v4, "top":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v6, v1, v4, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    move-result-object v3

    .line 234
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    sub-int v5, v2, v1

    sub-int v6, v0, v4

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPolygonDrawArea(II)V

    .line 235
    neg-int v5, v1

    invoke-direct {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v5

    neg-int v6, v4

    invoke-direct {p0, p2, v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPoints([I[I)V

    .line 236
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineStyleColor(III)V

    .line 237
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineWidth(I)V

    .line 238
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setNoFill(Z)V

    .line 239
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 3
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .prologue
    const/4 v2, 0x5

    .line 252
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawPolyline not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 254
    :cond_0
    return-void
.end method

.method public drawRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x5

    .line 258
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawRect not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 260
    :cond_0
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    const/4 v2, 0x5

    .line 265
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawRoundRect not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 271
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 275
    .local v1, "excelFont":Ljava/awt/Font;
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v7}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SansSerif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 277
    new-instance v1, Ljava/awt/Font;

    .end local v1    # "excelFont":Ljava/awt/Font;
    const-string v7, "Arial"

    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v8}, Ljava/awt/Font;->getStyle()I

    move-result v8

    iget-object v9, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v9}, Ljava/awt/Font;->getSize()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v1, v7, v8, v9}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 283
    .restart local v1    # "excelFont":Ljava/awt/Font;
    :goto_1
    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->getFontDetails(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-result-object v0

    .line 284
    .local v0, "d":Lorg/apache/poi/hssf/usermodel/FontDetails;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getStringWidth(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v7, 0xc

    .line 285
    .local v6, "width":I
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v7}, Ljava/awt/Font;->getSize()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v7, v8

    const/high16 v8, 0x40c00000    # 6.0f

    add-float/2addr v7, v8

    float-to-int v7, v7

    mul-int/lit8 v2, v7, 0x2

    .line 286
    .local v2, "height":I
    int-to-float v7, p3

    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v8}, Ljava/awt/Font;->getSize()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int p3, v7

    .line 287
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v8, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v9, p2, v6

    add-int v10, p3, v2

    invoke-direct {v8, p2, p3, v9, v10}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    move-result-object v5

    .line 288
    .local v5, "textbox":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setNoFill(Z)V

    .line 289
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setLineStyle(I)V

    .line 290
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "s":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->matchFont(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v3

    .line 292
    .local v3, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 293
    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    .line 281
    .end local v0    # "d":Lorg/apache/poi/hssf/usermodel/FontDetails;
    .end local v2    # "height":I
    .end local v3    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .end local v4    # "s":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v5    # "textbox":Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .end local v6    # "width":I
    :cond_2
    new-instance v1, Ljava/awt/Font;

    .end local v1    # "excelFont":Ljava/awt/Font;
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v7}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v8}, Ljava/awt/Font;->getStyle()I

    move-result v8

    iget-object v9, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    invoke-virtual {v9}, Ljava/awt/Font;->getSize()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->verticalPixelsPerPoint:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v1, v7, v8, v9}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .restart local v1    # "excelFont":Ljava/awt/Font;
    goto :goto_1
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 3
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x5

    .line 332
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "drawString not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 334
    :cond_0
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    const/4 v2, 0x5

    .line 339
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "fillArc not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 341
    :cond_0
    return-void
.end method

.method public fillOval(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 345
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 346
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 347
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyle(I)V

    .line 348
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setFillColor(III)V

    .line 349
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setNoFill(Z)V

    .line 351
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 8
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v2

    .line 376
    .local v2, "right":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findBiggest([I)I

    move-result v0

    .line 377
    .local v0, "bottom":I
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v1

    .line 378
    .local v1, "left":I
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->findSmallest([I)I

    move-result v4

    .line 379
    .local v4, "top":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-direct {v6, v1, v4, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    move-result-object v3

    .line 380
    .local v3, "shape":Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    sub-int v5, v2, v1

    sub-int v6, v0, v4

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPolygonDrawArea(II)V

    .line 381
    neg-int v5, v1

    invoke-direct {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v5

    neg-int v6, v4

    invoke-direct {p0, p2, v6}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->addToAll([II)[I

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setPoints([I[I)V

    .line 382
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setLineStyleColor(III)V

    .line 383
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v5}, Ljava/awt/Color;->getRed()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v6}, Ljava/awt/Color;->getGreen()I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v7}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;->setFillColor(III)V

    .line 384
    return-void
.end method

.method public fillRect(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 410
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->createShape(Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    move-result-object v0

    .line 411
    .local v0, "shape":Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 412
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyle(I)V

    .line 413
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setFillColor(III)V

    .line 414
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setLineStyleColor(III)V

    .line 415
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    const/4 v2, 0x5

    .line 420
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "fillRoundRect not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 422
    :cond_0
    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipRect()Ljava/awt/Rectangle;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    return-object v0
.end method

.method getEscherGraphics()Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->escherGroup:Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 1
    .param p1, "f"    # Ljava/awt/Font;

    .prologue
    .line 452
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0
    .param p1, "background"    # Ljava/awt/Color;

    .prologue
    .line 500
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->background:Ljava/awt/Color;

    .line 501
    return-void
.end method

.method public setClip(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 457
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->setClip(Ljava/awt/Shape;)V

    .line 458
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 0
    .param p1, "shape"    # Ljava/awt/Shape;

    .prologue
    .line 463
    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0
    .param p1, "color"    # Ljava/awt/Color;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->foreground:Ljava/awt/Color;

    .line 468
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 0
    .param p1, "f"    # Ljava/awt/Font;

    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->font:Ljava/awt/Font;

    .line 473
    return-void
.end method

.method public setPaintMode()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 477
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "setPaintMode not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 479
    :cond_0
    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 3
    .param p1, "color"    # Ljava/awt/Color;

    .prologue
    const/4 v2, 0x5

    .line 483
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string v1, "setXORMode not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 485
    :cond_0
    return-void
.end method

.method public translate(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x5

    .line 489
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lorg/apache/poi/hssf/usermodel/EscherGraphics;->logger:Lorg/apache/poi/util/POILogger;

    const-string/jumbo v1, "translate not supported"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 491
    :cond_0
    return-void
.end method
