.class public Lorg/apache/poi/util/LongField;
.super Ljava/lang/Object;
.source "LongField.java"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# instance fields
.field private final _offset:I

.field private _value:J


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ltz p1, :cond_0

    .line 56
    iput p1, p0, Lorg/apache/poi/util/LongField;->_offset:I

    .line 57
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LongField;-><init>(I)V

    .line 73
    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/util/LongField;->set(J)V

    .line 74
    return-void
.end method

.method public constructor <init>(IJ[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LongField;-><init>(I)V

    .line 110
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/util/LongField;->set(J[B)V

    .line 111
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

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LongField;-><init>(I)V

    .line 91
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/LongField;->readFromBytes([B)V

    .line 92
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/apache/poi/util/LongField;->_value:J

    return-wide v0
.end method

.method public readFromBytes([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 166
    iget v0, p0, Lorg/apache/poi/util/LongField;->_offset:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/util/LongField;->_value:J

    .line 167
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

    .line 184
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/util/LongField;->_value:J

    .line 185
    return-void
.end method

.method public set(J)V
    .locals 0
    .param p1, "value"    # J

    .line 132
    iput-wide p1, p0, Lorg/apache/poi/util/LongField;->_value:J

    .line 133
    return-void
.end method

.method public set(J[B)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 148
    iput-wide p1, p0, Lorg/apache/poi/util/LongField;->_value:J

    .line 149
    invoke-virtual {p0, p3}, Lorg/apache/poi/util/LongField;->writeToBytes([B)V

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    iget-wide v0, p0, Lorg/apache/poi/util/LongField;->_value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 201
    iget v0, p0, Lorg/apache/poi/util/LongField;->_offset:I

    iget-wide v1, p0, Lorg/apache/poi/util/LongField;->_value:J

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 202
    return-void
.end method
