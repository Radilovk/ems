.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# static fields
.field private static MAX_INCR:I


# instance fields
.field private lineBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/high16 v0, 0x100000

    sput v0, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 65
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    const/16 v11, 0xd

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 83
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 85
    .local v0, "buf":[C
    if-nez v0, :cond_0

    .line 86
    const/16 v7, 0x80

    new-array v0, v7, [C

    .end local v0    # "buf":[C
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 89
    .restart local v0    # "buf":[C
    :cond_0
    array-length v5, v0

    .line 90
    .local v5, "room":I
    const/4 v3, 0x0

    .line 92
    .local v3, "offset":I
    :goto_0
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c1":I
    if-ne v1, v9, :cond_2

    .line 145
    :cond_1
    :goto_1
    if-ne v1, v9, :cond_b

    if-nez v3, :cond_b

    .line 146
    const/4 v7, 0x0

    .line 148
    :goto_2
    return-object v7

    .line 93
    :cond_2
    if-eq v1, v13, :cond_1

    .line 95
    if-ne v1, v11, :cond_8

    .line 97
    const/4 v6, 0x0

    .line 98
    .local v6, "twoCRs":Z
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7, v12}, Ljava/io/InputStream;->mark(I)V

    .line 100
    :cond_3
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 101
    .local v2, "c2":I
    if-ne v2, v11, :cond_4

    .line 102
    const/4 v6, 0x1

    .line 103
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 105
    :cond_4
    if-eq v2, v13, :cond_1

    .line 117
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 118
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    instance-of v7, v7, Ljava/io/PushbackInputStream;

    if-nez v7, :cond_6

    .line 121
    new-instance v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 122
    :cond_6
    if-eq v2, v9, :cond_7

    .line 123
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    invoke-virtual {v7, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 124
    :cond_7
    if-eqz v6, :cond_1

    .line 125
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    invoke-virtual {v7, v11}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1

    .line 133
    .end local v2    # "c2":I
    .end local v6    # "twoCRs":Z
    :cond_8
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_9

    .line 134
    array-length v7, v0

    sget v8, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    if-ge v7, v8, :cond_a

    .line 135
    array-length v7, v0

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [C

    .line 138
    :goto_3
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v5, v7, -0x1

    .line 139
    iget-object v7, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v7, v10, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 142
    :cond_9
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    int-to-char v7, v1

    aput-char v7, v0, v3

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 137
    :cond_a
    array-length v7, v0

    sget v8, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    add-int/2addr v7, v8

    new-array v0, v7, [C

    goto :goto_3

    .line 148
    :cond_b
    invoke-static {v0, v10, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method
