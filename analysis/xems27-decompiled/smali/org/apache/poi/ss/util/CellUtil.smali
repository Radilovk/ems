.class public final Lorg/apache/poi/ss/util/CellUtil;
.super Ljava/lang/Object;
.source "CellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    }
.end annotation


# static fields
.field public static final ALIGNMENT:Ljava/lang/String; = "alignment"

.field public static final BORDER_BOTTOM:Ljava/lang/String; = "borderBottom"

.field public static final BORDER_LEFT:Ljava/lang/String; = "borderLeft"

.field public static final BORDER_RIGHT:Ljava/lang/String; = "borderRight"

.field public static final BORDER_TOP:Ljava/lang/String; = "borderTop"

.field public static final BOTTOM_BORDER_COLOR:Ljava/lang/String; = "bottomBorderColor"

.field public static final DATA_FORMAT:Ljava/lang/String; = "dataFormat"

.field public static final FILL_BACKGROUND_COLOR:Ljava/lang/String; = "fillBackgroundColor"

.field public static final FILL_FOREGROUND_COLOR:Ljava/lang/String; = "fillForegroundColor"

.field public static final FILL_PATTERN:Ljava/lang/String; = "fillPattern"

.field public static final FONT:Ljava/lang/String; = "font"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INDENTION:Ljava/lang/String; = "indention"

.field public static final LEFT_BORDER_COLOR:Ljava/lang/String; = "leftBorderColor"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final RIGHT_BORDER_COLOR:Ljava/lang/String; = "rightBorderColor"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final TOP_BORDER_COLOR:Ljava/lang/String; = "topBorderColor"

.field public static final VERTICAL_ALIGNMENT:Ljava/lang/String; = "verticalAlignment"

.field public static final WRAP_TEXT:Ljava/lang/String; = "wrapText"

.field private static unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    const-string v1, "alpha"

    const-string v2, "\u03b1"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "beta"

    const-string v2, "\u03b2"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gamma"

    const-string v2, "\u03b3"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "delta"

    const-string v2, "\u03b4"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "epsilon"

    const-string v2, "\u03b5"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "zeta"

    const-string v2, "\u03b6"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "eta"

    const-string v2, "\u03b7"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "theta"

    const-string v2, "\u03b8"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "iota"

    const-string v2, "\u03b9"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "kappa"

    const-string v2, "\u03ba"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "lambda"

    const-string v2, "\u03bb"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "mu"

    const-string v2, "\u03bc"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "nu"

    const-string v2, "\u03bd"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "xi"

    const-string v2, "\u03be"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "omicron"

    const-string v2, "\u03bf"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    .line 374
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    return-object v0
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 123
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 125
    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 127
    if-eqz p3, :cond_0

    .line 128
    invoke-interface {v0, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 130
    :cond_0
    return-object v0
.end method

.method private static getBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 299
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 301
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p1, "columnIndex"    # I

    .line 104
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 106
    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v0, :cond_0

    .line 107
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method private static getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;
    .locals 3
    .param p0, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignment()S

    move-result v1

    const-string v2, "alignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 221
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottom()S

    move-result v1

    const-string v2, "borderBottom"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 222
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeft()S

    move-result v1

    const-string v2, "borderLeft"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 223
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRight()S

    move-result v1

    const-string v2, "borderRight"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 224
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTop()S

    move-result v1

    const-string v2, "borderTop"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 225
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBottomBorderColor()S

    move-result v1

    const-string v2, "bottomBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 226
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    const-string v2, "dataFormat"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 227
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillBackgroundColor()S

    move-result v1

    const-string v2, "fillBackgroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 228
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillForegroundColor()S

    move-result v1

    const-string v2, "fillForegroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 229
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillPattern()S

    move-result v1

    const-string v2, "fillPattern"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 230
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v1

    const-string v2, "font"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 231
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getHidden()Z

    move-result v1

    const-string v2, "hidden"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putBoolean(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 232
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v1

    const-string v2, "indention"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 233
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLeftBorderColor()S

    move-result v1

    const-string v2, "leftBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 234
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLocked()Z

    move-result v1

    const-string v2, "locked"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putBoolean(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 235
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRightBorderColor()S

    move-result v1

    const-string v2, "rightBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 236
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 237
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getTopBorderColor()S

    move-result v1

    const-string v2, "topBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 238
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignment()S

    move-result v1

    const-string v2, "verticalAlignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putShort(Ljava/util/Map;Ljava/lang/String;S)V

    .line 239
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getWrapText()Z

    move-result v1

    const-string v2, "wrapText"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->putBoolean(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 240
    return-object v0
.end method

.method public static getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p0, "rowIndex"    # I
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 88
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 89
    .local v0, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v0, :cond_0

    .line 90
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method private static getShort(Ljava/util/Map;Ljava/lang/String;)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    .line 283
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 285
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 287
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static putBoolean(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 325
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method private static putShort(Ljava/util/Map;Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .line 314
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public static setAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;S)V
    .locals 2
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "align"    # S

    .line 157
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "alignment"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .line 184
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 185
    .local v0, "originalStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    const/4 v1, 0x0

    .line 186
    .local v1, "newStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-static {v0}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v2

    .line 187
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumCellStyles()S

    move-result v3

    .line 193
    .local v3, "numberCellStyles":S
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    if-ge v4, v3, :cond_1

    .line 194
    invoke-interface {p1, v4}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(S)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v5

    .line 195
    .local v5, "wbStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-static {v5}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v6

    .line 197
    .local v6, "wbStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    move-object v1, v5

    .line 199
    goto :goto_1

    .line 193
    .end local v5    # "wbStyle":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v6    # "wbStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v5, v4, 0x1

    int-to-short v4, v5

    goto :goto_0

    .line 203
    .end local v4    # "i":S
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 204
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    .line 205
    invoke-static {v1, p1, v2}, Lorg/apache/poi/ss/util/CellUtil;->setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V

    .line 208
    :cond_2
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 209
    return-void
.end method

.method public static setFont(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 2
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 168
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Font;->getIndex()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "font"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private static setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V
    .locals 1
    .param p0, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "alignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setAlignment(S)V

    .line 253
    const-string v0, "borderBottom"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderBottom(S)V

    .line 254
    const-string v0, "borderLeft"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderLeft(S)V

    .line 255
    const-string v0, "borderRight"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderRight(S)V

    .line 256
    const-string v0, "borderTop"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderTop(S)V

    .line 257
    const-string v0, "bottomBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBottomBorderColor(S)V

    .line 258
    const-string v0, "dataFormat"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    .line 259
    const-string v0, "fillBackgroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillBackgroundColor(S)V

    .line 260
    const-string v0, "fillForegroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillForegroundColor(S)V

    .line 261
    const-string v0, "fillPattern"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillPattern(S)V

    .line 262
    const-string v0, "font"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 263
    const-string v0, "hidden"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setHidden(Z)V

    .line 264
    const-string v0, "indention"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setIndention(S)V

    .line 265
    const-string v0, "leftBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLeftBorderColor(S)V

    .line 266
    const-string v0, "locked"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLocked(Z)V

    .line 267
    const-string v0, "rightBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRightBorderColor(S)V

    .line 268
    const-string v0, "rotation"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRotation(S)V

    .line 269
    const-string v0, "topBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setTopBorderColor(S)V

    .line 270
    const-string v0, "verticalAlignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setVerticalAlignment(S)V

    .line 271
    const-string v0, "wrapText"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    .line 272
    return-void
.end method

.method public static translateUnicodeValues(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 8
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 337
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 339
    .local v1, "foundUnicode":Z
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "lowerCaseStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 342
    aget-object v4, v4, v3

    .line 343
    .local v4, "entry":Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    iget-object v5, v4, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->entityName:Ljava/lang/String;

    .line 344
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 345
    iget-object v6, v4, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->resolvedValue:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const/4 v1, 0x1

    .line 341
    .end local v4    # "entry":Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 350
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 353
    :cond_2
    return-object p0
.end method

.method private static um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .locals 1
    .param p0, "entityName"    # Ljava/lang/String;
    .param p1, "resolvedValue"    # Ljava/lang/String;

    .line 377
    new-instance v0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
