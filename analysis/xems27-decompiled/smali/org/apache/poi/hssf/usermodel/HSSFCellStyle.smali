.class public final Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
.super Ljava/lang/Object;
.source "HSSFCellStyle.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellStyle;


# static fields
.field private static getDataFormatStringCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static lastFormats:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private _format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

.field private _index:S

.field private _workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 2
    .param p1, "index"    # S
    .param p2, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 41
    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    .line 42
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 52
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 53
    iput-short p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    .line 54
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 55
    return-void
.end method

.method protected constructor <init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "index"    # S
    .param p2, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .param p3, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 48
    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 49
    return-void
.end method

.method private checkDefaultBackgroundFills()V
    .locals 3

    .line 680
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    .line 684
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v0

    if-eq v0, v1, :cond_1

    .line 685
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v0

    if-ne v0, v1, :cond_1

    .line 688
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v0

    if-eq v0, v2, :cond_1

    .line 689
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFillBackgroundColor(S)V

    .line 690
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 4
    .param p1, "source"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 889
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    .line 892
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-eq v0, v1, :cond_0

    .line 894
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    const/16 v1, -0x8000

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 895
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 896
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 901
    .local v0, "fmt":S
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setDataFormat(S)V

    .line 905
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    .line 906
    .local v1, "fr":Lorg/apache/poi/hssf/record/FontRecord;
    iget-object v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/FontRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/FontRecord;)V

    .line 912
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I

    move-result v3

    int-to-short v3, v3

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(SLorg/apache/poi/hssf/record/FontRecord;)V

    .line 915
    .local v2, "font":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    .line 917
    .end local v0    # "fmt":S
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/FontRecord;
    .end local v2    # "font":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_0
    return-void
.end method

.method public cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2
    .param p1, "source"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 880
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v0, :cond_0

    .line 881
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->cloneStyleFrom(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 885
    return-void

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only clone from one HSSFCellStyle to another, not between HSSFCellStyle and XSSFCellStyle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 929
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 930
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 931
    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    if-eqz v2, :cond_5

    .line 932
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 933
    .local v2, "other":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v3, :cond_2

    .line 934
    iget-object v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v3, :cond_3

    .line 935
    return v1

    .line 936
    :cond_2
    iget-object v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 937
    return v1

    .line 938
    :cond_3
    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    iget-short v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    if-eq v3, v4, :cond_4

    .line 939
    return v1

    .line 940
    :cond_4
    return v0

    .line 942
    .end local v2    # "other":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_5
    return v1
.end method

.method public getAlignment()S
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result v0

    return v0
.end method

.method public getBorderBottom()S
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result v0

    return v0
.end method

.method public getBorderLeft()S
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result v0

    return v0
.end method

.method public getBorderRight()S
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result v0

    return v0
.end method

.method public getBorderTop()S
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result v0

    return v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    .line 628
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBottomBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getDataFormat()S
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v0

    return v0
.end method

.method public getDataFormatString()Ljava/lang/String;
    .locals 2

    .line 122
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 128
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastFormats:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->lastDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 131
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatStringCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataFormatString(Lorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 155
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 157
    .local v0, "format":Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDataFormatString(Lorg/apache/poi/ss/usermodel/Workbook;)Ljava/lang/String;
    .locals 3
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 144
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 146
    .local v0, "format":Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v1

    .line 147
    .local v1, "idx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "General"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public getFillBackgroundColor()S
    .locals 2

    .line 732
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v0

    .line 735
    .local v0, "result":S
    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    .line 736
    const/16 v1, 0x40

    return v1

    .line 738
    :cond_0
    return v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 742
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 745
    .local v0, "pallette":Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v0

    return v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 774
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    .line 777
    .local v0, "pallette":Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlFillPattern()S

    move-result v0

    return v0
.end method

.method public getFont(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 2
    .param p1, "parentWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 191
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getFontIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getFontIndex()S
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v0

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getIndention()S
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndent()S

    move-result v0

    return v0
.end method

.method public getIndex()S
    .locals 1

    .line 64
    iget-short v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    return v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getLeftBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getLocked()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isLocked()Z

    move-result v0

    return v0
.end method

.method public getParentStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v0

    .line 75
    .local v0, "parentIndex":S
    if-eqz v0, :cond_1

    const/16 v1, 0xfff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v1

    .line 76
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getReadingOrder()S
    .locals 1

    .line 839
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result v0

    return v0
.end method

.method public getRightBorderColor()S
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRightBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getRotation()S
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRotation()S

    move-result v0

    .line 338
    .local v0, "rotation":S
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 340
    return v0

    .line 342
    :cond_0
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 344
    rsub-int/lit8 v1, v0, 0x5a

    int-to-short v0, v1

    .line 346
    :cond_1
    return v0
.end method

.method public getShrinkToFit()Z
    .locals 1

    .line 827
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getShrinkToFit()Z

    move-result v0

    return v0
.end method

.method public getTopBorderColor()S
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result v0

    return v0
.end method

.method public getUserStyleName()Ljava/lang/String;
    .locals 3

    .line 788
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 789
    .local v0, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 790
    return-object v1

    .line 792
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    return-object v1

    .line 795
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalAlignment()S
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result v0

    return v0
.end method

.method public getWrapText()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getWrapText()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 921
    const/16 v0, 0x1f

    .line 922
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 923
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 924
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    add-int/2addr v1, v3

    .line 925
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setAlignment(S)V
    .locals 2
    .param p1, "align"    # S

    .line 245
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    .line 246
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignment(S)V

    .line 247
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2
    .param p1, "border"    # S

    .line 528
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 529
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderBottom(S)V

    .line 530
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2
    .param p1, "border"    # S

    .line 387
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 388
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderLeft(S)V

    .line 389
    return-void
.end method

.method public setBorderRight(S)V
    .locals 2
    .param p1, "border"    # S

    .line 434
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 435
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderRight(S)V

    .line 436
    return-void
.end method

.method public setBorderTop(S)V
    .locals 2
    .param p1, "border"    # S

    .line 481
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentBorder(Z)V

    .line 482
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderTop(S)V

    .line 483
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 618
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    .line 619
    return-void
.end method

.method public setDataFormat(S)V
    .locals 1
    .param p1, "fmt"    # S

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 92
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 1
    .param p1, "bg"    # S

    .line 719
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillBackground(S)V

    .line 720
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    .line 721
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 1
    .param p1, "bg"    # S

    .line 757
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillForeground(S)V

    .line 758
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->checkDefaultBackgroundFills()V

    .line 759
    return-void
.end method

.method public setFillPattern(S)V
    .locals 1
    .param p1, "fp"    # S

    .line 657
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlFillPattern(S)V

    .line 658
    return-void
.end method

.method public setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V
    .locals 2
    .param p1, "font"    # Lorg/apache/poi/hssf/usermodel/HSSFFont;

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentFont(Z)V

    .line 171
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getIndex()S

    move-result v0

    .line 172
    .local v0, "fontindex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 173
    return-void
.end method

.method public setFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 1
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .line 167
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->setFont(Lorg/apache/poi/hssf/usermodel/HSSFFont;)V

    .line 168
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    .line 201
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setHidden(Z)V

    .line 202
    return-void
.end method

.method public setIndention(S)V
    .locals 1
    .param p1, "indent"    # S

    .line 355
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndent(S)V

    .line 356
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 561
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    .line 562
    return-void
.end method

.method public setLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .line 219
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentCellOptions(Z)V

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLocked(Z)V

    .line 221
    return-void
.end method

.method public setReadingOrder(S)V
    .locals 1
    .param p1, "order"    # S

    .line 850
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setReadingOrder(S)V

    .line 851
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 580
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    .line 581
    return-void
.end method

.method public setRotation(S)V
    .locals 2
    .param p1, "rotation"    # S

    .line 316
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    const/16 v0, -0x5a

    if-gez p1, :cond_1

    if-lt p1, v0, :cond_1

    .line 322
    rsub-int/lit8 v0, p1, 0x5a

    int-to-short p1, v0

    goto :goto_0

    .line 324
    :cond_1
    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 328
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRotation(S)V

    .line 329
    return-void

    .line 326
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The rotation must be between -90 and 90 degrees, or 0xff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShrinkToFit(Z)V
    .locals 1
    .param p1, "shrinkToFit"    # Z

    .line 820
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setShrinkToFit(Z)V

    .line 821
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 599
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    .line 600
    return-void
.end method

.method public setUserStyleName(Ljava/lang/String;)V
    .locals 3
    .param p1, "styleName"    # Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 804
    .local v0, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    if-nez v0, :cond_0

    .line 805
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-short v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v0

    .line 809
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_index:S

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 810
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to set user specified style names for built in styles!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setName(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public setVerticalAlignment(S)V
    .locals 1
    .param p1, "align"    # S

    .line 294
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setVerticalAlignment(S)V

    .line 295
    return-void
.end method

.method public setWrapText(Z)V
    .locals 2
    .param p1, "wrapped"    # Z

    .line 271
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentNotParentAlignment(Z)V

    .line 272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_format:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setWrapText(Z)V

    .line 273
    return-void
.end method

.method public verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 862
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-ne v0, v1, :cond_0

    .line 865
    return-void

    .line 863
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This Style does not belong to the supplied Workbook. Are you trying to assign a style from one workbook to the cell of a differnt workbook?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
