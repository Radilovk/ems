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

    .prologue
    .line 177
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    .line 180
    return-void

    .line 177
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

    .prologue
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

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
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

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 5
    .param p1, "c"    # I
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x3d

    .line 183
    if-eqz p2, :cond_1

    .line 184
    iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 186
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 187
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

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

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    and-int/lit16 p1, p1, 0xff

    .line 114
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    if-eqz v0, :cond_1

    .line 115
    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_2

    .line 117
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 120
    :goto_0
    iput-boolean v1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 123
    :cond_1
    if-ne p1, v5, :cond_3

    .line 124
    iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 125
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    .line 144
    :goto_1
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_0

    .line 127
    :cond_3
    if-ne p1, v4, :cond_5

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz v0, :cond_4

    .line 142
    :goto_2
    iput-boolean v1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    goto :goto_1

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_2

    .line 134
    :cond_5
    if-ne p1, v3, :cond_6

    .line 135
    iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_2

    .line 136
    :cond_6
    if-lt p1, v3, :cond_7

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_7

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_8

    .line 138
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_2

    .line 140
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_2
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

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

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 96
    return-void

    .line 95
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
