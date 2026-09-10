.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    .line 76
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 142
    .local v0, "mex":Ljavax/mail/MessagingException;
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v4, v4, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v4}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    .line 106
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    iget-object v5, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v5}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeBodyPart;->restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 108
    invoke-static {v2, v0}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 110
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v2

    .line 100
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v4, v4, Ljavax/mail/internet/MimeMessage;

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v4, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v4}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 103
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_2
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Unknown part"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    new-instance v4, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v5

    .line 113
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-direct {v4, v5, v6}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 114
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    :catch_1
    move-exception v3

    .line 115
    .local v3, "mex":Ljavax/mail/MessagingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    .line 168
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 158
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Writing not supported"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
