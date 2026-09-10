.class public final Lorg/apache/poi/hssf/record/HCenterRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "HCenterRecord.java"


# static fields
.field public static final sid:S = 0x83s


# instance fields
.field private field_1_hcenter:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    .line 41
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>()V

    .line 96
    .local v0, "rec":Lorg/apache/poi/hssf/record/HCenterRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    .line 97
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method public getHCenter()Z
    .locals 2

    .line 67
    iget-short v0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSid()S
    .locals 1

    .line 91
    const/16 v0, 0x83

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    iget-short v0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    return-void
.end method

.method public setHCenter(Z)V
    .locals 1
    .param p1, "hc"    # Z

    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    iput-short v0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    .line 58
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[HCENTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .hcenter        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getHCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/HCENTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
