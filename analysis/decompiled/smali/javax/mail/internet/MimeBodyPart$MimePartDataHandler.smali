.class Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
.super Ljavax/activation/DataHandler;
.source "MimeBodyPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MimePartDataHandler"
.end annotation


# instance fields
.field part:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .prologue
    .line 1648
    new-instance v0, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {p0, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 1649
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    .line 1650
    return-void
.end method


# virtual methods
.method getContentStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1653
    const/4 v0, 0x0

    .line 1655
    .local v0, "is":Ljava/io/InputStream;
    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    instance-of v3, v3, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v3, :cond_1

    .line 1656
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    .line 1657
    .local v1, "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1662
    .end local v1    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :cond_0
    :goto_0
    return-object v0

    .line 1658
    :cond_1
    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    instance-of v3, v3, Ljavax/mail/internet/MimeMessage;

    if-eqz v3, :cond_0

    .line 1659
    iget-object v2, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    check-cast v2, Ljavax/mail/internet/MimeMessage;

    .line 1660
    .local v2, "msg":Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method getPart()Ljavax/mail/internet/MimePart;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    return-object v0
.end method
