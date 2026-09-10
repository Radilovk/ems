.class public final Lorg/apache/poi/ss/util/RegionUtil;
.super Ljava/lang/Object;
.source "RegionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 7
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 153
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 154
    .local v1, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 155
    .local v0, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    .line 156
    .local v5, "rowIndex":I
    new-instance v2, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v6, "borderBottom"

    invoke-direct {v2, p3, v6, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 157
    .local v2, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v5, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 158
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 159
    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public static setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 72
    .local v4, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 73
    .local v3, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 75
    .local v0, "column":I
    new-instance v1, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v5, "borderLeft"

    invoke-direct {v1, p3, v5, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 76
    .local v1, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 77
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public static setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 6
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 113
    .local v4, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 114
    .local v3, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 116
    .local v0, "column":I
    new-instance v1, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v5, "borderRight"

    invoke-direct {v1, p3, v5, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 117
    .local v1, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 118
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public static setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 7
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 194
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 195
    .local v1, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 196
    .local v0, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    .line 197
    .local v5, "rowIndex":I
    new-instance v2, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v6, "borderTop"

    invoke-direct {v2, p3, v6, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 198
    .local v2, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v5, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 199
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 200
    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public static setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 7
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 174
    .local v1, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 175
    .local v0, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    .line 176
    .local v5, "rowIndex":I
    new-instance v2, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v6, "bottomBorderColor"

    invoke-direct {v2, p3, v6, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 178
    .local v2, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v5, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 179
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 180
    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public static setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 92
    .local v4, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 93
    .local v3, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    .line 95
    .local v0, "column":I
    new-instance v1, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v5, "leftBorderColor"

    invoke-direct {v1, p3, v5, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 97
    .local v1, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 98
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public static setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 6
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 133
    .local v4, "rowStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    .line 134
    .local v3, "rowEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 136
    .local v0, "column":I
    new-instance v1, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string v5, "rightBorderColor"

    invoke-direct {v1, p3, v5, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 138
    .local v1, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 139
    invoke-static {v2, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public static setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 7
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p3, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    .line 214
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 215
    .local v1, "colStart":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    .line 216
    .local v0, "colEnd":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    .line 217
    .local v5, "rowIndex":I
    new-instance v2, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;

    const-string/jumbo v6, "topBorderColor"

    invoke-direct {v2, p3, v6, p0}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V

    .line 218
    .local v2, "cps":Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
    invoke-static {v5, p2}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 219
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 220
    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method
