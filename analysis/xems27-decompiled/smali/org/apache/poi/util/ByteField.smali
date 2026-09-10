.class public Lorg/apache/poi/util/ByteField;
.super Ljava/lang/Object;
.source "ByteField.java"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# static fields
.field private static final _default_value:B


# instance fields
.field private final _offset:I

.field private _value:B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/ByteField;-><init>(IB)V

    .line 54
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p1, :cond_0

    .line 74
    iput p1, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->set(B)V

    .line 76
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IB[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # B
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/ByteField;-><init>(IB)V

    .line 113
    invoke-virtual {p0, p3}, Lorg/apache/poi/util/ByteField;->writeToBytes([B)V

    .line 114
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    .line 93
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->readFromBytes([B)V

    .line 94
    return-void
.end method


# virtual methods
.method public get()B
    .locals 1

    .line 124
    iget-byte v0, p0, Lorg/apache/poi/util/ByteField;->_value:B

    return v0
.end method

.method public readFromBytes([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/util/ByteField;->_value:B

    .line 170
    return-void
.end method

.method public readFromStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 189
    .local v0, "ib":I
    if-ltz v0, :cond_0

    .line 192
    int-to-byte v1, v0

    iput-byte v1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    .line 193
    return-void

    .line 190
    :cond_0
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public set(B)V
    .locals 0
    .param p1, "value"    # B

    .line 135
    iput-byte p1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    .line 136
    return-void
.end method

.method public set(B[B)V
    .locals 0
    .param p1, "value"    # B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/ByteField;->set(B)V

    .line 152
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ByteField;->writeToBytes([B)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 220
    iget-byte v0, p0, Lorg/apache/poi/util/ByteField;->_value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lorg/apache/poi/util/ByteField;->_offset:I

    iget-byte v1, p0, Lorg/apache/poi/util/ByteField;->_value:B

    aput-byte v1, p1, v0

    .line 210
    return-void
.end method
