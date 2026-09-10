.class public final Lorg/apache/poi/hssf/record/InterfaceHdrRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "InterfaceHdrRecord.java"


# static fields
.field public static final CODEPAGE:I = 0x4b0

.field public static final sid:S = 0xe1s


# instance fields
.field private final _codepage:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "codePage"    # I

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;->_codepage:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;->_codepage:I

    .line 44
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 60
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 64
    const/16 v0, 0xe1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 56
    iget v0, p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;->_codepage:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[INTERFACEHDR]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "    .codepage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;->_codepage:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "[/INTERFACEHDR]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
