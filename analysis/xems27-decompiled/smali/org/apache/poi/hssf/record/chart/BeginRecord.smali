.class public final Lorg/apache/poi/hssf/record/chart/BeginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BeginRecord.java"


# static fields
.field public static final sid:S = 0x1033s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 68
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>()V

    .line 70
    .local v0, "br":Lorg/apache/poi/hssf/record/chart/BeginRecord;
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 64
    const/16 v0, 0x1033

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BEGIN]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "[/BEGIN]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
