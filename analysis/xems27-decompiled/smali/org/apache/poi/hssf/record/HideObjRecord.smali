.class public final Lorg/apache/poi/hssf/record/HideObjRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "HideObjRecord.java"


# static fields
.field public static final HIDE_ALL:S = 0x2s

.field public static final SHOW_ALL:S = 0x0s

.field public static final SHOW_PLACEHOLDERS:S = 0x1s

.field public static final sid:S = 0x8ds


# instance fields
.field private field_1_hide_obj:S


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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/HideObjRecord;->field_1_hide_obj:S

    .line 48
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 94
    const/4 v0, 0x2

    return v0
.end method

.method public getHideObj()S
    .locals 1

    .line 75
    iget-short v0, p0, Lorg/apache/poi/hssf/record/HideObjRecord;->field_1_hide_obj:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 99
    const/16 v0, 0x8d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HideObjRecord;->getHideObj()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 91
    return-void
.end method

.method public setHideObj(S)V
    .locals 0
    .param p1, "hide"    # S

    .line 61
    iput-short p1, p0, Lorg/apache/poi/hssf/record/HideObjRecord;->field_1_hide_obj:S

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[HIDEOBJ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "    .hideobj         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HideObjRecord;->getHideObj()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "[/HIDEOBJ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
