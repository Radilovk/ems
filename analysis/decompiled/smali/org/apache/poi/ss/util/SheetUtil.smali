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

    .prologue
    const/4 v2, 0x1

    .line 67
    new-instance v0, Lorg/apache/poi/ss/util/SheetUtil$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/SheetUtil$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 87
    new-instance v0, Ljava/awt/font/FontRenderContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z
    .locals 1
    .param p0, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .prologue
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

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V
    .locals 2
    .param p0, "font"    # Lorg/apache/poi/ss/usermodel/Font;
    .param p1, "str"    # Ljava/text/AttributedString;
    .param p2, "startIdx"    # I
    .param p3, "endIdx"    # I

    .prologue
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

    .prologue
    .line 100
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v15

    .line 101
    .local v15, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    invoke-interface {v15}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v21

    .line 102
    .local v21, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v13

    .line 103
    .local v13, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v6

    .line 105
    .local v6, "column":I
    const/4 v5, 0x1

    .line 106
    .local v5, "colspan":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v15}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_3

    .line 107
    invoke-interface {v15, v9}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v12

    .line 108
    .local v12, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v13}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v12, v0, v6}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 109
    if-nez p3, :cond_1

    .line 111
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 197
    .end local v12    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    :goto_1
    return-wide v22

    .line 113
    .restart local v12    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    .line 114
    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v25

    sub-int v5, v24, v25

    .line 106
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 118
    .end local v12    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v17

    .line 119
    .local v17, "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v4

    .line 122
    .local v4, "cellType":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_4

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()I

    move-result v4

    .line 124
    :cond_4
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v8

    .line 129
    .local v8, "font":Lorg/apache/poi/ss/usermodel/Font;
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 130
    .local v22, "width":D
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_7

    .line 131
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v14

    .line 132
    .local v14, "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "\\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    :goto_2
    array-length v0, v11

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_0

    .line 134
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v25, v11, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 136
    .local v20, "txt":Ljava/lang/String;
    new-instance v16, Ljava/text/AttributedString;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 137
    .local v16, "str":Ljava/text/AttributedString;
    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v8, v0, v1, v2}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 139
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/RichTextString;->numFormattingRuns()I

    move-result v24

    if-lez v24, :cond_5

    .line 143
    :cond_5
    new-instance v10, Ljava/awt/font/TextLayout;

    invoke-virtual/range {v16 .. v16}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v24

    sget-object v25, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 144
    .local v10, "layout":Ljava/awt/font/TextLayout;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v24

    if-eqz v24, :cond_6

    .line 151
    new-instance v19, Ljava/awt/geom/AffineTransform;

    invoke-direct/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 152
    .local v19, "trans":Ljava/awt/geom/AffineTransform;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4076800000000000L    # 360.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 153
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 156
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v24

    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    .line 133
    .end local v19    # "trans":Ljava/awt/geom/AffineTransform;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 158
    :cond_6
    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v24

    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    goto :goto_3

    .line 162
    .end local v10    # "layout":Ljava/awt/font/TextLayout;
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v14    # "rt":Lorg/apache/poi/ss/usermodel/RichTextString;
    .end local v16    # "str":Ljava/text/AttributedString;
    .end local v20    # "txt":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    .line 163
    .local v18, "sval":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 166
    :try_start_0
    sget-object v24, Lorg/apache/poi/ss/util/SheetUtil;->dummyEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 173
    :cond_8
    :goto_4
    if-eqz v18, :cond_0

    .line 174
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x30

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 175
    .restart local v20    # "txt":Ljava/lang/String;
    new-instance v16, Ljava/text/AttributedString;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v16    # "str":Ljava/text/AttributedString;
    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v8, v0, v1, v2}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 178
    new-instance v10, Ljava/awt/font/TextLayout;

    invoke-virtual/range {v16 .. v16}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v24

    sget-object v25, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 179
    .restart local v10    # "layout":Ljava/awt/font/TextLayout;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v24

    if-eqz v24, :cond_a

    .line 186
    new-instance v19, Ljava/awt/geom/AffineTransform;

    invoke-direct/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 187
    .restart local v19    # "trans":Ljava/awt/geom/AffineTransform;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4076800000000000L    # 360.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 188
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 191
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v24

    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    .line 192
    goto/16 :goto_1

    .line 167
    .end local v10    # "layout":Ljava/awt/font/TextLayout;
    .end local v16    # "str":Ljava/text/AttributedString;
    .end local v19    # "trans":Ljava/awt/geom/AffineTransform;
    .end local v20    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    .line 169
    goto/16 :goto_4

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v4, v0, :cond_8

    .line 171
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    .line 193
    .restart local v10    # "layout":Ljava/awt/font/TextLayout;
    .restart local v16    # "str":Ljava/text/AttributedString;
    .restart local v20    # "txt":Ljava/lang/String;
    :cond_a
    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v24

    int-to-double v0, v5

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    goto/16 :goto_1
.end method

.method public static getCellWithMerges(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "rowIx"    # I
    .param p2, "colIx"    # I

    .prologue
    .line 308
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 309
    .local v3, "r":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v3, p2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 311
    .local v0, "c":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v0, :cond_0

    .line 331
    .end local v0    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :goto_0
    return-object v0

    .line 317
    :cond_0
    const/4 v2, 0x0

    .local v2, "mr":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 318
    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .line 319
    .local v1, "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    invoke-interface {p0, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_1

    .line 324
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 331
    .end local v1    # "mergedRegion":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D
    .locals 17
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .prologue
    .line 212
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v12

    .line 213
    .local v12, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    new-instance v7, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v7}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 214
    .local v7, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v6

    .line 216
    .local v6, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    new-instance v11, Ljava/text/AttributedString;

    const/16 v13, 0x30

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 217
    .local v11, "str":Ljava/text/AttributedString;
    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v13, v0}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 218
    new-instance v9, Ljava/awt/font/TextLayout;

    invoke-virtual {v11}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v13

    sget-object v16, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    move-object/from16 v0, v16

    invoke-direct {v9, v13, v0}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 219
    .local v9, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v9}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v13

    float-to-int v3, v13

    .line 221
    .local v3, "defaultCharWidth":I
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 222
    .local v14, "width":D
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ss/usermodel/Row;

    .line 223
    .local v10, "row":Lorg/apache/poi/ss/usermodel/Row;
    move/from16 v0, p1

    invoke-interface {v10, v0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    .line 225
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-eqz v2, :cond_0

    .line 229
    move/from16 v0, p2

    invoke-static {v2, v3, v7, v0}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v4

    .line 230
    .local v4, "cellWidth":D
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 231
    goto :goto_0

    .line 232
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "cellWidth":D
    .end local v10    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_1
    return-wide v14
.end method

.method public static getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZII)D
    .locals 17
    .param p0, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z
    .param p3, "firstRow"    # I
    .param p4, "lastRow"    # I

    .prologue
    .line 249
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v12

    .line 250
    .local v12, "wb":Lorg/apache/poi/ss/usermodel/Workbook;
    new-instance v7, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v7}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    .line 251
    .local v7, "formatter":Lorg/apache/poi/ss/usermodel/DataFormatter;
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v6

    .line 253
    .local v6, "defaultFont":Lorg/apache/poi/ss/usermodel/Font;
    new-instance v11, Ljava/text/AttributedString;

    const/16 v13, 0x30

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 254
    .local v11, "str":Ljava/text/AttributedString;
    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v13, v0}, Lorg/apache/poi/ss/util/SheetUtil;->copyAttributes(Lorg/apache/poi/ss/usermodel/Font;Ljava/text/AttributedString;II)V

    .line 255
    new-instance v8, Ljava/awt/font/TextLayout;

    invoke-virtual {v11}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v13

    sget-object v16, Lorg/apache/poi/ss/util/SheetUtil;->fontRenderContext:Ljava/awt/font/FontRenderContext;

    move-object/from16 v0, v16

    invoke-direct {v8, v13, v0}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 256
    .local v8, "layout":Ljava/awt/font/TextLayout;
    invoke-virtual {v8}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v13

    float-to-int v3, v13

    .line 258
    .local v3, "defaultCharWidth":I
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 259
    .local v14, "width":D
    move/from16 v10, p3

    .local v10, "rowIdx":I
    :goto_0
    move/from16 v0, p4

    if-gt v10, v0, :cond_2

    .line 260
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v9

    .line 261
    .local v9, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-eqz v9, :cond_0

    .line 263
    move/from16 v0, p1

    invoke-interface {v9, v0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    .line 265
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    if-nez v2, :cond_1

    .line 259
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 269
    .restart local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_1
    move/from16 v0, p2

    invoke-static {v2, v3, v7, v0}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v4

    .line 270
    .local v4, "cellWidth":D
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    goto :goto_1

    .line 273
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "cellWidth":D
    .end local v9    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_2
    return-wide v14
.end method
