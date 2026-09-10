.class public final Lorg/apache/poi/hssf/record/WindowProtectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WindowProtectRecord.java"


# static fields
.field private static final settingsProtectedFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x19s


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->settingsProtectedFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    iput p1, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "protect"    # Z

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(I)V

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;->setProtect(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(I)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->settingsProtectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x19

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    return-void
.end method

.method public setProtect(Z)V
    .locals 2
    .param p1, "protect"    # Z

    .prologue
    .line 55
    sget-object v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->settingsProtectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WINDOWPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "    .options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;->_options:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "[/WINDOWPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
