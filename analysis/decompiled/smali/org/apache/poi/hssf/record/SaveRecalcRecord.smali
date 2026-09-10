.class public final Lorg/apache/poi/hssf/record/SaveRecalcRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SaveRecalcRecord.java"


# static fields
.field public static final sid:S = 0x5fs


# instance fields
.field private field_1_recalc:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>()V

    .line 95
    .local v0, "rec":Lorg/apache/poi/hssf/record/SaveRecalcRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    .line 96
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public getRecalc()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    iget-short v1, p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x5f

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 81
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 82
    return-void
.end method

.method public setRecalc(Z)V
    .locals 1
    .param p1, "recalc"    # Z

    .prologue
    const/4 v0, 0x1

    .line 55
    if-ne p1, v0, :cond_0

    :goto_0
    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->field_1_recalc:S

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SAVERECALC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "    .recalc         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->getRecalc()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "[/SAVERECALC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
