.class public Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;
.super Ljava/lang/Object;
.source "FilePassRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/FilePassRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XorKeyData"
.end annotation


# instance fields
.field private _key:I

.field private _verifier:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 170
    const-string v0, "    .xor.key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_key:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v0, "    .xor.verifier  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_verifier:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    return-void
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x6

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_key:I

    return v0
.end method

.method public getVerifier()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_verifier:I

    return v0
.end method

.method public read(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_key:I

    .line 140
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_verifier:I

    .line 141
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 144
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_key:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 145
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_verifier:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 146
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 162
    iput p1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_key:I

    .line 163
    return-void
.end method

.method public setVerifier(I)V
    .locals 0
    .param p1, "verifier"    # I

    .prologue
    .line 166
    iput p1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->_verifier:I

    .line 167
    return-void
.end method
