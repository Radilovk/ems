.class public final Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ScenarioProtectRecord.java"


# static fields
.field public static final sid:S = 0xdds


# instance fields
.field private field_1_protect:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 102
    new-instance v0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;-><init>()V

    .line 103
    .local v0, "rec":Lorg/apache/poi/hssf/record/ScenarioProtectRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    .line 104
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 93
    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    .line 74
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

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

    .line 98
    const/16 v0, 0xdd

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 89
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 90
    return-void
.end method

.method public setProtect(Z)V
    .locals 1
    .param p1, "protect"    # Z

    .line 57
    if-eqz p1, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->field_1_protect:S

    .line 65
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SCENARIOPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "    .protect         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->getProtect()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "[/SCENARIOPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
