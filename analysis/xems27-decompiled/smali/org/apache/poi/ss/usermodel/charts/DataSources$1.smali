.class final Lorg/apache/poi/ss/usermodel/charts/DataSources$1;
.super Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;
.source "DataSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;->fromNumericCellRange(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "x1"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method


# virtual methods
.method public getPointAt(I)Ljava/lang/Number;
    .locals 3
    .param p1, "index"    # I

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$1;->getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    .line 45
    .local v0, "cellValue":Lorg/apache/poi/ss/usermodel/CellValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$1;->getPointAt(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method
