.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxsize"    # I

    .prologue
    .line 3927
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3923
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 3928
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 3929
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    .line 3930
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 3977
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 3933
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v1, v2, 0x1

    .line 3934
    .local v1, "newsize":I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_0

    .line 3935
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_1

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_1

    .line 3936
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 3946
    :cond_0
    :goto_0
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 3947
    return-void

    .line 3937
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 3938
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 3939
    .local v0, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3940
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 3941
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0

    .line 3943
    .end local v0    # "newbuf":[B
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
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
    .line 3973
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    .line 3974
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 3950
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    .line 3951
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 3952
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3953
    :cond_1
    if-nez p3, :cond_2

    .line 3970
    :goto_0
    return-void

    .line 3956
    :cond_2
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int v1, v2, p3

    .line 3957
    .local v1, "newsize":I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_3

    .line 3958
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_4

    .line 3959
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 3969
    :cond_3
    :goto_1
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    goto :goto_0

    .line 3960
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_5

    .line 3961
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 3962
    .local v0, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3963
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 3964
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3966
    .end local v0    # "newbuf":[B
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
