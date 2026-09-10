.class public final Lorg/apache/poi/util/LittleEndianOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LittleEndianOutputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianOutput;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 30
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    return-void
.end method


# virtual methods
.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 84
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 93
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "v"    # I

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    nop

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "v"    # D

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeLong(J)V

    .line 45
    return-void
.end method

.method public writeInt(I)V
    .locals 6
    .param p1, "v"    # I

    .line 49
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 50
    .local v0, "b3":I
    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 51
    .local v1, "b2":I
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 52
    .local v2, "b1":I
    ushr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    .line 54
    .local v3, "b0":I
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 55
    iget-object v4, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 56
    iget-object v4, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v4, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "v"    # J

    .line 65
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 66
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 67
    return-void
.end method

.method public writeShort(I)V
    .locals 4
    .param p1, "v"    # I

    .line 71
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 72
    .local v0, "b1":I
    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    .line 74
    .local v1, "b0":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 75
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
