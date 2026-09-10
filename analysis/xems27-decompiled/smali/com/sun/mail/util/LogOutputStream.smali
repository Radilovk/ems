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

    .line 143
    nop

    :goto_0
    iget v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    .line 148
    return-void

    .line 144
    :cond_0
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 145
    .local v1, "nb":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    goto :goto_0
.end method

.method private logBuf()V
    .locals 4

    .line 133
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    const/4 v3, 0x0

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

    .line 69
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 74
    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 75
    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v1, v0, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 79
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 81
    :cond_3
    :goto_0
    iput p1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    .line 82
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

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/LogOutputStream;->write([BII)V

    .line 86
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    move v0, p2

    .line 91
    .local v0, "start":I
    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    return-void

    .line 93
    :cond_0
    add-int/2addr p3, p2

    .line 94
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_2

    .line 112
    .end local v1    # "i":I
    sub-int v1, p3, v0

    if-lez v1, :cond_1

    .line 113
    sub-int v1, p3, v0

    invoke-direct {p0, v1}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 114
    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, p3, v0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v2, p3, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 117
    :cond_1
    return-void

    .line 95
    .restart local v1    # "i":I
    :cond_2
    aget-byte v2, p1, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 96
    sub-int v2, v1, v0

    invoke-direct {p0, v2}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 97
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v4, v1, v0

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, v1, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 100
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 101
    :cond_3
    aget-byte v2, p1, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5

    .line 102
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v2, v3, :cond_4

    .line 103
    sub-int v2, v1, v0

    invoke-direct {p0, v2}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 104
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v4, v1, v0

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    sub-int v3, v1, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 106
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    .line 108
    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 101
    :cond_5
    :goto_1
    nop

    .line 110
    :goto_2
    aget-byte v2, p1, v1

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
