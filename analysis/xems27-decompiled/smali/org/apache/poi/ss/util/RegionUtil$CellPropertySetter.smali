.class final Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;
.super Ljava/lang/Object;
.source "RegionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/RegionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellPropertySetter"
.end annotation


# instance fields
.field private final _propertyName:Ljava/lang/String;

.field private final _propertyValue:Ljava/lang/Short;

.field private final _workbook:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;I)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    .line 49
    iput-object p2, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_propertyName:Ljava/lang/String;

    .line 50
    int-to-short v0, p3

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_propertyValue:Ljava/lang/Short;

    .line 51
    return-void
.end method


# virtual methods
.method public setProperty(Lorg/apache/poi/ss/usermodel/Row;I)V
    .locals 4
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;
    .param p2, "column"    # I

    .line 55
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 56
    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    iget-object v1, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    iget-object v2, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_propertyName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/ss/util/RegionUtil$CellPropertySetter;->_propertyValue:Ljava/lang/Short;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
