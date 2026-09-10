.class public Lcom/sun/mail/imap/IMAPMultipartDataSource;
.super Ljavax/mail/internet/MimePartDataSource;
.source "IMAPMultipartDataSource.java"

# interfaces
.implements Ljavax/mail/MultipartDataSource;


# instance fields
.field private parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .locals 6
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .param p2, "bs"    # [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p3, "sectionId"    # Ljava/lang/String;
    .param p4, "msg"    # Lcom/sun/mail/imap/IMAPMessage;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    .line 68
    new-instance v1, Ljava/util/Vector;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 77
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    .line 71
    new-instance v3, Lcom/sun/mail/imap/IMAPBodyPart;

    aget-object v4, p2, v0

    .line 72
    if-nez p3, :cond_1

    .line 73
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_1
    invoke-direct {v3, v4, v1, p4}, Lcom/sun/mail/imap/IMAPBodyPart;-><init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    .line 70
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
