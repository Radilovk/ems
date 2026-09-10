.class public final Lorg/apache/poi/hssf/record/ProtectionRev4Record;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ProtectionRev4Record.java"


# static fields
.field private static final protectedFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1afs


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "protect"    # Z

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(I)V

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->setProtect(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    .line 64
    sget-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 85
    const/16 v0, 0x1af

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    return-void
.end method

.method public setProtect(Z)V
    .locals 2
    .param p1, "protect"    # Z

    .line 56
    sget-object v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->protectedFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PROT4REV]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "    .options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "[/PROT4REV]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
