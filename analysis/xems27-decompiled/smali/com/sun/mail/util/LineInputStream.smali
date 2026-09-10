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

    .line 61
    const/high16 v0, 0x100000

    sput v0, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 85
    .local v0, "buf":[C
    if-nez v0, :cond_0

    .line 86
    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move-object v0, v1

    .line 89
    :cond_0
    array-length v1, v0

    .line 90
    .local v1, "room":I
    const/4 v2, 0x0

    .line 92
    .local v2, "offset":I
    nop

    :goto_0
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "c1":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    const/16 v3, 0xa

    if-ne v4, v3, :cond_2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 v7, 0x2

    const/16 v8, 0xd

    if-ne v4, v8, :cond_a

    .line 97
    const/4 v9, 0x0

    .line 98
    .local v9, "twoCRs":Z
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 99
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v7}, Ljava/io/InputStream;->mark(I)V

    .line 100
    :cond_3
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 101
    .local v10, "c2":I
    if-ne v10, v8, :cond_4

    .line 102
    const/4 v9, 0x1

    .line 103
    iget-object v11, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 105
    :cond_4
    if-eq v10, v3, :cond_8

    .line 117
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    instance-of v3, v3, Ljava/io/PushbackInputStream;

    if-nez v3, :cond_6

    .line 121
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v11, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v11, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 122
    :cond_6
    if-eq v10, v6, :cond_7

    .line 123
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v10}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 124
    :cond_7
    if-eqz v9, :cond_8

    .line 125
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v8}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 145
    .end local v9    # "twoCRs":Z
    .end local v10    # "c2":I
    :cond_8
    :goto_1
    if-ne v4, v6, :cond_9

    if-nez v2, :cond_9

    .line 146
    const/4 v3, 0x0

    return-object v3

    .line 148
    :cond_9
    invoke-static {v0, v5, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 133
    :cond_a
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_c

    .line 134
    array-length v3, v0

    sget v6, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    if-ge v3, v6, :cond_b

    .line 135
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    goto :goto_2

    .line 137
    :cond_b
    array-length v3, v0

    add-int/2addr v3, v6

    new-array v0, v3, [C

    .line 138
    :goto_2
    array-length v3, v0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 139
    .end local v1    # "room":I
    .local v3, "room":I
    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move v1, v3

    .line 142
    .end local v3    # "room":I
    .restart local v1    # "room":I
    :cond_c
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    int-to-char v5, v4

    aput-char v5, v0, v2

    move v2, v3

    goto/16 :goto_0
.end method
