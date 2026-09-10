.class public Lorg/apache/poi/hpsf/TypeWriter;
.super Ljava/lang/Object;
.source "TypeWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToStream(Ljava/io/OutputStream;D)I
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putDouble(DLjava/io/OutputStream;)V

    .line 187
    const/16 v0, 0x8

    return v0
.end method

.method public static writeToStream(Ljava/io/OutputStream;I)I
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 61
    const/4 v0, 0x4

    return v0
.end method

.method public static writeToStream(Ljava/io/OutputStream;J)I
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putLong(JLjava/io/OutputStream;)V

    .line 76
    const/16 v0, 0x8

    return v0
.end method

.method public static writeToStream(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)I
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # Lorg/apache/poi/hpsf/ClassID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 127
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    .line 128
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    array-length v1, v0

    return v1
.end method

.method public static writeToStream(Ljava/io/OutputStream;S)I
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public static writeToStream(Ljava/io/OutputStream;[Lorg/apache/poi/hpsf/Property;I)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "properties"    # [Lorg/apache/poi/hpsf/Property;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;
        }
    .end annotation

    .line 151
    if-nez p1, :cond_0

    .line 152
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 158
    aget-object v1, p1, v0

    .line 159
    .local v1, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 160
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 156
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 166
    aget-object v1, p1, v0

    .line 167
    .restart local v1    # "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v2

    .line 168
    .local v2, "type":J
    invoke-static {p0, v2, v3}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    .line 169
    long-to-int v4, v2

    int-to-long v4, v4

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v4, v5, v6, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    .line 164
    .end local v1    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v2    # "type":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static writeUIntToStream(Ljava/io/OutputStream;J)I
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const-wide v0, -0x100000000L

    and-long v2, p1, v0

    .line 108
    .local v2, "high":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " cannot be represented by 4 bytes."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 112
    const/4 v0, 0x4

    return v0
.end method

.method public static writeUShortToStream(Ljava/io/OutputStream;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    .line 90
    .local v0, "high":I
    if-nez v0, :cond_0

    .line 93
    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot be represented by 2 bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
