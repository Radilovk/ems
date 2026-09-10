.class public final Lorg/apache/poi/hssf/record/TabIdRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "TabIdRecord.java"


# static fields
.field private static final EMPTY_SHORT_ARRAY:[S

.field public static final sid:S = 0x13ds


# instance fields
.field public _tabids:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lorg/apache/poi/hssf/record/TabIdRecord;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    sget-object v0, Lorg/apache/poi/hssf/record/TabIdRecord;->EMPTY_SHORT_ARRAY:[S

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 42
    .local v0, "nTabs":I
    new-array v1, v0, [S

    iput-object v1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 81
    const/16 v0, 0x13d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    .line 71
    .local v0, "tabids":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 72
    aget-short v2, v0, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setTabIdArray([S)V
    .locals 0
    .param p1, "array"    # [S

    .line 53
    iput-object p1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[TABID]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "    .elements        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 62
    const-string v3, "    .element_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    aget-short v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_0
    const-string v1, "[/TABID]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
