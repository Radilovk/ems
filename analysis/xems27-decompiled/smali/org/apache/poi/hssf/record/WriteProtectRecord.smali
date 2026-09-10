.class public final Lorg/apache/poi/hssf/record/WriteProtectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WriteProtectRecord.java"


# static fields
.field public static final sid:S = 0x86s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 60
    const/16 v0, 0x86

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WRITEPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "[/WRITEPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
