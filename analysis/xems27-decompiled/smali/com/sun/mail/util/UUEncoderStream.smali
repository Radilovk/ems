.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private mode:I

.field private name:Ljava/lang/String;

.field private wrotePrefix:Z

.field private wroteSuffix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 68
    const-string v0, "encoder.buf"

    const/16 v1, 0x1a4

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;

    .line 77
    const/16 v0, 0x1a4

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 87
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 57
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 58
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    .line 88
    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 90
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    .line 91
    return-void
.end method

.method private encode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    .line 184
    .local v0, "i":I
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 186
    nop

    :goto_0
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lt v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 211
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v0

    .line 188
    .local v0, "a":B
    if-ge v3, v1, :cond_2

    .line 189
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, v2, v3

    .line 190
    .local v3, "b":B
    if-ge v4, v1, :cond_1

    .line 191
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .local v1, "i":I
    aget-byte v2, v2, v4

    .local v2, "c":B
    goto :goto_1

    .line 193
    .end local v1    # "i":I
    .end local v2    # "c":B
    .restart local v4    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 194
    .restart local v2    # "c":B
    move v1, v4

    goto :goto_1

    .line 196
    .end local v2    # "c":B
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_2
    const/4 v1, 0x1

    .line 197
    .local v1, "b":B
    const/4 v2, 0x1

    move v10, v3

    move v3, v1

    move v1, v10

    .line 200
    .local v1, "i":I
    .restart local v2    # "c":B
    .local v3, "b":B
    :goto_1
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 201
    .local v4, "c1":I
    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    .line 202
    .local v5, "c2":I
    shl-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    .line 203
    .local v6, "c3":I
    and-int/lit8 v7, v2, 0x3f

    .line 204
    .local v7, "c4":I
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v4, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 205
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v5, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 206
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v6, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 207
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v7, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    move v0, v1

    goto :goto_0
.end method

.method private writePrefix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 150
    .local v0, "ps":Ljava/io/PrintStream;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "begin %o %s%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 151
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 152
    iput-boolean v3, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 154
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method private writeSuffix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const-string v3, "us-ascii"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 163
    .local v0, "ps":Ljava/io/PrintStream;
    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    .line 167
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    .line 140
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 141
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 131
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    .line 135
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 136
    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 102
    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 104
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 121
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 123
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 126
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    .line 113
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 109
    .end local v0    # "i":I
    return-void

    .line 108
    .restart local v0    # "i":I
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
