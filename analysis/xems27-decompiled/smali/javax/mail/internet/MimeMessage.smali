.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;
.source "MimeMessage.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeMessage$RecipientType;
    }
.end annotation


# static fields
.field private static final answeredFlag:Ljavax/mail/Flags;

.field private static final mailDateFormat:Ljavax/mail/internet/MailDateFormat;


# instance fields
.field protected cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 1758
    new-instance v0, Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 2
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgnum"    # I

    .line 269
    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 270
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 271
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 272
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 273
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 291
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 292
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 293
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p3, "content"    # [B
    .param p4, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 310
    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 311
    iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 312
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;

    .line 191
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 192
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 193
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 194
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 195
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 214
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 215
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 216
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 217
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 218
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 5
    .param p1, "source"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 233
    iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 234
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 235
    if-nez v1, :cond_0

    .line 236
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v1

    .line 239
    .local v1, "size":I
    if-lez v1, :cond_1

    .line 240
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 242
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    iget-boolean v3, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v3, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 245
    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 246
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 248
    new-instance v3, Ljavax/mail/util/SharedByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    .line 247
    nop

    .line 249
    .local v3, "bis":Ljavax/mail/util/SharedByteArrayInputStream;
    invoke-virtual {p0, v3}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 250
    invoke-virtual {v3}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    .line 251
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v3    # "bis":Ljavax/mail/util/SharedByteArrayInputStream;
    nop

    .line 257
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    .line 255
    nop

    .line 254
    const-string v4, "IOException while copying message"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 748
    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 750
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 752
    .local v0, "a":[Ljavax/mail/Address;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljavax/mail/Address;

    .line 756
    .local v1, "anew":[Ljavax/mail/Address;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v2, v0

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 753
    .end local v1    # "anew":[Ljavax/mail/Address;
    :cond_2
    :goto_0
    move-object v1, p2

    .line 759
    .restart local v1    # "anew":[Ljavax/mail/Address;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 761
    return-void

    .line 762
    :cond_3
    invoke-virtual {p0, p1, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void

    .line 749
    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v1    # "anew":[Ljavax/mail/Address;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method private eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .locals 7
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "addrs"    # [Ljavax/mail/Address;

    .line 1766
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1767
    return-object v0

    .line 1768
    :cond_0
    const/4 v1, 0x0

    .line 1769
    .local v1, "gone":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_5

    .line 1785
    .end local v2    # "i":I
    if-eqz v1, :cond_4

    .line 1789
    instance-of v0, p2, [Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_1

    .line 1790
    array-length v0, p2

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .local v0, "a":[Ljavax/mail/Address;
    goto :goto_1

    .line 1792
    .end local v0    # "a":[Ljavax/mail/Address;
    :cond_1
    array-length v0, p2

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/Address;

    .line 1793
    .restart local v0    # "a":[Ljavax/mail/Address;
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, p2

    if-lt v2, v4, :cond_2

    .line 1796
    .end local v2    # "i":I
    .end local v3    # "j":I
    move-object p2, v0

    goto :goto_3

    .line 1794
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_2
    aget-object v4, p2, v2

    if-eqz v4, :cond_3

    .line 1795
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-object v5, p2, v2

    aput-object v5, v0, v3

    move v3, v4

    .line 1793
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1798
    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_4
    :goto_3
    return-object p2

    .line 1770
    .restart local v2    # "i":I
    :cond_5
    const/4 v3, 0x0

    .line 1772
    .local v3, "found":Z
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_6

    goto :goto_5

    .line 1773
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/internet/InternetAddress;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1775
    const/4 v3, 0x1

    .line 1776
    add-int/lit8 v1, v1, 0x1

    .line 1777
    aput-object v0, p2, v2

    .line 1778
    nop

    .line 1781
    .end local v4    # "j":I
    :goto_5
    if-nez v3, :cond_7

    .line 1782
    aget-object v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1769
    .end local v3    # "found":Z
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1772
    .restart local v3    # "found":Z
    .restart local v4    # "j":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 732
    const-string v0, ","

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1311
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_0

    .line 1312
    const-string v0, "To"

    .local v0, "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1313
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 1314
    const-string v0, "Cc"

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1315
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 1316
    const-string v0, "Bcc"

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1317
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_3

    .line 1318
    const-string v0, "Newsgroups"

    .line 1321
    .restart local v0    # "headerName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1320
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Invalid Recipient Type"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initStrict()V
    .locals 3

    .line 319
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 321
    const/4 v1, 0x1

    .line 320
    const-string v2, "mail.mime.address.strict"

    invoke-static {v0, v2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 322
    :cond_0
    return-void
.end method

.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void
.end method


# virtual methods
.method public addFrom([Ljavax/mail/Address;)V
    .locals 1
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 459
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 460
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1959
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2028
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 2029
    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 689
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_0

    .line 690
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    goto :goto_0

    .line 693
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 694
    :cond_1
    :goto_0
    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 664
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_0

    .line 665
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 667
    const-string v1, "Newsgroups"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 669
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 670
    :cond_1
    :goto_0
    return-void
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2221
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2238
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    return-object v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 580
    invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    .line 581
    .local v0, "all":[Ljavax/mail/Address;
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 583
    .local v1, "ng":[Ljavax/mail/Address;
    if-nez v1, :cond_0

    .line 584
    return-object v0

    .line 585
    :cond_0
    if-nez v0, :cond_1

    .line 586
    return-object v1

    .line 588
    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljavax/mail/Address;

    .line 589
    .local v2, "addresses":[Ljavax/mail/Address;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    return-object v2
.end method

.method public getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1450
    return-object v0

    .line 1453
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .local v0, "c":Ljava/lang/Object;
    nop

    .line 1459
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_3

    .line 1460
    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_3

    .line 1461
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 1462
    :cond_2
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1467
    instance-of v1, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v1, :cond_3

    .line 1468
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 1470
    :cond_3
    return-object v0

    .line 1456
    .end local v0    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1454
    .end local v0    # "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    :catch_1
    move-exception v0

    .line 1455
    .local v0, "fex":Lcom/sun/mail/util/FolderClosedIOException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1079
    const-string v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1222
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1113
    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1362
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1363
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    .line 1364
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 1366
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeMessage content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 989
    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    if-nez v0, :cond_0

    .line 992
    const-string v1, "text/plain"

    return-object v1

    .line 993
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1420
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 1421
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    invoke-direct {v0, p0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;-><init>(Ljavax/mail/internet/MimePart;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1422
    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1146
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1033
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1064
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1280
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2079
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2079
    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 372
    const-string v0, "From"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 373
    .local v0, "a":[Ljavax/mail/Address;
    if-nez v0, :cond_0

    .line 374
    const-string v1, "Sender"

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 376
    :cond_0
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1918
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1901
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 972
    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1256
    const-string v0, "Message-ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 561
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    .line 562
    const-string v0, "Newsgroups"

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object v1

    :goto_0
    return-object v1

    .line 565
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 708
    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 709
    .local v0, "a":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 710
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 711
    :cond_1
    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 476
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 477
    .local v0, "a":[Ljavax/mail/Address;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 478
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 871
    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 874
    :try_start_0
    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :try_start_1
    sget-object v3, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v3, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 874
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "s":Ljava/lang/String;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 877
    .restart local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 878
    .local v2, "pex":Ljava/text/ParseException;
    return-object v1

    .line 882
    .end local v2    # "pex":Ljava/text/ParseException;
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_0

    .line 943
    array-length v0, v0

    return v0

    .line 944
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 946
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 950
    return v0

    .line 951
    .end local v0    # "size":I
    :catch_0
    move-exception v0

    .line 955
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 781
    const-string v0, "Subject"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "rawvalue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 784
    return-object v1

    .line 787
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1015
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2102
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2102
    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    .end local p1    # "flag":Ljavax/mail/Flags$Flag;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 337
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    .line 338
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 339
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 344
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_1

    .line 345
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 346
    .local v0, "sis":Ljavax/mail/internet/SharedInputStream;
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    .line 347
    .end local v0    # "sis":Ljavax/mail/internet/SharedInputStream;
    goto :goto_0

    .line 349
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    nop

    .line 355
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 356
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ioex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1972
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 1973
    return-void
.end method

.method public reply(Z)Ljavax/mail/Message;
    .locals 1
    .param p1, "replyToAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1621
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->reply(ZZ)Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public reply(ZZ)Ljavax/mail/Message;
    .locals 12
    .param p1, "replyToAll"    # Z
    .param p2, "setAnswered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1660
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    .line 1668
    .local v0, "reply":Ljavax/mail/internet/MimeMessage;
    const-string v1, "Subject"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1669
    .local v9, "subject":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1670
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v6, "Re: "

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1671
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Re: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1672
    :cond_0
    invoke-virtual {v0, v1, v9}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v1

    .line 1675
    .local v1, "a":[Ljavax/mail/Address;
    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1676
    if-eqz p1, :cond_9

    .line 1677
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1679
    .local v3, "v":Ljava/util/Vector;
    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v4}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    .line 1680
    .local v4, "me":Ljavax/mail/internet/InternetAddress;
    if-eqz v4, :cond_2

    .line 1681
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1683
    :cond_2
    const/4 v5, 0x0

    .line 1684
    .local v5, "alternates":Ljava/lang/String;
    iget-object v6, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v6, :cond_3

    .line 1685
    iget-object v6, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v7, "mail.alternates"

    invoke-virtual {v6, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1686
    :cond_3
    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 1687
    nop

    .line 1688
    invoke-static {v5, v6}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v7

    .line 1687
    invoke-direct {p0, v3, v7}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1690
    :cond_4
    const/4 v7, 0x0

    .line 1691
    .local v7, "replyallccStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1692
    .local v8, "replyallcc":Z
    iget-object v10, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v10, :cond_5

    .line 1693
    iget-object v10, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 1694
    nop

    .line 1693
    const-string v11, "mail.replyallcc"

    invoke-static {v10, v11, v6}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v8

    .line 1696
    :cond_5
    invoke-direct {p0, v3, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1697
    sget-object v6, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1698
    invoke-direct {p0, v3, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1699
    if-eqz v1, :cond_7

    array-length v6, v1

    if-lez v6, :cond_7

    .line 1700
    if-eqz v8, :cond_6

    .line 1701
    sget-object v6, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v6, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_0

    .line 1703
    :cond_6
    sget-object v6, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v6, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1705
    :cond_7
    :goto_0
    sget-object v6, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1706
    invoke-direct {p0, v3, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1707
    if-eqz v1, :cond_8

    array-length v6, v1

    if-lez v6, :cond_8

    .line 1708
    sget-object v6, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v6, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1710
    :cond_8
    sget-object v6, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1711
    if-eqz v1, :cond_9

    array-length v6, v1

    if-lez v6, :cond_9

    .line 1712
    sget-object v6, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {v0, v6, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1715
    .end local v3    # "v":Ljava/util/Vector;
    .end local v4    # "me":Ljavax/mail/internet/InternetAddress;
    .end local v5    # "alternates":Ljava/lang/String;
    .end local v7    # "replyallccStr":Ljava/lang/String;
    .end local v8    # "replyallcc":Z
    :cond_9
    const-string v3, "Message-Id"

    invoke-virtual {p0, v3, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1716
    .local v2, "msgId":Ljava/lang/String;
    const-string v3, "In-Reply-To"

    if-eqz v2, :cond_a

    .line 1717
    invoke-virtual {v0, v3, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    :cond_a
    const-string v4, "References"

    const-string v5, " "

    invoke-virtual {p0, v4, v5}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1734
    .local v6, "refs":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 1736
    invoke-virtual {p0, v3, v5}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1738
    :cond_b
    if-eqz v2, :cond_d

    .line 1739
    if-eqz v6, :cond_c

    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1742
    :cond_c
    move-object v6, v2

    .line 1744
    :cond_d
    :goto_1
    if-eqz v6, :cond_e

    .line 1745
    const/16 v3, 0xc

    invoke-static {v3, v6}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    :cond_e
    if-eqz p2, :cond_f

    .line 1749
    :try_start_0
    sget-object v3, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1750
    :catch_0
    move-exception v3

    .line 1754
    :cond_f
    :goto_2
    return-object v0
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 2150
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 2151
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V

    .line 2152
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1512
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 1513
    move-object v0, p1

    check-cast v0, Ljavax/mail/Multipart;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    goto :goto_0

    .line 1515
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 1516
    :goto_0
    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1587
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 1588
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 1589
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1095
    const-string v0, "Content-ID"

    if-nez p1, :cond_0

    .line 1096
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1238
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1126
    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method

.method public declared-synchronized setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1486
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1488
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    monitor-exit p0

    return-void

    .line 1485
    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    .end local p1    # "dh":Ljavax/activation/DataHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1206
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1048
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1304
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2118
    if-eqz p2, :cond_0

    .line 2119
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V

    goto :goto_0

    .line 2121
    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    :goto_0
    monitor-exit p0

    return-void

    .line 2117
    .end local p1    # "flag":Ljavax/mail/Flags;
    .end local p2    # "set":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFrom()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 432
    const-string v0, "No From address"

    const/4 v1, 0x0

    .line 434
    .local v1, "me":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 435
    nop

    .line 440
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 444
    return-void

    .line 443
    :cond_0
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :catch_0
    move-exception v2

    .line 438
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-direct {v3, v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 414
    const-string v0, "From"

    if-nez p1, :cond_0

    .line 415
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 418
    :goto_0
    return-void
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 393
    const-string v0, "From"

    if-nez p1, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 640
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 641
    const-string v0, "Newsgroups"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    goto :goto_2

    .line 642
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_2

    .line 646
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    .line 647
    if-nez p2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 646
    :goto_1
    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 648
    :goto_2
    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 611
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 612
    const-string v0, "Newsgroups"

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    goto :goto_1

    .line 613
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 618
    :goto_1
    return-void
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 1
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 726
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 727
    return-void
.end method

.method public setSender(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 497
    const-string v0, "Sender"

    if-nez p1, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 3
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 898
    if-nez p1, :cond_0

    .line 899
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_0
    sget-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    .line 902
    :try_start_0
    const-string v1, "Date"

    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    monitor-exit v0

    .line 905
    :goto_0
    return-void

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 847
    const-string v0, "Subject"

    if-nez p1, :cond_0

    .line 848
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 849
    goto :goto_0

    .line 851
    :cond_0
    const/16 v1, 0x9

    .line 852
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    nop

    .line 857
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1554
    const-string v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1572
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    return-void
.end method

.method protected declared-synchronized updateHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2190
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 2191
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageID()V

    .line 2194
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2195
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 2196
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 2197
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 2198
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2200
    :try_start_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2201
    goto :goto_0

    .end local p0    # "this":Ljavax/mail/internet/MimeMessage;
    :catch_0
    move-exception v1

    .line 2203
    :cond_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2205
    :cond_1
    monitor-exit p0

    return-void

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateMessageID()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2163
    nop

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v1}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1845
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 1848
    :cond_0
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-eqz v0, :cond_1

    .line 1849
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1850
    return-void

    .line 1855
    :cond_1
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1856
    .local v0, "hdrLines":Ljava/util/Enumeration;
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1857
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1861
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1864
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v2, :cond_5

    .line 1867
    const/4 v2, 0x0

    .line 1868
    .local v2, "is":Ljava/io/InputStream;
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 1870
    .local v3, "buf":[B
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 1873
    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    .local v5, "len":I
    if-gtz v4, :cond_3

    .line 1875
    .end local v5    # "len":I
    nop

    .line 1876
    if-eqz v2, :cond_2

    .line 1877
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1878
    :cond_2
    nop

    .line 1880
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "buf":[B
    goto :goto_2

    .line 1874
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "buf":[B
    .restart local v5    # "len":I
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1875
    .end local v5    # "len":I
    :catchall_0
    move-exception v4

    .line 1876
    if-eqz v2, :cond_4

    .line 1877
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1878
    :cond_4
    const/4 v3, 0x0

    .line 1879
    throw v4

    .line 1881
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "buf":[B
    :cond_5
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1883
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1884
    return-void

    .line 1858
    :cond_6
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0
.end method
