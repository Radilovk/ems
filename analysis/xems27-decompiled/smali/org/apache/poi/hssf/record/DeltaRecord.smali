.class public final Lorg/apache/poi/hssf/record/DeltaRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DeltaRecord.java"


# static fields
.field public static final DEFAULT_VALUE:D = 0.001

.field public static final sid:S = 0x10s


# instance fields
.field private field_1_max_change:D


# direct methods
.method public constructor <init>(D)V
    .locals 0
    .param p1, "maxChange"    # D

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/DeltaRecord;->field_1_max_change:D

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/DeltaRecord;->field_1_max_change:D

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 76
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 67
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxChange()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/DeltaRecord;->field_1_max_change:D

    return-wide v0
.end method

.method public getSid()S
    .locals 1

    .line 71
    const/16 v0, 0x10

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DeltaRecord;->getMaxChange()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DELTA]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "    .maxchange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DeltaRecord;->getMaxChange()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "[/DELTA]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
