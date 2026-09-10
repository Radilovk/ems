.class public Lorg/apache/poi/util/IntegerField;
.super Ljava/lang/Object;
.source "IntegerField.java"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# instance fields
.field private final _offset:I

.field private _value:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-ltz p1, :cond_0

    .line 56
    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "negative offset"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    .line 74
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->set(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    .line 112
    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 113
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

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    .line 92
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->readFromBytes([B)V

    .line 93
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

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
    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    .line 170
    return-void
.end method

.method public readFromStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    .line 188
    return-void
.end method

.method public set(I)V
    .locals 0
    .param p1, "value"    # I

    .line 134
    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    .line 135
    return-void
.end method

.method public set(I[B)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 151
    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    .line 152
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->writeToBytes([B)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

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

    .line 204
    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    iget v1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 205
    return-void
.end method
