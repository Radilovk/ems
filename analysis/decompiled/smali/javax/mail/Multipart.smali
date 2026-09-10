.class public abstract Ljavax/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected parent:Ljavax/mail/Part;

.field protected parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 78
    const-string v0, "multipart/mixed"

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 219
    :cond_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 242
    :cond_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 243
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Part;
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBodyPart(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "No such BodyPart"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 199
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    .line 200
    .local v0, "part":Ljavax/mail/BodyPart;
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 3
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "No such body part"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 177
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V
    .locals 3
    .param p1, "mp"    # Ljavax/mail/MultipartDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 112
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 113
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    invoke-interface {p1, v1}, Ljavax/mail/MultipartDataSource;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setParent(Ljavax/mail/Part;)V
    .locals 1
    .param p1, "parent"    # Ljavax/mail/Part;

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
