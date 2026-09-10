.class public Lorg/apache/poi/ss/util/SheetUtil;
.super Ljava/lang/Object;
.source "SheetUtil.java"


# static fields
.field private static final defaultChar:C = '0'

.field private static final dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private static final fontHeightMultiple:D = 2.0

.field private static final fontRenderContext:Ljava/awt/font/FontRenderContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    new-instance v0, Lorg/apache/poi/ss/util/SheetUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/SheetUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 87
    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z
    .locals 1
    .param p0, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 288
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 291
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V
    .locals 2
    .param p0, "font"    # Lorg/apache/poi/ss/usermodel/Font;
    .param p1, "str"    # Ljava/text/AttributedString;
    .param p2, "startIdx"    # I
    .param p3, "endIdx"    # I

    .line 280
    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 281
    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getFontHeightInPoints()S

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 282
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getBoldweight()S

    move-result v0

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 283
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 284
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Font;->getUnderline()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 285
    :cond_2
    return-void
.end method

.method public static getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D
    .locals 28
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p1, "defaultCharWidth"    # I
    .param p2, "formatter"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p3, "useMergedCells"    # Z

    .line 100
    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    .line 101
    .local v2, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v3

    .line 102
    .local v3, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 103
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v5

    .line 105
    .local v5, "column":I
    const/4 v0, 0x1

    .line 106
    .local v0, "colspan":I
    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    move-object/from16 v6, p0

    .end local p0    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .local v0, "i":I
    .local v6, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .local v7, "colspan":I
    :goto_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v8

    const/4 v9, 0x1

    if-ge v0, v8, :cond_2

    .line 107
    invoke-interface {v2, v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    .line 108
    .local v8, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v10

    invoke-static {v8, v10, v5}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 109
    if-nez p3, :cond_0

    .line 111
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    return-wide v9

    .line 113
    :cond_0
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v10

    invoke-interface {v4, v10}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v6

    .line 114
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v9

    sub-int/2addr v10, v9

    move v7, v10

    .line 106
    .end local v8    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    :cond_2
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v8

    .line 119
    .local v8, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v0

    .line 122
    .local v0, "cellType":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_3

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()I

    move-result v0

    :cond_3
    move v10, v0

    .line 124
    .end local v0    # "cellType":I
    .local v10, "cellType":I
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v0

    invoke-interface {v3, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v11

    .line 129
    .local v11, "font":Lorg/apache/poi/ss/usermodel/Font;
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 130
    .local v12, "width":D
    const-wide v16, 0x4076800000000000L    # 360.0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    if-ne v10, v9, :cond_6

    .line 131
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    .line 132
    .local v0, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "\\n"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "lines":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v9

    if-ge v14, v15, :cond_5

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .local v20, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    aget-object v2, v9, v14

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "txt":Ljava/lang/String;
    new-instance v15, Ljava/text/AttributedString;

    invoke-direct {v15, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 137
    .local v15, "str":Ljava/text/AttributedString;
    move-object/from16 v21, v3

    .end local v3    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .local v21, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "txt":Ljava/lang/String;
    .local v22, "txt":Ljava/lang/String;
    invoke-static {v11, v15, v2, v3}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 139
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->numFormattingRuns()I

    .line 143
    new-instance v2, Ljava/awt/font/TextLayout;

    invoke-virtual {v15}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    move-object/from16 v23, v0

    .end local v0    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .local v23, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    sget-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v2, v3, v0}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    move-object v0, v2

    .line 144
    .local v0, "layout":Ljava/awt/font/TextLayout;
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 152
    .local v2, "trans":Ljava/awt/geom/AffineTransform;
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v3

    move-object/from16 v24, v4

    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .local v24, "row":Lorg/apache/poi/ss/usermodel/Row;
    int-to-double v3, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .end local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v9    # "lines":[Ljava/lang/String;
    .local v25, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .local v26, "lines":[Ljava/lang/String;
    mul-double v3, v3, v8

    mul-double v3, v3, v18

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 153
    move/from16 v27, v5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .end local v5    # "column":I
    .local v27, "column":I
    invoke-static {v3, v4, v8, v9}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 156
    invoke-virtual {v0, v2}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v3

    invoke-interface {v3}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v3

    int-to-double v8, v7

    div-double/2addr v3, v8

    int-to-double v8, v1

    div-double/2addr v3, v8

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v5

    int-to-double v8, v5

    add-double/2addr v3, v8

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 157
    .end local v12    # "width":D
    .local v2, "width":D
    move-wide v12, v2

    goto :goto_2

    .line 158
    .end local v2    # "width":D
    .end local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v26    # "lines":[Ljava/lang/String;
    .end local v27    # "column":I
    .restart local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v5    # "column":I
    .restart local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v9    # "lines":[Ljava/lang/String;
    .restart local v12    # "width":D
    :cond_4
    move-object/from16 v24, v4

    move/from16 v27, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v5    # "column":I
    .end local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v9    # "lines":[Ljava/lang/String;
    .restart local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v26    # "lines":[Ljava/lang/String;
    .restart local v27    # "column":I
    invoke-virtual {v0}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    int-to-double v4, v7

    div-double/2addr v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v12, v2

    .line 133
    .end local v22    # "txt":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v0, v23

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v5, v27

    goto/16 :goto_1

    .end local v15    # "str":Ljava/text/AttributedString;
    .end local v20    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v21    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v23    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .end local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v26    # "lines":[Ljava/lang/String;
    .end local v27    # "column":I
    .local v0, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .local v2, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v3    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .restart local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v5    # "column":I
    .restart local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v9    # "lines":[Ljava/lang/String;
    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v27, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 161
    .end local v0    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v3    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v5    # "column":I
    .end local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v9    # "lines":[Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v20    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v21    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .restart local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v27    # "column":I
    goto/16 :goto_6

    .line 162
    .end local v20    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v21    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .end local v27    # "column":I
    .restart local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v3    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .restart local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v5    # "column":I
    .restart local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v27, v5

    move-object/from16 v25, v8

    .end local v2    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .end local v3    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .end local v4    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v5    # "column":I
    .end local v8    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v20    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    .restart local v21    # "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    .restart local v24    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v25    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    .restart local v27    # "column":I
    const/4 v2, 0x0

    .line 163
    .local v2, "sval":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 166
    :try_start_0
    sget-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p2

    :try_start_1
    invoke-virtual {v3, v6, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_4

    .line 167
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p2

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 170
    :cond_7
    move-object/from16 v3, p2

    const/4 v0, 0x4

    if-ne v10, v0, :cond_8

    .line 171
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 173
    :cond_8
    :goto_5
    if-eqz v2, :cond_a

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "txt":Ljava/lang/String;
    new-instance v4, Ljava/text/AttributedString;

    invoke-direct {v4, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, "str":Ljava/text/AttributedString;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    invoke-static {v11, v4, v8, v5}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 178
    new-instance v5, Ljava/awt/font/TextLayout;

    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v5, v8, v9}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 179
    .local v5, "layout":Ljava/awt/font/TextLayout;
    invoke-interface/range {v25 .. v25}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v8

    if-eqz v8, :cond_9

    .line 186
    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 187
    .local v8, "trans":Ljava/awt/geom/AffineTransform;
    invoke-interface/range {v25 .. v25}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v9

    int-to-double v14, v9

    move-object/from16 p0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .end local v2    # "sval":Ljava/lang/String;
    .local p0, "sval":Ljava/lang/String;
    mul-double v14, v14, v2

    mul-double v14, v14, v18

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 188
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v2, v3}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 191
    invoke-virtual {v5, v8}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v2

    invoke-interface {v2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v2

    int-to-double v14, v7

    div-double/2addr v2, v14

    int-to-double v14, v1

    div-double/2addr v2, v14

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v9

    int-to-double v14, v9

    add-double/2addr v2, v14

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 192
    .end local v8    # "trans":Ljava/awt/geom/AffineTransform;
    goto :goto_6

    .line 193
    .end local p0    # "sval":Ljava/lang/String;
    .restart local v2    # "sval":Ljava/lang/String;
    :cond_9
    move-object/from16 p0, v2

    .end local v2    # "sval":Ljava/lang/String;
    .restart local p0    # "sval":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    int-to-double v8, v7

    div-double/2addr v2, v8

    int-to-double v8, v1

    div-double/2addr v2, v8

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v8

    int-to-double v8, v8

    add-double/2addr v2, v8

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto :goto_6

    .line 173
    .end local v0    # "txt":Ljava/lang/String;
    .end local v4    # "str":Ljava/text/AttributedString;
    .end local v5    # "layout":Ljava/awt/font/TextLayout;
    .end local p0    # "sval":Ljava/lang/String;
    .restart local v2    # "sval":Ljava/lang/String;
    :cond_a
    move-object/from16 p0, v2

    .line 197
    .end local v2    # "sval":Ljava/lang/String;
    :goto_6
    return-wide v12
.end method

.method public static getCellWithMerges(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 4
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .line 308
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 309
    .local v0, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    .line 311
    .local v1, "c":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v1, :cond_0

    .line 313
    return-object v1

    .line 317
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    const/4 v1, 0x0

    .local v1, "mr":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 318
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 319
    .local v2, "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v2, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    return-object v3

    .line 317
    .end local v2    # "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "mr":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D
    .locals 13
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .line 212
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 213
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    new-instance v1, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 214
    .local v1, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v3

    .line 216
    .local v3, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    new-instance v4, Ljava/text/AttributedString;

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 217
    .local v4, "str":Ljava/text/AttributedString;
    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 218
    new-instance v2, Ljava/awt/font/TextLayout;

    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v2, v5, v6}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 219
    .local v2, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v2}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v5

    float-to-int v5, v5

    .line 221
    .local v5, "defaultCharWidth":I
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 222
    .local v6, "width":D
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/usermodel/Row;

    .line 223
    .local v9, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v9, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v10

    .line 225
    .local v10, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v10, :cond_0

    .line 226
    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v10, v5, v1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v11

    .line 230
    .local v11, "cellWidth":D
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 231
    .end local v9    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v10    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v11    # "cellWidth":D
    goto :goto_0

    .line 232
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v6
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D
    .locals 17
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z
    .param p3, "firstRow"    # I
    .param p4, "lastRow"    # I

    .line 249
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    .line 250
    .local v0, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    new-instance v1, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 251
    .local v1, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v3

    .line 253
    .local v3, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    new-instance v4, Ljava/text/AttributedString;

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, "str":Ljava/text/AttributedString;
    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 255
    new-instance v2, Ljava/awt/font/TextLayout;

    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    invoke-direct {v2, v5, v6}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 256
    .local v2, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v2}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v5

    float-to-int v5, v5

    .line 258
    .local v5, "defaultCharWidth":I
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 259
    .local v6, "width":D
    move/from16 v8, p3

    .local v8, "rowIdx":I
    :goto_0
    move/from16 v9, p4

    if-gt v8, v9, :cond_2

    .line 260
    move-object/from16 v10, p0

    invoke-interface {v10, v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v11

    .line 261
    .local v11, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v11, :cond_1

    .line 263
    move/from16 v12, p1

    invoke-interface {v11, v12}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v13

    .line 265
    .local v13, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v13, :cond_0

    .line 266
    move/from16 v14, p2

    move-object/from16 v16, v2

    move-object v15, v3

    goto :goto_1

    .line 269
    :cond_0
    move/from16 v14, p2

    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "layout":Ljava/awt/font/TextLayout;
    .end local v3    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .local v15, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .local v16, "layout":Ljava/awt/font/TextLayout;
    invoke-static {v13, v5, v1, v14}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v2

    .line 270
    .local v2, "cellWidth":D
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_1

    .line 261
    .end local v13    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v15    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .end local v16    # "layout":Ljava/awt/font/TextLayout;
    .local v2, "layout":Ljava/awt/font/TextLayout;
    .restart local v3    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    :cond_1
    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v16, v2

    move-object v15, v3

    .line 259
    .end local v2    # "layout":Ljava/awt/font/TextLayout;
    .end local v3    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .end local v11    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v15    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .restart local v16    # "layout":Ljava/awt/font/TextLayout;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object v3, v15

    move-object/from16 v2, v16

    goto :goto_0

    .line 273
    .end local v8    # "rowIdx":I
    .end local v15    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    .end local v16    # "layout":Ljava/awt/font/TextLayout;
    .restart local v2    # "layout":Ljava/awt/font/TextLayout;
    .restart local v3    # "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    :cond_2
    return-wide v6
.end method
