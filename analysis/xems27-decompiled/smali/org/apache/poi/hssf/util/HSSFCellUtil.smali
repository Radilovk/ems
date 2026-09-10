.class public final Lorg/apache/poi/hssf/util/HSSFCellUtil;
.super Ljava/lang/Object;
.source "HSSFCellUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createCell(Lorg/apache/poi/hssf/usermodel/HSSFRow;ILjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/hssf/util/HSSFCellUtil;->createCell(Lorg/apache/poi/hssf/usermodel/HSSFRow;ILjava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    return-object v0
.end method

.method public static createCell(Lorg/apache/poi/hssf/usermodel/HSSFRow;ILjava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .param p1, "column"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/CellUtil;->createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public static getCell(Lorg/apache/poi/hssf/usermodel/HSSFRow;I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1
    .param p0, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .param p1, "columnIndex"    # I

    .line 63
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public static getRow(ILorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 1
    .param p0, "rowIndex"    # I
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 51
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    return-object v0
.end method

.method public static setAlignment(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;S)V
    .locals 0
    .param p0, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "align"    # S

    .line 101
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/CellUtil;->setAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;S)V

    .line 102
    return-void
.end method

.method public static setCellStyleProperty(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .line 131
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public static setFont(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFFont;)V
    .locals 0
    .param p0, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "font"    # Lorg/apache/poi/hssf/usermodel/HSSFFont;

    .line 112
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/CellUtil;->setFont(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/Font;)V

    .line 113
    return-void
.end method

.method public static translateUnicodeValues(Lorg/apache/poi/hssf/usermodel/HSSFCell;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 0
    .param p0, "cell"    # Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 142
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellUtil;->translateUnicodeValues(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    .line 143
    return-object p0
.end method
