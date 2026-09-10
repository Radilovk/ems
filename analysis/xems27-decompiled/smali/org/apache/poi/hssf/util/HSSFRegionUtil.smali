.class public final Lorg/apache/poi/hssf/util/HSSFRegionUtil;
.super Ljava/lang/Object;
.source "HSSFRegionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 139
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 140
    return-void
.end method

.method public static setBorderBottom(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "border"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 127
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setBorderBottom(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 128
    return-void
.end method

.method public static setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 59
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 60
    return-void
.end method

.method public static setBorderLeft(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "border"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 46
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setBorderLeft(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 47
    return-void
.end method

.method public static setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 99
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 100
    return-void
.end method

.method public static setBorderRight(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "border"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 87
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setBorderRight(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 88
    return-void
.end method

.method public static setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "border"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 179
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 180
    return-void
.end method

.method public static setBorderTop(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "border"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 167
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setBorderTop(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 168
    return-void
.end method

.method public static setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 160
    return-void
.end method

.method public static setBottomBorderColor(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "color"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 147
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 148
    return-void
.end method

.method public static setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 79
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 80
    return-void
.end method

.method public static setLeftBorderColor(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "color"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 67
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 68
    return-void
.end method

.method public static setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 119
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 120
    return-void
.end method

.method public static setRightBorderColor(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "color"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 107
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 108
    return-void
.end method

.method public static setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .param p0, "color"    # I
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 199
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/RegionUtil;->setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Workbook;)V

    .line 200
    return-void
.end method

.method public static setTopBorderColor(SLorg/apache/poi/hssf/util/Region;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p0, "color"    # S
    .param p1, "region"    # Lorg/apache/poi/hssf/util/Region;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 187
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/poi/hssf/util/HSSFRegionUtil;->setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 188
    return-void
.end method

.method private static toCRA(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p0, "region"    # Lorg/apache/poi/ss/util/Region;

    .line 38
    invoke-static {p0}, Lorg/apache/poi/ss/util/Region;->convertToCellRangeAddress(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method
