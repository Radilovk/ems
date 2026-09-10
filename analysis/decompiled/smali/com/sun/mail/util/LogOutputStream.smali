.class public Lcom/sun/mail/util/LogOutputStream;
.super Ljava/io/OutputStream;
.source "LogOutputStream.java"


# instance fields
.field private buf:[B

.field private lastb:I

.field protected level:Ljava/util/logging/Level;

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/util/MailLogger;)V
    .locals 1
    .param p1, "logger"    # Lcom/sun/mail/util/MailLogger;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    .line 55
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 64
    iput-object p1, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    .line 65
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    .line 66
    return-void
.end method

.method private expandCapacity(I)V
    .locals 4
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 145
    .local v0, "nb":[B
    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    goto :goto_0
.end method

.method private logBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 134
    .local v0, "msg":Ljava/lang/String;
    iput v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 135
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/LogOutputStream;->log(Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xd

    .line 69
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    if-ne p1, v2, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 81
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    goto :goto_0

    .line 74
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 75
    iget v0, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v0, v2, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 79
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_1
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
    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/LogOutputStream;->write([BII)V

    .line 86
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    .line 89
    move v1, p2

    .line 91
    .local v1, "start":I
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v3, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    add-int/2addr p3, p2

    .line 94
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lt v0, p3, :cond_2

    .line 112
    sub-int v2, p3, v1

    if-lez v2, :cond_0

    .line 113
    sub-int v2, p3, v1

    invoke-direct {p0, v2}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 114
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v4, p3, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, p3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    goto :goto_0

    .line 95
    :cond_2
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_4

    .line 96
    sub-int v2, v0, v1

    invoke-direct {p0, v2}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 97
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v4, v0, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 100
    add-int/lit8 v1, v0, 0x1

    .line 110
    :cond_3
    :goto_2
    aget-byte v2, p1, v0

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_4
    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 102
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v2, v5, :cond_5

    .line 103
    sub-int v2, v0, v1

    invoke-direct {p0, v2}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 104
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v4, v0, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 106
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 108
    :cond_5
    add-int/lit8 v1, v0, 0x1

    goto :goto_2
.end method
