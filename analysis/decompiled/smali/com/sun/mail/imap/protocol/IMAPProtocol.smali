.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;
.source "IMAPProtocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CRLF:[B

.field private static final DONE:[B

.field private static final fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;


# instance fields
.field private authenticated:Z

.field private authmechs:Ljava/util/List;

.field private ba:Lcom/sun/mail/iap/ByteArray;

.field private capabilities:Ljava/util/Map;

.field private connected:Z

.field protected enabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile idleTag:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private proxyAuthUser:Ljava/lang/String;

.field private rev1:Z

.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

.field protected searchCharsets:[Ljava/lang/String;

.field protected searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->$assertionsDisabled:Z

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    .line 107
    new-array v0, v1, [Lcom/sun/mail/imap/protocol/FetchItem;

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 3058
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0

    .line 105
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 3058
    nop

    :array_1
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x45t
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V

    .line 80
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 81
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 82
    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 171
    const-string v0, "imap"

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 173
    const-string v0, "mail.debug.auth"

    invoke-static {p3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 172
    :goto_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 175
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 178
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const-string v3, "UTF-8"

    aput-object v3, v0, v1

    .line 180
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 181
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 184
    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 185
    return-void

    :cond_1
    move v0, v2

    .line 173
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;ZLcom/sun/mail/util/MailLogger;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "props"    # Ljava/util/Properties;
    .param p5, "isSSL"    # Z
    .param p6, "logger"    # Lcom/sun/mail/util/MailLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;ZLcom/sun/mail/util/MailLogger;)V

    .line 80
    iput-boolean v7, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 81
    iput-boolean v7, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 82
    iput-boolean v8, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 130
    const-string v0, "mail.debug.auth"

    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    .line 129
    :goto_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 132
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 135
    :cond_0
    const-string v0, "IMAP4rev1"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 138
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 141
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 155
    :cond_2
    return-void

    :cond_3
    move v0, v8

    .line 130
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 152
    iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 154
    :cond_4
    throw v0
.end method

.method private copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;
    .locals 4
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1998
    if-eqz p3, :cond_0

    const-string v2, "UIDPLUS"

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1999
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "UIDPLUS not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2001
    :cond_0
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2003
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2004
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2005
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2007
    const-string v2, "COPY"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2010
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2013
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2015
    if-eqz p3, :cond_1

    .line 2016
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    .line 2018
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1934
    if-eqz p3, :cond_0

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID FETCH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1937
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FETCH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v6, 0x0

    .line 1435
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-object v6

    .line 1438
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, "b":B
    if-lez v0, :cond_2

    const/16 v7, 0x5b

    if-ne v0, v7, :cond_1

    .line 1440
    :cond_2
    if-eqz v0, :cond_0

    .line 1443
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "s":Ljava/lang/String;
    const-string v7, "APPENDUID"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1447
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 1448
    .local v4, "uidvalidity":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 1449
    .local v2, "uid":J
    new-instance v6, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .locals 12
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2335
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v11

    .line 2336
    if-nez p3, :cond_1

    const/4 v10, 0x0

    .line 2335
    :goto_0
    invoke-virtual {v11, p2, v10}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    .line 2339
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2343
    if-nez p3, :cond_2

    .line 2344
    const-string v10, "SEARCH"

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 2348
    .local v6, "r":[Lcom/sun/mail/iap/Response;
    :goto_1
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v7, v6, v10

    .line 2349
    .local v7, "response":Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 2352
    .local v4, "matches":[I
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2353
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    .local v8, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v6

    .local v3, "len":I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 2369
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 2370
    .local v9, "vsize":I
    new-array v4, v9, [I

    .line 2371
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v9, :cond_7

    .line 2376
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v8    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "vsize":I
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2377
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2378
    return-object v4

    .line 2337
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v4    # "matches":[I
    .end local v6    # "r":[Lcom/sun/mail/iap/Response;
    .end local v7    # "response":Lcom/sun/mail/iap/Response;
    :cond_1
    invoke-static {p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 2346
    .restart local v0    # "args":Lcom/sun/mail/iap/Argument;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SEARCH CHARSET "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .restart local v6    # "r":[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 2356
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "matches":[I
    .restart local v7    # "response":Lcom/sun/mail/iap/Response;
    .restart local v8    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    aget-object v10, v6, v1

    instance-of v10, v10, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v10, :cond_5

    .line 2355
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2359
    :cond_5
    aget-object v2, v6, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2361
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "SEARCH"

    invoke-virtual {v2, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2362
    :goto_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    .local v5, "num":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_6

    .line 2364
    const/4 v10, 0x0

    aput-object v10, v6, v1

    goto :goto_4

    .line 2363
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2372
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v5    # "num":I
    .restart local v9    # "vsize":I
    :cond_7
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v1

    .line 2371
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;
    .locals 4
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2094
    const-string v2, "MOVE"

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2095
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "MOVE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2096
    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "UIDPLUS"

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2097
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "UIDPLUS not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2099
    :cond_1
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2101
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2102
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2103
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2105
    const-string v2, "MOVE"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2108
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2111
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2113
    if-eqz p3, :cond_2

    .line 2114
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    .line 2116
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .locals 11
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 2695
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 2696
    .local v7, "quotaRoot":Ljava/lang/String;
    new-instance v6, Ljavax/mail/Quota;

    invoke-direct {v6, v7}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v6, "q":Ljavax/mail/Quota;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 2699
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v9

    const/16 v10, 0x28

    if-eq v9, v10, :cond_0

    .line 2700
    new-instance v9, Lcom/sun/mail/iap/ParsingException;

    const-string v10, "parse error in QUOTA"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2702
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    .local v8, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota$Resource;>;"
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v9

    const/16 v10, 0x29

    if-ne v9, v10, :cond_2

    .line 2713
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 2714
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljavax/mail/Quota$Resource;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljavax/mail/Quota$Resource;

    iput-object v9, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2715
    return-object v6

    .line 2705
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 2706
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2707
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 2708
    .local v2, "usage":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 2709
    .local v4, "limit":J
    new-instance v0, Ljavax/mail/Quota$Resource;

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    .line 2710
    .local v0, "res":Ljavax/mail/Quota$Resource;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;
    .locals 6
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .prologue
    .line 1073
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1074
    .local v1, "cmd":Lcom/sun/mail/iap/Argument;
    const-string v3, "QRESYNC"

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1075
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1076
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDValidity()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1077
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getModSeq()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1078
    invoke-static {p0}, Lcom/sun/mail/imap/Utility;->getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v2

    .line 1079
    .local v2, "uids":[Lcom/sun/mail/imap/protocol/UIDSet;
    if-eqz v2, :cond_0

    .line 1080
    invoke-static {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1081
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1082
    return-object v1
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .locals 7
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2281
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2283
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2301
    :goto_0
    return-object v5

    .line 2284
    :catch_0
    move-exception v5

    .line 2296
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_1

    .line 2322
    new-instance v5, Ljavax/mail/search/SearchException;

    const-string v6, "Search failed"

    invoke-direct {v5, v6}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2297
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 2296
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2301
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    goto :goto_0

    .line 2302
    :catch_1
    move-exception v0

    .line 2309
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v6, v5, v1

    goto :goto_2

    .line 2311
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_2
    move-exception v2

    .line 2313
    .local v2, "ioex":Ljava/io/IOException;
    goto :goto_2

    .line 2314
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 2315
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    throw v3

    .line 2316
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_4
    move-exception v4

    .line 2317
    .local v4, "sex":Ljavax/mail/search/SearchException;
    throw v4
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .locals 4
    .param p1, "msgset"    # Ljava/lang/String;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2180
    if-eqz p3, :cond_0

    .line 2181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STORE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2182
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2181
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2188
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2189
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2190
    return-void

    .line 2184
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STORE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2185
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2184
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1365
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    .line 1366
    return-void
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1381
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    move-result-object v0

    return-object v0
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
    .locals 4
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .param p5, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1389
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1390
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1392
    if-eqz p2, :cond_1

    .line 1394
    sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v3}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1395
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    .line 1396
    .end local p2    # "f":Ljavax/mail/Flags;
    .local v1, "f":Ljavax/mail/Flags;
    sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    move-object p2, v1

    .line 1409
    .end local v1    # "f":Ljavax/mail/Flags;
    .restart local p2    # "f":Ljavax/mail/Flags;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1411
    :cond_1
    if-eqz p3, :cond_2

    .line 1412
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1414
    :cond_2
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;

    .line 1416
    const-string v3, "APPEND"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 1419
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1422
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1424
    if-eqz p5, :cond_3

    .line 1425
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object v3

    .line 1427
    :goto_0
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 474
    .local v11, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v10, 0x0

    .line 475
    .local v10, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 476
    .local v7, "r":Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 480
    .local v2, "done":Z
    :try_start_1
    iget-boolean v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 481
    iget-object v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v13, "AUTHENTICATE LOGIN command trace suppressed"

    invoke-virtual {v12, v13}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :cond_0
    :try_start_2
    const-string v12, "AUTHENTICATE LOGIN"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 493
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 511
    .local v6, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    const v12, 0x7fffffff

    invoke-direct {v0, v1, v12}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v4, 0x1

    .line 515
    .local v4, "first":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 550
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 559
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/sun/mail/iap/Response;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sun/mail/iap/Response;

    .line 560
    .local v8, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 563
    iget-boolean v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 564
    iget-object v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "AUTHENTICATE LOGIN command result: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 565
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 567
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 569
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 570
    monitor-exit p0

    return-void

    .line 487
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "first":Z
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "responses":[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v3

    .line 489
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 490
    const/4 v2, 0x1

    goto :goto_0

    .line 517
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "first":Z
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 518
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 521
    if-eqz v4, :cond_3

    .line 522
    move-object/from16 v9, p1

    .line 523
    .local v9, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .line 528
    :goto_2
    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 529
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 531
    sget-object v12, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v1, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 532
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 533
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 534
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 542
    .end local v9    # "s":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 544
    .local v5, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    .line 545
    const/4 v2, 0x1

    goto :goto_1

    .line 525
    .end local v5    # "ioex":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v9, p2

    .restart local v9    # "s":Ljava/lang/String;
    goto :goto_2

    .line 535
    .end local v9    # "s":Ljava/lang/String;
    :cond_4
    :try_start_8
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 537
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 538
    :cond_5
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 539
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 541
    :cond_6
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 549
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "first":Z
    .end local v6    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v12

    .line 550
    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 551
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 473
    .end local v2    # "done":Z
    .end local v7    # "r":Lcom/sun/mail/iap/Response;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :catchall_1
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public declared-synchronized authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v18, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/16 v16, 0x0

    .line 698
    .local v16, "tag":Ljava/lang/String;
    const/4 v13, 0x0

    .line 699
    .local v13, "r":Lcom/sun/mail/iap/Response;
    const/4 v7, 0x0

    .line 701
    .local v7, "done":Z
    const/16 v17, 0x0

    .line 702
    .local v17, "type1Msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".auth.ntlm.flags"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 702
    invoke-static {v3, v4, v5}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v10

    .line 704
    .local v10, "flags":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".auth.ntlm.domain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 704
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "domain":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/auth/Ntlm;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getLocalHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sun/mail/auth/Ntlm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    .local v1, "ntlm":Lcom/sun/mail/auth/Ntlm;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "AUTHENTICATE NTLM command trace suppressed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :cond_0
    :try_start_2
    const-string v3, "AUTHENTICATE NTLM"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 723
    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 724
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v9, 0x1

    .line 726
    .local v9, "first":Z
    :goto_1
    if-eqz v7, :cond_2

    .line 757
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 767
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/iap/Response;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/sun/mail/iap/Response;

    .line 768
    .local v14, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 771
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUTHENTICATE NTLM command result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 773
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 777
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 778
    monitor-exit p0

    return-void

    .line 717
    .end local v9    # "first":Z
    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v14    # "responses":[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v8

    .line 719
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v8}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v13

    .line 720
    const/4 v7, 0x1

    goto :goto_0

    .line 728
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "first":Z
    .restart local v12    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v13

    .line 729
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 732
    if-eqz v9, :cond_3

    .line 733
    invoke-virtual {v1, v10}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(I)Ljava/lang/String;

    move-result-object v15

    .line 734
    .local v15, "s":Ljava/lang/String;
    const/4 v9, 0x0

    .line 739
    :goto_2
    invoke-static {v15}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 740
    sget-object v3, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 741
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 749
    .end local v15    # "s":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 751
    .local v11, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v11}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v13

    .line 752
    const/4 v7, 0x1

    goto :goto_1

    .line 736
    .end local v11    # "ioex":Ljava/lang/Exception;
    :cond_3
    :try_start_8
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/auth/Ntlm;->generateType3Msg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "s":Ljava/lang/String;
    goto :goto_2

    .line 742
    .end local v15    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 744
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 745
    :cond_5
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 746
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 748
    :cond_6
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 756
    .end local v9    # "first":Z
    .end local v12    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    .line 757
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 758
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 696
    .end local v1    # "ntlm":Lcom/sun/mail/auth/Ntlm;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v7    # "done":Z
    .end local v10    # "flags":I
    .end local v13    # "r":Lcom/sun/mail/iap/Response;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type1Msg":Ljava/lang/String;
    .end local v18    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 588
    .local v12, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v11, 0x0

    .line 589
    .local v11, "tag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 590
    .local v8, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 594
    .local v3, "done":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "AUTHENTICATE PLAIN command trace suppressed"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :cond_0
    :try_start_2
    const-string v13, "AUTHENTICATE PLAIN"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 607
    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 625
    .local v7, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/sun/mail/util/BASE64EncoderStream;

    const v13, 0x7fffffff

    invoke-direct {v1, v2, v13}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    .local v1, "b64os":Ljava/io/OutputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 660
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 669
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sun/mail/iap/Response;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sun/mail/iap/Response;

    .line 670
    .local v9, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 673
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "AUTHENTICATE PLAIN command result: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 675
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 679
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 680
    monitor-exit p0

    return-void

    .line 601
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .end local v9    # "responses":[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v4

    .line 603
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 604
    const/4 v3, 0x1

    goto :goto_0

    .line 630
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 631
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 633
    const-string v6, "\u0000"

    .line 634
    .local v6, "nullByte":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string v13, ""

    :goto_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    const-string v13, "\u0000"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u0000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 634
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write([B)V

    .line 639
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 641
    sget-object v13, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 642
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 643
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 644
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 652
    .end local v6    # "nullByte":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 654
    .local v5, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_1

    .end local v5    # "ioex":Ljava/lang/Exception;
    .restart local v6    # "nullByte":Ljava/lang/String;
    :cond_3
    move-object/from16 v13, p1

    .line 634
    goto :goto_2

    .line 645
    .end local v6    # "nullByte":Ljava/lang/String;
    :cond_4
    :try_start_8
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 647
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 648
    :cond_5
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 649
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 651
    :cond_6
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 659
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v13

    .line 660
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 661
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 587
    .end local v3    # "done":Z
    .end local v8    # "r":Lcom/sun/mail/iap/Response;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :catchall_1
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method public capability()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v4, "CAPABILITY"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 210
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 214
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 228
    return-void

    .line 216
    :cond_1
    aget-object v4, v3, v0

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_3

    .line 215
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_3
    aget-object v1, v3, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 225
    .local v1, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v4, "CAPABILITY"

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_1
.end method

.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1459
    const-string v0, "CHECK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1460
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1469
    const-string v0, "CLOSE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1470
    return-void
.end method

.method public copy(IILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1963
    const/4 v1, 0x0

    .line 1962
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 1964
    return-void
.end method

.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1949
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 1950
    return-void
.end method

.method public copyuid(IILjava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    const/4 v1, 0x1

    .line 1992
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1977
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1199
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1201
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1202
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1204
    const-string v1, "CREATE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1205
    return-void
.end method

.method protected createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
    .locals 9
    .param p1, "flags"    # Ljavax/mail/Flags;

    .prologue
    const/16 v8, 0x20

    .line 2200
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2201
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2203
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    .line 2204
    .local v5, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v1, 0x1

    .line 2205
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-lt v2, v7, :cond_0

    .line 2229
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v6

    .line 2230
    .local v6, "uf":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    array-length v7, v6

    if-lt v2, v7, :cond_8

    .line 2238
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2239
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2207
    .end local v6    # "uf":[Ljava/lang/String;
    :cond_0
    aget-object v0, v5, v2

    .line 2208
    .local v0, "f":Ljavax/mail/Flags$Flag;
    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_2

    .line 2209
    const-string v3, "\\Answered"

    .line 2222
    .local v3, "s":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_7

    .line 2223
    const/4 v1, 0x0

    .line 2226
    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2205
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2210
    :cond_2
    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_3

    .line 2211
    const-string v3, "\\Deleted"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2212
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_4

    .line 2213
    const-string v3, "\\Draft"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2214
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_5

    .line 2215
    const-string v3, "\\Flagged"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2216
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_6

    .line 2217
    const-string v3, "\\Recent"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2218
    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_1

    .line 2219
    const-string v3, "\\Seen"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2

    .line 2225
    :cond_7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2231
    .end local v0    # "f":Ljavax/mail/Flags$Flag;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v6    # "uf":[Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 2232
    const/4 v1, 0x0

    .line 2235
    :goto_4
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2230
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2234
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1218
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1219
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1221
    const-string v1, "DELETE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1222
    return-void
.end method

.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2761
    const-string v3, "ACL"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2762
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "ACL not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2765
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2767
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2768
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2769
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2771
    const-string v3, "DELETEACL"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2772
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v1, v3

    .line 2775
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2776
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2777
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 394
    return-void
.end method

.method protected doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "pat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1319
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1321
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1322
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1323
    invoke-virtual {v0, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1325
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 1327
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 1328
    .local v4, "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 1330
    .local v6, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1331
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1332
    .local v7, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v5

    .local v3, "len":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 1342
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1343
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 1348
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v7    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    .restart local v4    # "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1349
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1350
    return-object v4

    .line 1333
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    .restart local v7    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    :cond_1
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_3

    .line 1332
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    :cond_3
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1337
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1338
    new-instance v8, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_1
.end method

.method public enable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1094
    const-string v1, "ENABLE"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "ENABLE not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1096
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1097
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1098
    const-string v1, "ENABLE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1099
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 1100
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    return-void
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 1
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1021
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 5
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1040
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1041
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1043
    if-eqz p2, :cond_1

    .line 1044
    sget-object v3, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v3, :cond_2

    .line 1045
    const-string v3, "CONDSTORE"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "CONDSTORE not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1047
    :cond_0
    new-instance v3, Lcom/sun/mail/iap/Argument;

    invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v4, "CONDSTORE"

    invoke-virtual {v3, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1055
    :cond_1
    :goto_0
    const-string v3, "EXAMINE"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 1059
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 1060
    .local v1, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    const/4 v3, 0x1

    iput v3, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1063
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1065
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1066
    return-object v1

    .line 1049
    .end local v1    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    :cond_2
    const-string v3, "QRESYNC"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1050
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "QRESYNC not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1051
    :cond_3
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1479
    const-string v0, "EXPUNGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1480
    return-void
.end method

.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    const/4 v1, 0x0

    .line 1923
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1929
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1918
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1582
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1614
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 3
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "peek"    # Z
    .param p6, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1619
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1620
    if-nez p2, :cond_0

    .line 1621
    const-string p2, ""

    .line 1622
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    const-string v1, "BODY.PEEK["

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1623
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1624
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1

    .line 1622
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    const-string v1, "BODY["

    goto :goto_0
.end method

.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .locals 3
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1549
    if-nez p2, :cond_0

    .line 1550
    const-string p2, ""

    .line 1551
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string v1, "BODY.PEEK["

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1

    .line 1551
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    const-string v1, "BODY["

    goto :goto_0
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1504
    const-string v3, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1505
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1507
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1508
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1509
    const-class v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 1514
    :cond_0
    :goto_0
    return-object v2

    .line 1510
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1513
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .locals 6
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1720
    const/4 v0, 0x0

    .line 1721
    .local v0, "flags":Ljavax/mail/Flags;
    const-string v5, "FLAGS"

    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1724
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1738
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1739
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1740
    return-object v0

    .line 1725
    :cond_0
    aget-object v5, v4, v2

    if-eqz v5, :cond_1

    .line 1726
    aget-object v5, v4, v2

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_1

    .line 1727
    aget-object v5, v4, v2

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 1724
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    :cond_2
    aget-object v1, v4, v2

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1731
    .local v1, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    .end local v0    # "flags":Ljavax/mail/Flags;
    check-cast v0, Ljavax/mail/Flags;

    .restart local v0    # "flags":Ljavax/mail/Flags;
    if-eqz v0, :cond_1

    .line 1732
    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto :goto_1
.end method

.method public fetchMODSEQ(I)Lcom/sun/mail/imap/protocol/MODSEQ;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1776
    const-string v3, "MODSEQ"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1779
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1781
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1782
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1783
    const-class v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    .line 1788
    :cond_0
    :goto_0
    return-object v2

    .line 1784
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1787
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .locals 5
    .param p1, "msgno"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1694
    .line 1695
    if-nez p2, :cond_0

    const-string v2, "RFC822"

    .line 1694
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1699
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1701
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1702
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1703
    const-class v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .line 1708
    :goto_1
    return-object v2

    .line 1695
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "RFC822."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1704
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    .line 1705
    goto :goto_1

    .line 1707
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1708
    goto :goto_1
.end method

.method protected fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 9
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1642
    invoke-virtual {p0, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 1643
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1645
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v2, v5

    .line 1646
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1647
    const-class v5, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {v2, p1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1648
    .local v0, "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1649
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/BODY;

    .line 1665
    .end local v0    # "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 1650
    .restart local v0    # "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1651
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "got "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1652
    const-string v7, " BODY responses for section "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1651
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1654
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/BODY;

    .line 1655
    .local v1, "br":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1656
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "got BODY section "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1657
    :cond_4
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v1

    .line 1658
    goto :goto_0

    .line 1661
    .end local v0    # "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    .end local v1    # "br":Lcom/sun/mail/imap/protocol/BODY;
    :cond_5
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1664
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public fetchSequenceNumber(J)V
    .locals 5
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1803
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UID"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1805
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1806
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1807
    return-void
.end method

.method public fetchSequenceNumbers([J)V
    .locals 6
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1862
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1863
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 1869
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UID"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1871
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1872
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1873
    return-void

    .line 1864
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    :cond_0
    if-lez v0, :cond_1

    .line 1865
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1866
    :cond_1
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fetchSequenceNumbers(JJ)[J
    .locals 13
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1826
    const-wide/16 v10, -0x1

    cmp-long v7, p3, v10

    if-nez v7, :cond_0

    const-string v7, "*"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1828
    const-string v8, "UID"

    const/4 v9, 0x1

    .line 1825
    invoke-direct {p0, v7, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1831
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .local v6, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UID;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "len":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1841
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1842
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1844
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [J

    .line 1845
    .local v3, "lv":[J
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 1847
    return-object v3

    .line 1827
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "lv":[J
    .end local v4    # "r":[Lcom/sun/mail/iap/Response;
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UID;>;"
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1833
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v6    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UID;>;"
    :cond_1
    aget-object v7, v4, v1

    if-eqz v7, :cond_2

    aget-object v7, v4, v1

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v7, :cond_3

    .line 1832
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1836
    :cond_3
    aget-object v0, v4, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1837
    .local v0, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v7, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/UID;

    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_2

    .line 1838
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1846
    .end local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v5    # "u":Lcom/sun/mail/imap/protocol/UID;
    .restart local v3    # "lv":[J
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/mail/imap/protocol/UID;

    iget-wide v8, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    aput-wide v8, v3, v1

    .line 1845
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1751
    const-string v3, "UID"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1754
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1756
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1757
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1758
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    .line 1763
    :cond_0
    :goto_0
    return-object v2

    .line 1759
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1762
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .locals 12
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2788
    const-string v10, "ACL"

    invoke-virtual {p0, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2789
    new-instance v10, Lcom/sun/mail/iap/BadCommandException;

    const-string v11, "ACL not supported"

    invoke-direct {v10, v11}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2792
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2794
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2795
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2797
    const-string v10, "GETACL"

    invoke-virtual {p0, v10, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 2798
    .local v6, "r":[Lcom/sun/mail/iap/Response;
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v7, v6, v10

    .line 2801
    .local v7, "response":Lcom/sun/mail/iap/Response;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    .local v9, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/ACL;>;"
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2803
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v6

    .local v4, "len":I
    :goto_0
    if-lt v2, v4, :cond_2

    .line 2827
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2828
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2829
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lcom/sun/mail/imap/ACL;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sun/mail/imap/ACL;

    return-object v10

    .line 2804
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_2
    aget-object v10, v6, v2

    instance-of v10, v10, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v10, :cond_4

    .line 2803
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    :cond_4
    aget-object v3, v6, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2808
    .local v3, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "ACL"

    invoke-virtual {v3, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2812
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2813
    const/4 v5, 0x0

    .line 2814
    .local v5, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2821
    :cond_5
    const/4 v10, 0x0

    aput-object v10, v6, v2

    goto :goto_1

    .line 2815
    :cond_6
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v8

    .line 2816
    .local v8, "rights":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 2818
    new-instance v0, Lcom/sun/mail/imap/ACL;

    new-instance v10, Lcom/sun/mail/imap/Rights;

    invoke-direct {v10, v8}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5, v10}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    .line 2819
    .local v0, "acl":Lcom/sun/mail/imap/ACL;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getCapabilities()Ljava/util/Map;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method protected getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;
    .locals 11
    .param p1, "rr"    # [Lcom/sun/mail/iap/Response;

    .prologue
    .line 2129
    array-length v8, p1

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 2150
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 2130
    :cond_0
    aget-object v3, p1, v2

    .line 2131
    .local v3, "r":Lcom/sun/mail/iap/Response;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2129
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2134
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, "b":B
    if-lez v0, :cond_3

    const/16 v8, 0x5b

    if-ne v0, v8, :cond_2

    .line 2136
    :cond_3
    if-eqz v0, :cond_1

    .line 2139
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 2140
    .local v4, "s":Ljava/lang/String;
    const-string v8, "COPYUID"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2144
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v6

    .line 2145
    .local v6, "uidvalidity":J
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v5

    .line 2146
    .local v5, "src":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 2147
    .local v1, "dst":Ljava/lang/String;
    new-instance v8, Lcom/sun/mail/imap/CopyUID;

    .line 2148
    invoke-static {v5}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v9

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    .line 2147
    invoke-direct {v8, v6, v7, v9, v10}, Lcom/sun/mail/imap/CopyUID;-><init>(J[Lcom/sun/mail/imap/protocol/UIDSet;[Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_1
.end method

.method public getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 10
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2598
    const-string v8, "QUOTA"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2599
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "QUOTA not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2601
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2602
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2604
    const-string v8, "GETQUOTA"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 2606
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 2607
    .local v4, "quota":Ljavax/mail/Quota;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2608
    .local v7, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota;>;"
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 2611
    .local v6, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2612
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v5

    .local v3, "len":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 2626
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2627
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2628
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljavax/mail/Quota;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljavax/mail/Quota;

    return-object v8

    .line 2613
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    :cond_2
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 2612
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2616
    :cond_4
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2617
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "QUOTA"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2618
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v4

    .line 2619
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2620
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_1
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 22
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2522
    const-string v18, "QUOTA"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 2523
    new-instance v18, Lcom/sun/mail/iap/BadCommandException;

    const-string v19, "GETQUOTAROOT not supported"

    invoke-direct/range {v18 .. v19}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2526
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2528
    new-instance v4, Lcom/sun/mail/iap/Argument;

    invoke-direct {v4}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2529
    .local v4, "args":Lcom/sun/mail/iap/Argument;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2531
    const-string v18, "GETQUOTAROOT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v14

    .line 2533
    .local v14, "r":[Lcom/sun/mail/iap/Response;
    array-length v0, v14

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v15, v14, v18

    .line 2535
    .local v15, "response":Lcom/sun/mail/iap/Response;
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 2538
    .local v17, "tab":Ljava/util/Hashtable;
    invoke-virtual {v15}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2539
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v8, v14

    .local v8, "len":I
    :goto_0
    if-lt v6, v8, :cond_2

    .line 2576
    .end local v6    # "i":I
    .end local v8    # "len":I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2577
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2579
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v12, v0, [Ljavax/mail/Quota;

    .line 2580
    .local v12, "qa":[Ljavax/mail/Quota;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 2581
    .local v5, "e":Ljava/util/Enumeration;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-nez v18, :cond_9

    .line 2583
    return-object v12

    .line 2540
    .end local v5    # "e":Ljava/util/Enumeration;
    .end local v12    # "qa":[Ljavax/mail/Quota;
    .restart local v8    # "len":I
    :cond_2
    aget-object v18, v14, v6

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 2539
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2543
    :cond_4
    aget-object v7, v14, v6

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2544
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v18, "QUOTAROOT"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2549
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2551
    const/16 v16, 0x0

    .line 2552
    .local v16, "root":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 2553
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    .line 2552
    if-gtz v18, :cond_6

    .line 2555
    :cond_5
    const/16 v18, 0x0

    aput-object v18, v14, v6

    goto :goto_2

    .line 2554
    :cond_6
    new-instance v18, Ljavax/mail/Quota;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2556
    .end local v16    # "root":Ljava/lang/String;
    :cond_7
    const-string v18, "QUOTA"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2557
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v13

    .line 2558
    .local v13, "quota":Ljavax/mail/Quota;
    iget-object v0, v13, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/mail/Quota;

    .line 2559
    .local v11, "q":Ljavax/mail/Quota;
    if-eqz v11, :cond_8

    iget-object v0, v11, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 2561
    iget-object v0, v11, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    iget-object v0, v13, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v9, v18, v19

    .line 2562
    .local v9, "newl":I
    new-array v10, v9, [Ljavax/mail/Quota$Resource;

    .line 2563
    .local v10, "newr":[Ljavax/mail/Quota$Resource;
    iget-object v0, v11, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2564
    iget-object v0, v11, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    .line 2563
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2565
    iget-object v0, v13, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 2566
    iget-object v0, v11, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    iget-object v0, v13, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    .line 2565
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2567
    iput-object v10, v13, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2569
    .end local v9    # "newl":I
    .end local v10    # "newr":[Ljavax/mail/Quota$Resource;
    :cond_8
    iget-object v0, v13, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2570
    const/16 v18, 0x0

    aput-object v18, v14, v6

    goto/16 :goto_2

    .line 2582
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "len":I
    .end local v11    # "q":Ljavax/mail/Quota;
    .end local v13    # "quota":Ljavax/mail/Quota;
    .restart local v5    # "e":Ljava/util/Enumeration;
    .restart local v12    # "qa":[Ljavax/mail/Quota;
    :cond_9
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavax/mail/Quota;

    aput-object v18, v12, v6

    .line 2581
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1678
    .local v0, "ret":Lcom/sun/mail/iap/ByteArray;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1679
    return-object v0
.end method

.method protected getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    if-nez v0, :cond_0

    .line 2393
    new-instance v0, Lcom/sun/mail/imap/protocol/SearchSequence;

    invoke-direct {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    .line 2394
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    return-object v0
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .locals 4
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 363
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 365
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 366
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 372
    .end local v0    # "it":Ljava/util/Iterator;
    :goto_0
    return v1

    .line 367
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3092
    const-string v7, "ID"

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3093
    new-instance v6, Lcom/sun/mail/iap/BadCommandException;

    const-string v7, "ID not supported"

    invoke-direct {v6, v7}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3095
    :cond_0
    const-string v7, "ID"

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/ID;->getArgumentList(Ljava/util/Map;)Lcom/sun/mail/iap/Argument;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 3097
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    .line 3098
    .local v1, "id":Lcom/sun/mail/imap/protocol/ID;
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v4, v7

    .line 3101
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3102
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 3116
    .end local v0    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3117
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3118
    if-nez v1, :cond_6

    :goto_1
    return-object v6

    .line 3103
    .restart local v0    # "i":I
    .restart local v3    # "len":I
    :cond_2
    aget-object v7, v4, v0

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_4

    .line 3102
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3106
    :cond_4
    aget-object v2, v4, v0

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3107
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v7, "ID"

    invoke-virtual {v2, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3108
    if-nez v1, :cond_5

    .line 3109
    new-instance v1, Lcom/sun/mail/imap/protocol/ID;

    .end local v1    # "id":Lcom/sun/mail/imap/protocol/ID;
    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/ID;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 3110
    .restart local v1    # "id":Lcom/sun/mail/imap/protocol/ID;
    :cond_5
    aput-object v6, v4, v0

    goto :goto_2

    .line 3118
    .end local v0    # "i":I
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v3    # "len":I
    :cond_6
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/ID;->getServerParams()Ljava/util/Map;

    move-result-object v6

    goto :goto_1
.end method

.method public id(Ljava/lang/String;)V
    .locals 2
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 917
    .local v0, "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "GUID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    .line 919
    return-void
.end method

.method public idleAbort()V
    .locals 5

    .prologue
    .line 3071
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 3073
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 3074
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3079
    :goto_0
    return-void

    .line 3075
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception aborting IDLE"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized idleStart()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2957
    monitor-enter p0

    :try_start_0
    const-string v8, "IDLE"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2958
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "IDLE not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2960
    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2961
    .local v7, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v0, 0x0

    .line 2962
    .local v0, "done":Z
    const/4 v5, 0x0

    .line 2966
    .local v5, "r":Lcom/sun/mail/iap/Response;
    :try_start_2
    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_2
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2976
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2992
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/sun/mail/iap/Response;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sun/mail/iap/Response;

    .line 2993
    .local v6, "responses":[Lcom/sun/mail/iap/Response;
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v6, v8

    .line 2996
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2997
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2998
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2999
    :cond_2
    monitor-exit p0

    return-void

    .line 2967
    .end local v6    # "responses":[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v3

    .line 2968
    .local v3, "lex":Lcom/sun/mail/iap/LiteralException;
    :try_start_4
    invoke-virtual {v3}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2969
    const/4 v0, 0x1

    goto :goto_0

    .line 2970
    .end local v3    # "lex":Lcom/sun/mail/iap/LiteralException;
    :catch_1
    move-exception v1

    .line 2972
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2973
    const/4 v0, 0x1

    .line 2976
    goto :goto_0

    .line 2978
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 2986
    :goto_1
    :try_start_6
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2988
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2989
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2979
    :catch_2
    move-exception v2

    .line 2981
    .local v2, "ioex":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    goto :goto_1

    .line 2982
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2983
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1114
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isREV1()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1287
    const-string v0, "LIST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2843
    const-string v8, "ACL"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2844
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "ACL not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2847
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2849
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2850
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2851
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2853
    const-string v8, "LISTRIGHTS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2854
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v4, v8

    .line 2857
    .local v5, "response":Lcom/sun/mail/iap/Response;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2858
    .local v7, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights;>;"
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2859
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 2880
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2881
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2882
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/sun/mail/imap/Rights;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sun/mail/imap/Rights;

    return-object v8

    .line 2860
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    :cond_2
    aget-object v8, v4, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 2859
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2863
    :cond_4
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2864
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "LISTRIGHTS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2868
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2870
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2872
    :goto_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v6

    .local v6, "rights":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 2874
    const/4 v8, 0x0

    aput-object v8, v4, v1

    goto :goto_1

    .line 2873
    :cond_5
    new-instance v8, Lcom/sun/mail/imap/Rights;

    invoke-direct {v8, v6}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 436
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 437
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 439
    const/4 v1, 0x0

    .line 441
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "LOGIN command trace suppressed"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V

    .line 445
    :cond_0
    const-string v2, "LOGIN"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 447
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 451
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 454
    iget-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LOGIN command result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 456
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 458
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 461
    return-void

    .line 446
    :catchall_0
    move-exception v2

    .line 447
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 448
    throw v2
.end method

.method public logout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 415
    :try_start_0
    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 417
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 420
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 424
    return-void

    .line 421
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :catchall_0
    move-exception v1

    .line 422
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 423
    throw v1
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1301
    const-string v0, "LSUB"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public move(IILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2048
    const/4 v1, 0x0

    .line 2047
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2049
    return-void
.end method

.method public move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2032
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2033
    return-void
.end method

.method public moveuid(IILjava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2082
    const/4 v1, 0x1

    .line 2081
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2894
    const-string v8, "ACL"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2895
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "ACL not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2898
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2900
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2901
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2903
    const-string v8, "MYRIGHTS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2904
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v4, v8

    .line 2907
    .local v5, "response":Lcom/sun/mail/iap/Response;
    const/4 v6, 0x0

    .line 2908
    .local v6, "rights":Lcom/sun/mail/imap/Rights;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2909
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 2927
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2928
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2929
    return-object v6

    .line 2910
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    :cond_2
    aget-object v8, v4, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 2909
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2913
    :cond_4
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2914
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "MYRIGHTS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2917
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2918
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 2919
    .local v7, "rs":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 2920
    new-instance v6, Lcom/sun/mail/imap/Rights;

    .end local v6    # "rights":Lcom/sun/mail/imap/Rights;
    invoke-direct {v6, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    .line 2921
    .restart local v6    # "rights":Lcom/sun/mail/imap/Rights;
    :cond_5
    const/4 v8, 0x0

    aput-object v8, v4, v1

    goto :goto_1
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2480
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2481
    new-instance v6, Lcom/sun/mail/iap/BadCommandException;

    const-string v7, "NAMESPACE not supported"

    invoke-direct {v6, v7}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2483
    :cond_0
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2485
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 2486
    .local v3, "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v4, v6

    .line 2489
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2490
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v4

    .local v2, "len":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 2504
    .end local v0    # "i":I
    .end local v2    # "len":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2505
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2506
    return-object v3

    .line 2491
    .restart local v0    # "i":I
    .restart local v2    # "len":I
    :cond_2
    aget-object v6, v4, v0

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v6, :cond_4

    .line 2490
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2494
    :cond_4
    aget-object v1, v4, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2495
    .local v1, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v6, "NAMESPACE"

    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2496
    if-nez v3, :cond_5

    .line 2497
    new-instance v3, Lcom/sun/mail/imap/protocol/Namespaces;

    .end local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 2498
    .restart local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    :cond_5
    aput-object v7, v4, v0

    goto :goto_1
.end method

.method public noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPProtocol noop"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 404
    const-string v0, "NOOP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 405
    return-void
.end method

.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 6
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 284
    :cond_1
    return-void

    .line 260
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 261
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v1, 0x1

    const-string v3, "AUTH="

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AUTH: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1529
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1598
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 294
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 308
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-boolean v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    move-object v0, p1

    .line 300
    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 301
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 303
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 306
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v1
.end method

.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    .locals 6
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3038
    new-array v1, v3, [Lcom/sun/mail/iap/Response;

    .line 3039
    .local v1, "responses":[Lcom/sun/mail/iap/Response;
    aput-object p1, v1, v2

    .line 3040
    const/4 v0, 0x0

    .line 3041
    .local v0, "done":Z
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3043
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3044
    const/4 v0, 0x1

    .line 3047
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3048
    const/4 v0, 0x1

    .line 3050
    :cond_1
    if-eqz v0, :cond_2

    .line 3051
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    .line 3053
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3054
    if-eqz v0, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public proxyauth(Ljava/lang/String;)V
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 873
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 875
    const-string v1, "PROXYAUTH"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 876
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyAuthUser:Ljava/lang/String;

    .line 877
    return-void
.end method

.method public declared-synchronized readIdleResponse()Lcom/sun/mail/iap/Response;
    .locals 4

    .prologue
    .line 3012
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 3013
    const/4 v2, 0x0

    .line 3024
    :goto_0
    monitor-exit p0

    return-object v2

    .line 3014
    :cond_0
    const/4 v2, 0x0

    .line 3016
    .local v2, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3017
    :catch_0
    move-exception v0

    .line 3019
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2

    goto :goto_0

    .line 3020
    .end local v0    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 3022
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3012
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 349
    .local v0, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v2, "FETCH"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    new-instance v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .end local v0    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .local v1, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    move-object v0, v1

    .line 351
    .end local v1    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .restart local v0    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_0
    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1235
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1237
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1238
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1239
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1241
    const-string v1, "RENAME"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1242
    return-void
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sasl.usecanonicalhostname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 792
    invoke-static {v0, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    .line 795
    .local v11, "useCanonicalHostName":Z
    if-eqz v11, :cond_4

    .line 796
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v10

    .line 799
    .local v10, "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    if-nez v0, :cond_0

    .line 802
    :try_start_0
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    .line 801
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 803
    .local v9, "sac":Ljava/lang/Class;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 804
    const-class v3, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 805
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 806
    const-class v3, Ljava/util/Properties;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 807
    const-class v3, Lcom/sun/mail/util/MailLogger;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 808
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 803
    invoke-virtual {v9, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 811
    .local v6, "c":Ljava/lang/reflect/Constructor;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 812
    aput-object p0, v0, v2

    const/4 v2, 0x1

    .line 813
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 814
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 815
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 816
    aput-object v10, v0, v2

    .line 810
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v6    # "c":Ljava/lang/reflect/Constructor;
    .end local v9    # "sac":Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    .line 829
    new-instance v12, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 830
    .local v12, "v":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, p1

    if-lt v8, v0, :cond_5

    .line 837
    .end local v8    # "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 841
    .local v1, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL authentication command trace suppressed"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 847
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL authentication succeeded"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 849
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 857
    .end local v1    # "mechs":[Ljava/lang/String;
    .end local v12    # "v":Ljava/util/List;
    :goto_4
    return-void

    .line 798
    .end local v10    # "serviceHost":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    .restart local v10    # "serviceHost":Ljava/lang/String;
    goto/16 :goto_0

    .line 818
    :catch_0
    move-exception v7

    .line 819
    .local v7, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t load SASL authenticator"

    invoke-virtual {v0, v2, v3, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 831
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "i":I
    .restart local v12    # "v":Ljava/util/List;
    :cond_5
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    aget-object v2, p1, v8

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 832
    aget-object v0, p1, v8

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 835
    .end local v8    # "i":I
    .end local v12    # "v":Ljava/util/List;
    :cond_7
    iget-object v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .restart local v12    # "v":Ljava/util/List;
    goto :goto_2

    .line 851
    .restart local v1    # "mechs":[Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL authentication failed"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 854
    :catchall_0
    move-exception v0

    .line 855
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 856
    throw v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 2270
    const-string v0, "ALL"

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 2255
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 1
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 975
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 976
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 978
    if-eqz p2, :cond_1

    .line 979
    sget-object v4, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v4, :cond_3

    .line 980
    const-string v4, "CONDSTORE"

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 981
    new-instance v4, Lcom/sun/mail/iap/BadCommandException;

    const-string v5, "CONDSTORE not supported"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 982
    :cond_0
    new-instance v4, Lcom/sun/mail/iap/Argument;

    invoke-direct {v4}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 990
    :cond_1
    :goto_0
    const-string v4, "SELECT"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 994
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 997
    .local v1, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 999
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v2, v4

    .line 1001
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1002
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "READ-ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 1003
    const/4 v4, 0x1

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1008
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1009
    return-object v1

    .line 984
    .end local v1    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_3
    const-string v4, "QRESYNC"

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 985
    new-instance v4, Lcom/sun/mail/iap/BadCommandException;

    const-string v5, "QRESYNC not supported"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 986
    :cond_4
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1005
    .restart local v1    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v2    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_5
    const/4 v4, 0x2

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_1
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "modifier"    # C
    .param p3, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2730
    const-string v4, "ACL"

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2731
    new-instance v4, Lcom/sun/mail/iap/BadCommandException;

    const-string v5, "ACL not supported"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2734
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2736
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2737
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2738
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2739
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2740
    .local v3, "rights":Ljava/lang/String;
    const/16 v4, 0x2b

    if-eq p2, v4, :cond_1

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_2

    .line 2741
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2742
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2744
    const-string v4, "SETACL"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2745
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v1, v4

    .line 2748
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2749
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2750
    return-void
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, "b":B
    if-lez v0, :cond_1

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 240
    :cond_1
    if-nez v0, :cond_3

    .line 249
    :cond_2
    :goto_0
    return-void

    .line 243
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "s":Ljava/lang/String;
    const-string v2, "CAPABILITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 248
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 8
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2641
    const-string v5, "QUOTA"

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2642
    new-instance v5, Lcom/sun/mail/iap/BadCommandException;

    const-string v6, "QUOTA not supported"

    invoke-direct {v5, v6}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2644
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2645
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2646
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2647
    .local v2, "qargs":Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v5, :cond_1

    .line 2648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 2653
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2655
    const-string v5, "SETQUOTA"

    invoke-virtual {p0, v5, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 2656
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v3, v5

    .line 2683
    .local v4, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2684
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2688
    return-void

    .line 2649
    .end local v3    # "r":[Lcom/sun/mail/iap/Response;
    .end local v4    # "response":Lcom/sun/mail/iap/Response;
    .restart local v1    # "i":I
    :cond_2
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-object v5, v5, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2650
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-wide v6, v5, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v2, v6, v7}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 2648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I
    .locals 15
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 2415
    const-string v13, "SORT*"

    invoke-virtual {p0, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2416
    new-instance v13, Lcom/sun/mail/iap/BadCommandException;

    const-string v14, "SORT not supported"

    invoke-direct {v13, v14}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2418
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_2

    .line 2419
    :cond_1
    new-instance v13, Lcom/sun/mail/iap/BadCommandException;

    const-string v14, "Must have at least one sort term"

    invoke-direct {v13, v14}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2421
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2422
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    new-instance v10, Lcom/sun/mail/iap/Argument;

    invoke-direct {v10}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2423
    .local v10, "sargs":Lcom/sun/mail/iap/Argument;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-lt v2, v13, :cond_4

    .line 2425
    invoke-virtual {v1, v10}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2427
    const-string v13, "UTF-8"

    invoke-virtual {v1, v13}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2428
    if-eqz p2, :cond_5

    .line 2431
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v13

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v13

    .line 2430
    invoke-virtual {v1, v13}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    :goto_1
    const-string v13, "SORT"

    invoke-virtual {p0, v13, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 2440
    .local v8, "r":[Lcom/sun/mail/iap/Response;
    array-length v13, v8

    add-int/lit8 v13, v13, -0x1

    aget-object v9, v8, v13

    .line 2441
    .local v9, "response":Lcom/sun/mail/iap/Response;
    const/4 v6, 0x0

    .line 2444
    .local v6, "matches":[I
    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2445
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v11, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    array-length v5, v8

    .local v5, "len":I
    :goto_2
    if-lt v2, v5, :cond_6

    .line 2460
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2461
    .local v12, "vsize":I
    new-array v6, v12, [I

    .line 2462
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v12, :cond_a

    .line 2467
    .end local v5    # "len":I
    .end local v11    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "vsize":I
    :cond_3
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2468
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2469
    return-object v6

    .line 2424
    .end local v6    # "matches":[I
    .end local v8    # "r":[Lcom/sun/mail/iap/Response;
    .end local v9    # "response":Lcom/sun/mail/iap/Response;
    :cond_4
    aget-object v13, p1, v2

    invoke-virtual {v13}, Lcom/sun/mail/imap/SortTerm;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2432
    :catch_0
    move-exception v3

    .line 2434
    .local v3, "ioex":Ljava/io/IOException;
    new-instance v13, Ljavax/mail/search/SearchException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2437
    .end local v3    # "ioex":Ljava/io/IOException;
    :cond_5
    const-string v13, "ALL"

    invoke-virtual {v1, v13}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_1

    .line 2448
    .restart local v5    # "len":I
    .restart local v6    # "matches":[I
    .restart local v8    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v9    # "response":Lcom/sun/mail/iap/Response;
    .restart local v11    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    aget-object v13, v8, v2

    instance-of v13, v13, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v13, :cond_8

    .line 2447
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2451
    :cond_8
    aget-object v4, v8, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2452
    .local v4, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v13, "SORT"

    invoke-virtual {v4, v13}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2453
    :goto_5
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v7

    .local v7, "num":I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_9

    .line 2455
    const/4 v13, 0x0

    aput-object v13, v8, v2

    goto :goto_4

    .line 2454
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2463
    .end local v4    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v7    # "num":I
    .restart local v12    # "vsize":I
    :cond_a
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v6, v2

    .line 2462
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public startTLS()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 929
    :try_start_0
    const-string v3, "STARTTLS"

    invoke-super {p0, v3}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    return-void

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "STARTTLS ProtocolException"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    throw v1

    .line 936
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "STARTTLS Exception"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 940
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/sun/mail/iap/Response;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    aput-object v4, v2, v3

    .line 941
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 942
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 943
    new-instance v3, Lcom/sun/mail/iap/ProtocolException;

    const-string v4, "STARTTLS failure"

    invoke-direct {v3, v4, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "IMAP4SUNVERSION"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1146
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "STATUS not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1149
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1151
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1152
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1154
    new-instance v3, Lcom/sun/mail/iap/Argument;

    invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1155
    .local v3, "itemArgs":Lcom/sun/mail/iap/Argument;
    if-nez p2, :cond_1

    .line 1156
    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 1158
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, p2

    .local v4, "len":I
    :goto_0
    if-lt v1, v4, :cond_3

    .line 1160
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1162
    const-string v8, "STATUS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 1164
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    const/4 v7, 0x0

    .line 1165
    .local v7, "status":Lcom/sun/mail/imap/protocol/Status;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 1168
    .local v6, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1169
    const/4 v1, 0x0

    array-length v4, v5

    :goto_1
    if-lt v1, v4, :cond_4

    .line 1185
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1186
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1187
    return-object v7

    .line 1159
    .end local v5    # "r":[Lcom/sun/mail/iap/Response;
    .end local v6    # "response":Lcom/sun/mail/iap/Response;
    .end local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    :cond_3
    aget-object v8, p2, v1

    invoke-virtual {v3, v8}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1170
    .restart local v5    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v6    # "response":Lcom/sun/mail/iap/Response;
    .restart local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    :cond_4
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_6

    .line 1169
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1173
    :cond_6
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1174
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "STATUS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1175
    if-nez v7, :cond_7

    .line 1176
    new-instance v7, Lcom/sun/mail/imap/protocol/Status;

    .end local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    invoke-direct {v7, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 1179
    .restart local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_3
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_2

    .line 1178
    :cond_7
    new-instance v8, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v7, v8}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    goto :goto_3
.end method

.method public storeFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flags"    # Ljavax/mail/Flags;
    .param p4, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2162
    return-void
.end method

.method public storeFlags(ILjavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2175
    return-void
.end method

.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2155
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2156
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1254
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1255
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1257
    const-string v1, "SUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1258
    return-void
.end method

.method protected supportsNonSyncLiterals()Z
    .locals 1

    .prologue
    .line 335
    const-string v0, "LITERAL+"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    .locals 2
    .param p1, "set"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1490
    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UID EXPUNGE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID EXPUNGE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1493
    return-void
.end method

.method public uidfetchChangedSince(JJJ)[I
    .locals 13
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1890
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1891
    const-wide/16 v10, -0x1

    cmp-long v8, p3, v10

    if-nez v8, :cond_0

    const-string v8, "*"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1890
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1893
    .local v4, "msgSequence":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UID FETCH "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1894
    const-string v9, " (FLAGS) (CHANGEDSINCE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1893
    invoke-virtual {p0, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 1896
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v6, "v":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v5

    .local v2, "len":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1905
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1906
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1909
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1910
    .local v7, "vsize":I
    new-array v3, v7, [I

    .line 1911
    .local v3, "matches":[I
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v7, :cond_4

    .line 1913
    return-object v3

    .line 1892
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "matches":[I
    .end local v4    # "msgSequence":Ljava/lang/String;
    .end local v5    # "r":[Lcom/sun/mail/iap/Response;
    .end local v6    # "v":Ljava/util/List;
    .end local v7    # "vsize":I
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1898
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "msgSequence":Ljava/lang/String;
    .restart local v5    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v6    # "v":Ljava/util/List;
    :cond_1
    aget-object v8, v5, v1

    if-eqz v8, :cond_2

    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v8, :cond_3

    .line 1897
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1901
    :cond_3
    aget-object v0, v5, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1902
    .local v0, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1912
    .end local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    .restart local v3    # "matches":[I
    .restart local v7    # "vsize":I
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v3, v1

    .line 1911
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public unauthenticate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 898
    const-string v0, "X-UNAUTHENTICATE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNAUTHENTICATE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    const-string v0, "UNAUTHENTICATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 902
    return-void
.end method

.method public unselect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1127
    const-string v0, "UNSELECT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNSELECT not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_0
    const-string v0, "UNSELECT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1130
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1270
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1271
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1273
    const-string v1, "UNSUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1274
    return-void
.end method
