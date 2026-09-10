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

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    .line 147
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 270
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 271
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

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

    .prologue
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

    .prologue
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
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 192
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

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

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 214
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 215
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 216
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 217
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 218
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 7
    .param p1, "source"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    iget-object v4, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v4}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 147
    iput-boolean v5, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 160
    iput-boolean v5, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 180
    iput-boolean v6, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 234
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    iput-object v4, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 235
    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    if-nez v4, :cond_0

    .line 236
    new-instance v4, Ljavax/mail/Flags;

    invoke-direct {v4}, Ljavax/mail/Flags;-><init>()V

    iput-object v4, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v3

    .line 239
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 240
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 244
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    iget-boolean v4, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v4, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 245
    invoke-virtual {p1, v1}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 248
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    .line 249
    .local v0, "bis":Ljavax/mail/util/SharedByteArrayInputStream;
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 250
    invoke-virtual {v0}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    .line 251
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 242
    .end local v0    # "bis":Ljavax/mail/util/SharedByteArrayInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    .line 254
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IOException while copying message"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 748
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 752
    .local v0, "a":[Ljavax/mail/Address;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    .line 753
    :cond_2
    move-object v1, p2

    .line 759
    .local v1, "anew":[Ljavax/mail/Address;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p0, p1, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    .end local v1    # "anew":[Ljavax/mail/Address;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    array-length v3, v0

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v1, v3, [Ljavax/mail/Address;

    .line 756
    .restart local v1    # "anew":[Ljavax/mail/Address;
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v3, v0

    array-length v4, p2

    invoke-static {p2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .locals 10
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "addrs"    # [Ljavax/mail/Address;

    .prologue
    const/4 v8, 0x0

    .line 1766
    if-nez p2, :cond_0

    move-object v1, p2

    .end local p2    # "addrs":[Ljavax/mail/Address;
    .local v1, "addrs":[Ljavax/mail/Address;
    move-object v7, v8

    .line 1798
    :goto_0
    return-object v7

    .line 1768
    .end local v1    # "addrs":[Ljavax/mail/Address;
    .restart local p2    # "addrs":[Ljavax/mail/Address;
    :cond_0
    const/4 v3, 0x0

    .line 1769
    .local v3, "gone":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p2

    if-lt v4, v7, :cond_2

    .line 1785
    if-eqz v3, :cond_1

    .line 1789
    instance-of v7, p2, [Ljavax/mail/internet/InternetAddress;

    if-eqz v7, :cond_6

    .line 1790
    array-length v7, p2

    sub-int/2addr v7, v3

    new-array v0, v7, [Ljavax/mail/internet/InternetAddress;

    .line 1793
    .local v0, "a":[Ljavax/mail/Address;
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v7, p2

    if-lt v4, v7, :cond_7

    .line 1796
    move-object p2, v0

    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v5    # "j":I
    :cond_1
    move-object v1, p2

    .end local p2    # "addrs":[Ljavax/mail/Address;
    .restart local v1    # "addrs":[Ljavax/mail/Address;
    move-object v7, p2

    .line 1798
    goto :goto_0

    .line 1770
    .end local v1    # "addrs":[Ljavax/mail/Address;
    .restart local p2    # "addrs":[Ljavax/mail/Address;
    :cond_2
    const/4 v2, 0x0

    .line 1772
    .local v2, "found":Z
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_4

    .line 1781
    :goto_5
    if-nez v2, :cond_3

    .line 1782
    aget-object v7, p2, v4

    invoke-virtual {p1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1769
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1773
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/mail/internet/InternetAddress;

    aget-object v9, p2, v4

    invoke-virtual {v7, v9}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1775
    const/4 v2, 0x1

    .line 1776
    add-int/lit8 v3, v3, 0x1

    .line 1777
    aput-object v8, p2, v4

    goto :goto_5

    .line 1772
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1792
    .end local v2    # "found":Z
    .end local v5    # "j":I
    :cond_6
    array-length v7, p2

    sub-int/2addr v7, v3

    new-array v0, v7, [Ljavax/mail/Address;

    .restart local v0    # "a":[Ljavax/mail/Address;
    goto :goto_2

    .line 1794
    .restart local v5    # "j":I
    :cond_7
    aget-object v7, p2, v4

    if-eqz v7, :cond_8

    .line 1795
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    aget-object v7, p2, v4

    aput-object v7, v0, v5

    move v5, v6

    .line 1793
    .end local v6    # "j":I
    .restart local v5    # "j":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 732
    const-string v1, ","

    invoke-virtual {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    goto :goto_0
.end method

.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1311
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_0

    .line 1312
    const-string v0, "To"

    .line 1321
    .local v0, "headerName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1313
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_1

    .line 1314
    const-string v0, "Cc"

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1315
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_2

    .line 1316
    const-string v0, "Bcc"

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1317
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_2
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v1, :cond_3

    .line 1318
    const-string v0, "Newsgroups"

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_0

    .line 1320
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Invalid Recipient Type"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initStrict()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 321
    const-string v1, "mail.mime.address.strict"

    const/4 v2, 0x1

    .line 320
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 322
    :cond_0
    return-void
.end method

.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {p2, v1}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 689
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    .line 690
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
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

    .prologue
    .line 664
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v1, :cond_1

    .line 665
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 667
    const-string v1, "Newsgroups"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v5, 0x0

    .line 580
    invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v1

    .line 581
    .local v1, "all":[Ljavax/mail/Address;
    sget-object v3, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v3}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v2

    .line 583
    .local v2, "ng":[Ljavax/mail/Address;
    if-nez v2, :cond_0

    .line 591
    .end local v1    # "all":[Ljavax/mail/Address;
    :goto_0
    return-object v1

    .line 585
    .restart local v1    # "all":[Ljavax/mail/Address;
    :cond_0
    if-nez v1, :cond_1

    move-object v1, v2

    .line 586
    goto :goto_0

    .line 588
    :cond_1
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [Ljavax/mail/Address;

    .line 589
    .local v0, "addresses":[Ljavax/mail/Address;
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    array-length v3, v1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 591
    goto :goto_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1450
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1470
    :cond_0
    :goto_0
    return-object v0

    .line 1453
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1459
    .local v0, "c":Ljava/lang/Object;
    sget-boolean v3, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v3, :cond_0

    .line 1460
    instance-of v3, v0, Ljavax/mail/Multipart;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljavax/mail/Message;

    if-eqz v3, :cond_0

    .line 1461
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v3, :cond_3

    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 1462
    :cond_3
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1467
    instance-of v3, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1468
    check-cast v3, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v3}, Ljavax/mail/internet/MimeMultipart;->parse()V

    goto :goto_0

    .line 1454
    .end local v0    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1455
    .local v1, "fex":Lcom/sun/mail/util/FolderClosedIOException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 1456
    .end local v1    # "fex":Lcom/sun/mail/util/FolderClosedIOException;
    :catch_1
    move-exception v2

    .line 1457
    .local v2, "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    new-instance v3, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v2}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
    .line 1113
    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 1364
    :goto_0
    return-object v0

    .line 1363
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    .line 1364
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 1366
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeMessage content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 989
    const-string v1, "Content-Type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    if-nez v0, :cond_0

    .line 992
    const-string v0, "text/plain"

    .line 993
    .end local v0    # "s":Ljava/lang/String;
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

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 1421
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    invoke-direct {v0, p0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;-><init>(Ljavax/mail/internet/MimePart;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1422
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1420
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 2079
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

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

    .prologue
    .line 372
    const-string v1, "From"

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 3
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 561
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v1, :cond_1

    .line 562
    const-string v1, "Newsgroups"

    const-string v2, ","

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 565
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 563
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object v1

    goto :goto_0

    .line 565
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v1

    goto :goto_0
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 708
    const-string v1, "Reply-To"

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

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

    .prologue
    .line 476
    const-string v1, "Sender"

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 477
    .local v0, "a":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 478
    :cond_0
    const/4 v1, 0x0

    .line 479
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 871
    const-string v2, "Date"

    invoke-virtual {p0, v2, v3}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 874
    :try_start_0
    sget-object v4, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :try_start_1
    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, v1}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    monitor-exit v4

    .line 882
    :goto_0
    return-object v2

    .line 874
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 877
    :catch_0
    move-exception v0

    .local v0, "pex":Ljava/text/ParseException;
    move-object v2, v3

    .line 878
    goto :goto_0

    .end local v0    # "pex":Ljava/text/ParseException;
    :cond_0
    move-object v2, v3

    .line 882
    goto :goto_0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    array-length v0, v1

    .line 955
    :cond_0
    :goto_0
    return v0

    .line 944
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 946
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 949
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 955
    .end local v0    # "size":I
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 951
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 781
    const-string v3, "Subject"

    invoke-virtual {p0, v3, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "rawvalue":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 789
    .end local v1    # "rawvalue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 787
    .restart local v1    # "rawvalue":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 2102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 337
    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_0

    .line 338
    instance-of v3, p1, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_0

    .line 339
    instance-of v3, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_0

    .line 340
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 342
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 344
    instance-of v3, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 345
    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    .line 346
    .local v2, "sis":Ljavax/mail/internet/SharedInputStream;
    invoke-interface {v2}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    .line 355
    .end local v2    # "sis":Ljavax/mail/internet/SharedInputStream;
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 356
    return-void

    .line 349
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ioex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IOException"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 1621
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->reply(ZZ)Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public reply(ZZ)Ljavax/mail/Message;
    .locals 15
    .param p1, "replyToAll"    # Z
    .param p2, "setAnswered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1660
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v11

    .line 1668
    .local v11, "reply":Ljavax/mail/internet/MimeMessage;
    const-string v1, "Subject"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, "subject":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1670
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Re: "

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Re: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    :cond_0
    const-string v1, "Subject"

    invoke-virtual {v11, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v6

    .line 1675
    .local v6, "a":[Ljavax/mail/Address;
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v11, v1, v6}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1676
    if-eqz p1, :cond_8

    .line 1677
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1679
    .local v14, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v8

    .line 1680
    .local v8, "me":Ljavax/mail/internet/InternetAddress;
    if-eqz v8, :cond_2

    .line 1681
    invoke-virtual {v14, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1683
    :cond_2
    const/4 v7, 0x0

    .line 1684
    .local v7, "alternates":Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v1, :cond_3

    .line 1685
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v2, "mail.alternates"

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1686
    :cond_3
    if-eqz v7, :cond_4

    .line 1688
    const/4 v1, 0x0

    invoke-static {v7, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 1687
    invoke-direct {p0, v14, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1690
    :cond_4
    const/4 v13, 0x0

    .line 1691
    .local v13, "replyallccStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1692
    .local v12, "replyallcc":Z
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v1, :cond_5

    .line 1693
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 1694
    const-string v2, "mail.replyallcc"

    const/4 v3, 0x0

    .line 1693
    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v12

    .line 1696
    :cond_5
    invoke-direct {p0, v14, v6}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1697
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v6

    .line 1698
    invoke-direct {p0, v14, v6}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v6

    .line 1699
    if-eqz v6, :cond_6

    array-length v1, v6

    if-lez v1, :cond_6

    .line 1700
    if-eqz v12, :cond_e

    .line 1701
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v11, v1, v6}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1705
    :cond_6
    :goto_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v6

    .line 1706
    invoke-direct {p0, v14, v6}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v6

    .line 1707
    if-eqz v6, :cond_7

    array-length v1, v6

    if-lez v1, :cond_7

    .line 1708
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v11, v1, v6}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1710
    :cond_7
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v6

    .line 1711
    if-eqz v6, :cond_8

    array-length v1, v6

    if-lez v1, :cond_8

    .line 1712
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {v11, v1, v6}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1715
    .end local v7    # "alternates":Ljava/lang/String;
    .end local v8    # "me":Ljavax/mail/internet/InternetAddress;
    .end local v12    # "replyallcc":Z
    .end local v13    # "replyallccStr":Ljava/lang/String;
    .end local v14    # "v":Ljava/util/Vector;
    :cond_8
    const-string v1, "Message-Id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1716
    .local v9, "msgId":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 1717
    const-string v1, "In-Reply-To"

    invoke-virtual {v11, v1, v9}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    :cond_9
    const-string v1, "References"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1734
    .local v10, "refs":Ljava/lang/String;
    if-nez v10, :cond_a

    .line 1736
    const-string v1, "In-Reply-To"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1738
    :cond_a
    if-eqz v9, :cond_b

    .line 1739
    if-eqz v10, :cond_f

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1744
    :cond_b
    :goto_1
    if-eqz v10, :cond_c

    .line 1745
    const-string v1, "References"

    const/16 v2, 0xc

    invoke-static {v2, v10}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    :cond_c
    if-eqz p2, :cond_d

    .line 1749
    :try_start_0
    sget-object v1, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    :cond_d
    :goto_2
    return-object v11

    .line 1703
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "refs":Ljava/lang/String;
    .restart local v7    # "alternates":Ljava/lang/String;
    .restart local v8    # "me":Ljavax/mail/internet/InternetAddress;
    .restart local v12    # "replyallcc":Z
    .restart local v13    # "replyallccStr":Ljava/lang/String;
    .restart local v14    # "v":Ljava/util/Vector;
    :cond_e
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v11, v1, v6}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_0

    .line 1742
    .end local v7    # "alternates":Ljava/lang/String;
    .end local v8    # "me":Ljavax/mail/internet/InternetAddress;
    .end local v12    # "replyallcc":Z
    .end local v13    # "replyallccStr":Ljava/lang/String;
    .end local v14    # "v":Ljava/util/Vector;
    .restart local v9    # "msgId":Ljava/lang/String;
    .restart local v10    # "refs":Ljava/lang/String;
    :cond_f
    move-object v10, v9

    goto :goto_1

    .line 1750
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2149
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

    .prologue
    .line 1512
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 1513
    check-cast p1, Ljavax/mail/Multipart;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 1516
    :goto_0
    return-void

    .line 1515
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    goto :goto_0
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 1095
    if-nez p1, :cond_0

    .line 1096
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1098
    :cond_0
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
    .line 1486
    monitor-enter p0

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

    .line 1486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 2118
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 2119
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    :goto_0
    monitor-exit p0

    return-void

    .line 2121
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFrom()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "me":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 440
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 444
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No From address"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 443
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No From address"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    const-string v0, "From"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v0, "From"

    invoke-static {p1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    const-string v0, "From"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v0, "From"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .prologue
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

    .prologue
    .line 640
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 641
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 642
    :cond_0
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v1

    .line 647
    if-nez p2, :cond_3

    const/4 v0, 0x0

    .line 646
    :goto_1
    invoke-direct {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0

    .line 647
    :cond_3
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_1
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

    .prologue
    .line 611
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 612
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 613
    :cond_0
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v0, "Newsgroups"

    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 1
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    const-string v0, "Sender"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    const-string v0, "Sender"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 3
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 898
    if-nez p1, :cond_0

    .line 899
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 905
    :goto_0
    return-void

    .line 901
    :cond_0
    sget-object v1, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v1

    .line 902
    :try_start_0
    const-string v0, "Date"

    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 847
    if-nez p1, :cond_0

    .line 848
    const-string v1, "Subject"

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 857
    :goto_0
    return-void

    .line 851
    :cond_0
    :try_start_0
    const-string v1, "Subject"

    const/16 v2, 0x9

    .line 852
    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-static {v2, v3}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 2190
    monitor-enter p0

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
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 2198
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2200
    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2203
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2205
    :cond_1
    monitor-exit p0

    return-void

    .line 2190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected updateMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2163
    const-string v0, "Message-ID"

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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

    .prologue
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

    .prologue
    .line 1845
    iget-boolean v5, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v5, :cond_0

    .line 1846
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 1848
    :cond_0
    iget-boolean v5, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-eqz v5, :cond_1

    .line 1849
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1884
    :goto_0
    return-void

    .line 1855
    :cond_1
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1856
    .local v1, "hdrLines":Ljava/util/Enumeration;
    new-instance v4, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v4, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1857
    .local v4, "los":Lcom/sun/mail/util/LineOutputStream;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1861
    invoke-virtual {v4}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1864
    iget-object v5, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v5, :cond_6

    .line 1867
    const/4 v2, 0x0

    .line 1868
    .local v2, "is":Ljava/io/InputStream;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 1870
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1873
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_4

    .line 1876
    if-eqz v2, :cond_2

    .line 1877
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1883
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 1858
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1

    .line 1874
    .restart local v0    # "buf":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1875
    .end local v3    # "len":I
    :catchall_0
    move-exception v5

    .line 1876
    if-eqz v2, :cond_5

    .line 1877
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1878
    :cond_5
    const/4 v0, 0x0

    .line 1879
    throw v5

    .line 1881
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3
.end method
