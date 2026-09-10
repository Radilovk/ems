.class final Lorg/apache/poi/ss/usermodel/charts/DataSources$2;
.super Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;
.source "DataSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;->fromStringCellRange(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "x1"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$2;->getPointAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPointAt(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$2;->getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    .line 62
    .local v0, "cellValue":Lorg/apache/poi/ss/usermodel/CellValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isNumeric()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method
