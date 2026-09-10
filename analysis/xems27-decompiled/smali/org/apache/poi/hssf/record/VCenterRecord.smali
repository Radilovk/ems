.class public final Lorg/apache/poi/hssf/record/VCenterRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "VCenterRecord.java"


# static fields
.field public static final sid:S = 0x84s


# instance fields
.field private field_1_vcenter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>()V

    .line 90
    .local v0, "rec":Lorg/apache/poi/hssf/record/VCenterRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    iput v1, v0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    .line 91
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 85
    const/16 v0, 0x84

    return v0
.end method

.method public getVCenter()Z
    .locals 2

    .line 61
    iget v0, p0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 76
    iget v0, p0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    return-void
.end method

.method public setVCenter(Z)V
    .locals 0
    .param p1, "hc"    # Z

    .line 51
    iput p1, p0, Lorg/apache/poi/hssf/record/VCenterRecord;->field_1_vcenter:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[VCENTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "    .vcenter        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VCenterRecord;->getVCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "[/VCENTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
