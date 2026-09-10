.class public final Lorg/apache/poi/hssf/record/BackupRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BackupRecord.java"


# static fields
.field public static final sid:S = 0x40s


# instance fields
.field private field_1_backup:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BackupRecord;->field_1_backup:S

    .line 46
    return-void
.end method


# virtual methods
.method public getBackup()S
    .locals 1

    .line 67
    iget-short v0, p0, Lorg/apache/poi/hssf/record/BackupRecord;->field_1_backup:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 91
    const/16 v0, 0x40

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    return-void
.end method

.method public setBackup(S)V
    .locals 0
    .param p1, "backup"    # S

    .line 56
    iput-short p1, p0, Lorg/apache/poi/hssf/record/BackupRecord;->field_1_backup:S

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BACKUP]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .backup          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/BACKUP]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
