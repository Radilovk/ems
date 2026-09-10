.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 178
    nop

    .line 179
    nop

    .line 177
    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    .line 180
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 80
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 57
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 58
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 71
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    .line 72
    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 172
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 174
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

    .line 166
    invoke-virtual {p0}, Lcom/sun/mail/util/QPEncoderStream;->flush()V

    .line 167
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 168
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    if-eqz v0, :cond_0

    .line 153
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 157
    return-void
.end method

.method protected output(IZ)V
    .locals 6
    .param p1, "c"    # I
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    .line 184
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_0

    .line 185
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 186
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 187
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 188
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_2

    .line 195
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 202
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    and-int/lit16 p1, p1, 0xff

    .line 114
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 115
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 120
    :goto_1
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 123
    :cond_2
    if-ne p1, v2, :cond_3

    .line 124
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 125
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    .line 126
    goto :goto_4

    .line 127
    :cond_3
    if-ne p1, v1, :cond_5

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz v0, :cond_4

    .line 131
    goto :goto_3

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    .line 134
    goto :goto_3

    :cond_5
    if-ne p1, v4, :cond_6

    .line 135
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 136
    goto :goto_3

    :cond_6
    if-lt p1, v4, :cond_8

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_8

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 140
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_3

    .line 138
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 142
    :goto_3
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 144
    :goto_4
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

    .line 105
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

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 96
    .end local v0    # "i":I
    return-void

    .line 95
    .restart local v0    # "i":I
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
