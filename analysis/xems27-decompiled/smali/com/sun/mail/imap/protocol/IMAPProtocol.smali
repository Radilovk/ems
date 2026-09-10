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
            "Ljava/util/Set<",
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
    .locals 1

    .line 78
    nop

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/mail/imap/protocol/FetchItem;

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 3058
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

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

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 81
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 171
    const-string v2, "imap"

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 172
    nop

    .line 173
    const-string v2, "mail.debug.auth"

    invoke-static {p3, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    .line 172
    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 175
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 178
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 179
    const-string v3, "UTF-8"

    aput-object v3, v2, v0

    .line 180
    nop

    .line 181
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 184
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 185
    return-void
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

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;ZLcom/sun/mail/util/MailLogger;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 81
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 129
    nop

    .line 130
    const-string v2, "mail.debug.auth"

    invoke-static {p4, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 129
    :goto_0
    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 132
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 135
    :cond_1
    const-string v2, "IMAP4rev1"

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 138
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 139
    const-string v3, "UTF-8"

    aput-object v3, v2, v0

    .line 140
    nop

    .line 141
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 144
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    nop

    .line 152
    if-nez v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 155
    :cond_3
    return-void

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
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1998
    if-eqz p3, :cond_1

    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1999
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UIDPLUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2001
    :cond_1
    :goto_0
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
    const-string v1, "COPY"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

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
    if-eqz p3, :cond_2

    .line 2016
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    return-object v2

    .line 2018
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .locals 5
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1934
    const/4 v0, 0x0

    const-string v1, ")"

    const-string v2, " ("

    if-eqz p3, :cond_0

    .line 1935
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UID FETCH "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0

    .line 1937
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FETCH "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 1435
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1436
    return-object v1

    .line 1438
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    move v2, v0

    .local v2, "b":B
    if-lez v0, :cond_1

    const/16 v0, 0x5b

    if-ne v2, v0, :cond_0

    .line 1440
    :cond_1
    if-nez v2, :cond_2

    .line 1441
    return-object v1

    .line 1443
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "s":Ljava/lang/String;
    const-string v3, "APPENDUID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1445
    return-object v1

    .line 1447
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    .line 1448
    .local v3, "uidvalidity":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    .line 1449
    .local v5, "uid":J
    new-instance v1, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    return-object v1
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .locals 16
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

    .line 2335
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v2

    .line 2336
    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 2337
    :cond_0
    invoke-static/range {p3 .. p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2335
    :goto_0
    move-object/from16 v5, p2

    invoke-virtual {v2, v5, v4}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    .line 2339
    .local v2, "args":Lcom/sun/mail/iap/Argument;
    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2343
    const-string v6, "SEARCH"

    if-nez v1, :cond_1

    .line 2344
    invoke-virtual {v0, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .local v7, "r":[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 2346
    .end local v7    # "r":[Lcom/sun/mail/iap/Response;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SEARCH CHARSET "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 2348
    .restart local v7    # "r":[Lcom/sun/mail/iap/Response;
    :goto_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    .line 2349
    .local v8, "response":Lcom/sun/mail/iap/Response;
    const/4 v9, 0x0

    .line 2352
    .local v9, "matches":[I
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2353
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    .local v10, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v12, v7

    .local v12, "len":I
    :goto_2
    if-lt v11, v12, :cond_3

    .line 2369
    .end local v11    # "i":I
    .end local v12    # "len":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    .line 2370
    .local v13, "vsize":I
    new-array v14, v13, [I

    .line 2371
    .end local v9    # "matches":[I
    .local v14, "matches":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v13, :cond_2

    move-object v9, v14

    goto :goto_6

    .line 2372
    :cond_2
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v14, v3

    .line 2371
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2356
    .end local v3    # "i":I
    .end local v13    # "vsize":I
    .end local v14    # "matches":[I
    .restart local v9    # "matches":[I
    .restart local v11    # "i":I
    .restart local v12    # "len":I
    :cond_3
    aget-object v13, v7, v11

    instance-of v13, v13, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v13, :cond_4

    .line 2357
    const/4 v3, 0x0

    goto :goto_5

    .line 2359
    :cond_4
    aget-object v13, v7, v11

    check-cast v13, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2361
    .local v13, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v13, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2362
    nop

    :goto_4
    invoke-virtual {v13}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v14

    move v15, v14

    .local v15, "num":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_5

    .line 2364
    const/4 v3, 0x0

    aput-object v3, v7, v11

    goto :goto_5

    .line 2363
    :cond_5
    const/4 v3, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2361
    .end local v15    # "num":I
    :cond_6
    const/4 v3, 0x0

    .line 2355
    .end local v13    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2376
    .end local v10    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v12    # "len":I
    :cond_7
    :goto_6
    invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2377
    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2378
    return-object v9
.end method

.method private moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2094
    const-string v0, "MOVE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2096
    if-eqz p3, :cond_1

    const-string v1, "UIDPLUS"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2097
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UIDPLUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2101
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2102
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2103
    invoke-virtual {v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2105
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2108
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2111
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2113
    if-eqz p3, :cond_2

    .line 2114
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    return-object v2

    .line 2116
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 2095
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "MOVE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .locals 15
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 2695
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    .line 2696
    .local v0, "quotaRoot":Ljava/lang/String;
    new-instance v1, Ljavax/mail/Quota;

    invoke-direct {v1, v0}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v1, "q":Ljavax/mail/Quota;
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 2699
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 2702
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota$Resource;>;"
    nop

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    .line 2713
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 2714
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Quota$Resource;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/mail/Quota$Resource;

    iput-object v3, v1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2715
    return-object v1

    .line 2705
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v3

    .line 2706
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2707
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v10

    .line 2708
    .local v10, "usage":J
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v12

    .line 2709
    .local v12, "limit":J
    new-instance v14, Ljavax/mail/Quota$Resource;

    move-object v4, v14

    move-object v5, v3

    move-wide v6, v10

    move-wide v8, v12

    invoke-direct/range {v4 .. v9}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    .line 2710
    .local v4, "res":Ljavax/mail/Quota$Resource;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2700
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota$Resource;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "res":Ljavax/mail/Quota$Resource;
    .end local v10    # "usage":J
    .end local v12    # "limit":J
    :cond_2
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "parse error in QUOTA"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .line 1073
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1074
    .local v0, "cmd":Lcom/sun/mail/iap/Argument;
    const-string v1, "QRESYNC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1075
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1076
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDValidity()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1077
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getModSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1078
    invoke-static {p0}, Lcom/sun/mail/imap/Utility;->getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v2

    .line 1079
    .local v2, "uids":[Lcom/sun/mail/imap/protocol/UIDSet;
    if-eqz v2, :cond_0

    .line 1080
    invoke-static {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1081
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1082
    return-object v0
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .locals 4
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2281
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2283
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2284
    :catch_0
    move-exception v0

    .line 2296
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2297
    aget-object v3, v2, v0

    if-nez v3, :cond_1

    .line 2298
    goto :goto_1

    .line 2301
    :cond_1
    :try_start_1
    aget-object v2, v2, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 2316
    :catch_1
    move-exception v1

    .line 2317
    .local v1, "sex":Ljavax/mail/search/SearchException;
    throw v1

    .line 2314
    .end local v1    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v1

    .line 2315
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    throw v1

    .line 2311
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v2

    .line 2313
    .local v2, "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 2302
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2309
    .local v2, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 2310
    nop

    .line 2296
    .end local v2    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2322
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Search failed"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .locals 3
    .param p1, "msgset"    # Ljava/lang/String;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2180
    const/4 v0, 0x0

    const-string v1, "STORE "

    if-eqz p3, :cond_0

    .line 2181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +FLAGS "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2181
    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2182
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2184
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -FLAGS "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2184
    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2188
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2189
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2190
    return-void
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
    .locals 3
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
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    move-object p2, v1

    .line 1396
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    .line 1409
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1411
    :cond_1
    if-eqz p3, :cond_2

    .line 1412
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1414
    :cond_2
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;

    .line 1416
    const-string v1, "APPEND"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1419
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1422
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1424
    if-eqz p5, :cond_3

    .line 1425
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object v2

    return-object v2

    .line 1427
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 474
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 475
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 476
    .local v2, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 480
    .local v3, "done":Z
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "AUTHENTICATE LOGIN command trace suppressed"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :cond_0
    :try_start_3
    const-string v4, "AUTHENTICATE LOGIN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    .line 487
    goto :goto_0

    .line 549
    :catchall_0
    move-exception v4

    goto/16 :goto_3

    .line 487
    :catch_0
    move-exception v4

    .line 489
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 490
    const/4 v3, 0x1

    .line 493
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 511
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/sun/mail/util/BASE64EncoderStream;

    const v7, 0x7fffffff

    invoke-direct {v6, v5, v7}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 513
    .local v6, "b64os":Ljava/io/OutputStream;
    const/4 v7, 0x1

    .line 515
    .local v7, "first":Z
    nop

    :goto_1
    if-eqz v3, :cond_2

    .line 549
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    .end local v7    # "first":Z
    nop

    .line 550
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 559
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/iap/Response;

    .line 560
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 563
    iget-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 564
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTHENTICATE LOGIN command result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 565
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 567
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 569
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 570
    monitor-exit p0

    return-void

    .line 517
    .local v4, "os":Ljava/io/OutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "b64os":Ljava/io/OutputStream;
    .restart local v7    # "first":Z
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    move-object v2, v8

    .line 518
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 521
    if-eqz v7, :cond_3

    .line 522
    move-object v8, p1

    .line 523
    .local v8, "s":Ljava/lang/String;
    const/4 v7, 0x0

    .line 524
    goto :goto_2

    .line 525
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    move-object v8, p2

    .line 528
    .restart local v8    # "s":Ljava/lang/String;
    :goto_2
    invoke-static {v8}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 529
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 531
    sget-object v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 532
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 534
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 535
    .end local v8    # "s":Ljava/lang/String;
    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 537
    const/4 v3, 0x1

    goto :goto_1

    .line 538
    :cond_5
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 539
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 541
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 542
    goto/16 :goto_1

    :catch_1
    move-exception v8

    .line 544
    .local v8, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v8}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v9

    .line 545
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 549
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    .end local v7    # "first":Z
    .end local v8    # "ioex":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 550
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 551
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 472
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "done":Z
    .end local p1    # "u":Ljava/lang/String;
    .end local p2    # "p":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 696
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 697
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v3, 0x0

    .line 698
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 699
    .local v4, "r":Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 701
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 702
    .local v6, "type1Msg":Ljava/lang/String;
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 703
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".auth.ntlm.flags"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 702
    invoke-static {v0, v7, v8}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 704
    .local v7, "flags":I
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 705
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".auth.ntlm.domain"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 704
    invoke-virtual {v0, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 706
    .local v11, "domain":Ljava/lang/String;
    new-instance v0, Lcom/sun/mail/auth/Ntlm;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getLocalHost()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    move-object v10, v0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/sun/mail/auth/Ntlm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v8, v0

    .line 710
    .local v8, "ntlm":Lcom/sun/mail/auth/Ntlm;
    :try_start_1
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "AUTHENTICATE NTLM command trace suppressed"

    invoke-virtual {v0, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    :cond_0
    :try_start_3
    const-string v0, "AUTHENTICATE NTLM"

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    .line 717
    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 717
    :catch_0
    move-exception v0

    .line 719
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v9

    move-object v4, v9

    .line 720
    const/4 v5, 0x1

    .line 723
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v9, v0

    .line 724
    .local v9, "os":Ljava/io/OutputStream;
    const/4 v0, 0x1

    .line 726
    .local v0, "first":Z
    move v10, v5

    move-object v5, v4

    move v4, v0

    .end local v0    # "first":Z
    .local v4, "first":Z
    .local v5, "r":Lcom/sun/mail/iap/Response;
    .local v10, "done":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 756
    .end local v4    # "first":Z
    .end local v9    # "os":Ljava/io/OutputStream;
    nop

    .line 757
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 767
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/iap/Response;

    .line 768
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 771
    iget-boolean v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "AUTHENTICATE NTLM command result: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 773
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 775
    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 777
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 778
    monitor-exit p0

    return-void

    .line 728
    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    .restart local v4    # "first":Z
    .restart local v9    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    move-object v5, v0

    .line 729
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 732
    if-eqz v4, :cond_3

    .line 733
    invoke-virtual {v8, v7}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .line 735
    goto :goto_2

    .line 736
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sun/mail/auth/Ntlm;->generateType3Msg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/OutputStream;->write([B)V

    .line 740
    sget-object v12, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v9, v12}, Ljava/io/OutputStream;->write([B)V

    .line 741
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 742
    .end local v0    # "s":Ljava/lang/String;
    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 744
    const/4 v10, 0x1

    goto :goto_1

    .line 745
    :cond_5
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 746
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 748
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 749
    goto/16 :goto_1

    .line 756
    .end local v4    # "first":Z
    .end local v9    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    move-object v4, v5

    move v5, v10

    goto :goto_3

    .line 749
    .restart local v4    # "first":Z
    .restart local v9    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object/from16 v16, v5

    move-object v5, v0

    move v0, v4

    move-object/from16 v4, v16

    .line 751
    .local v0, "first":Z
    .local v4, "r":Lcom/sun/mail/iap/Response;
    .local v5, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v4, v12

    .line 752
    const/4 v10, 0x1

    move-object v5, v4

    move v4, v0

    goto/16 :goto_1

    .line 756
    .end local v0    # "first":Z
    .end local v5    # "ioex":Ljava/lang/Exception;
    .end local v9    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move v5, v10

    goto :goto_3

    .end local v10    # "done":Z
    .local v5, "done":Z
    :catchall_3
    move-exception v0

    .line 757
    :goto_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 758
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 695
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    .end local v5    # "done":Z
    .end local v6    # "type1Msg":Ljava/lang/String;
    .end local v7    # "flags":I
    .end local v8    # "ntlm":Lcom/sun/mail/auth/Ntlm;
    .end local v11    # "domain":Ljava/lang/String;
    .end local p1    # "authzid":Ljava/lang/String;
    .end local p2    # "u":Ljava/lang/String;
    .end local p3    # "p":Ljava/lang/String;
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 587
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 588
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 589
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 590
    .local v2, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 594
    .local v3, "done":Z
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "AUTHENTICATE PLAIN command trace suppressed"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    :cond_0
    :try_start_3
    const-string v4, "AUTHENTICATE PLAIN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    .line 601
    goto :goto_0

    .line 659
    :catchall_0
    move-exception v4

    goto/16 :goto_3

    .line 601
    :catch_0
    move-exception v4

    .line 603
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 604
    const/4 v3, 0x1

    .line 607
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 625
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/sun/mail/util/BASE64EncoderStream;

    const v7, 0x7fffffff

    invoke-direct {v6, v5, v7}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 628
    .local v6, "b64os":Ljava/io/OutputStream;
    nop

    :goto_1
    if-eqz v3, :cond_2

    .line 659
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    nop

    .line 660
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/iap/Response;

    .line 670
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 673
    iget-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTHENTICATE PLAIN command result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 675
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 677
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 679
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 680
    monitor-exit p0

    return-void

    .line 630
    .local v4, "os":Ljava/io/OutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "b64os":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    move-object v2, v7

    .line 631
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 633
    const-string v7, "\u0000"

    .line 634
    .local v7, "nullByte":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string v9, ""

    goto :goto_2

    :cond_3
    move-object v9, p1

    :goto_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 638
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 639
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 641
    sget-object v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 642
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 643
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 644
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 645
    .end local v7    # "nullByte":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 647
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 648
    :cond_5
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 649
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 651
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 652
    goto/16 :goto_1

    :catch_1
    move-exception v7

    .line 654
    .local v7, "ioex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v7}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v8

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 659
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    .end local v7    # "ioex":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 660
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 661
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 586
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "done":Z
    .end local p1    # "authzid":Ljava/lang/String;
    .end local p2    # "u":Ljava/lang/String;
    .end local p3    # "p":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public capability()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 208
    const-string v0, "CAPABILITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 210
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 215
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "len":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 228
    .end local v2    # "i":I
    .end local v3    # "len":I
    return-void

    .line 216
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_0
    aget-object v4, v1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_1

    .line 217
    goto :goto_1

    .line 219
    :cond_1
    aget-object v4, v1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 225
    .local v4, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 215
    .end local v4    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1963
    nop

    .line 1962
    const/4 v1, 0x0

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

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    nop

    .line 1992
    const/4 v1, 0x1

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
    .locals 7
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 2200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2201
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2203
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v1

    .line 2204
    .local v1, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v2, 0x1

    .line 2205
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/16 v5, 0x20

    if-lt v3, v4, :cond_2

    .line 2229
    .end local v3    # "i":I
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v4

    .line 2230
    .local v4, "uf":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v6, v4

    if-lt v3, v6, :cond_0

    .line 2238
    .end local v3    # "i":I
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2231
    .restart local v3    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    .line 2232
    const/4 v2, 0x0

    goto :goto_2

    .line 2234
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2235
    :goto_2
    aget-object v6, v4, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2207
    .end local v4    # "uf":[Ljava/lang/String;
    :cond_2
    aget-object v4, v1, v3

    .line 2208
    .local v4, "f":Ljavax/mail/Flags$Flag;
    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_3

    .line 2209
    const-string v6, "\\Answered"

    .local v6, "s":Ljava/lang/String;
    goto :goto_3

    .line 2210
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_4

    .line 2211
    const-string v6, "\\Deleted"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 2212
    .end local v6    # "s":Ljava/lang/String;
    :cond_4
    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_5

    .line 2213
    const-string v6, "\\Draft"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 2214
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_6

    .line 2215
    const-string v6, "\\Flagged"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 2216
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_7

    .line 2217
    const-string v6, "\\Recent"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 2218
    .end local v6    # "s":Ljava/lang/String;
    :cond_7
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_9

    .line 2219
    const-string v6, "\\Seen"

    .line 2222
    .restart local v6    # "s":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_8

    .line 2223
    const/4 v2, 0x0

    goto :goto_4

    .line 2225
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2226
    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2205
    .end local v4    # "f":Ljavax/mail/Flags$Flag;
    .end local v6    # "s":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
    .locals 3
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2761
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2765
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
    const-string v1, "DELETEACL"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2772
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 2775
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2776
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2777
    return-void

    .line 2762
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    .end local v2    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 1

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

    move-result-object v1

    .line 1327
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 1328
    .local v2, "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 1330
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1331
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    .line 1332
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v1

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 1342
    .end local v5    # "i":I
    .end local v6    # "len":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1343
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    goto :goto_2

    .line 1333
    .restart local v5    # "i":I
    .restart local v6    # "len":I
    :cond_0
    aget-object v7, v1, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 1334
    goto :goto_1

    .line 1336
    :cond_1
    aget-object v7, v1, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1337
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1338
    new-instance v8, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    const/4 v8, 0x0

    aput-object v8, v1, v5

    .line 1332
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1348
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1349
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1350
    return-object v2
.end method

.method public enable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1094
    const-string v0, "ENABLE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1097
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1098
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1099
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    return-void

    .line 1095
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ENABLE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 1
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
    if-eqz p2, :cond_3

    .line 1044
    sget-object v1, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v1, :cond_1

    .line 1045
    const-string v1, "CONDSTORE"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1048
    goto :goto_0

    .line 1046
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "CONDSTORE not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    :cond_1
    const-string v1, "QRESYNC"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1050
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "QRESYNC not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1055
    :cond_3
    :goto_0
    const-string v1, "EXAMINE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1059
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 1060
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1063
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1065
    array-length v4, v1

    sub-int/2addr v4, v3

    aget-object v3, v1, v4

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1066
    return-object v2
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    nop

    .line 1923
    const/4 v1, 0x0

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
    .locals 2
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

    .line 1619
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1620
    if-nez p2, :cond_0

    .line 1621
    const-string p2, ""

    .line 1622
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    const-string v1, "BODY.PEEK["

    goto :goto_0

    :cond_1
    const-string v1, "BODY["

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1
.end method

.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .locals 2
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1549
    if-nez p2, :cond_0

    .line 1550
    const-string p2, ""

    .line 1551
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string v1, "BODY.PEEK["

    goto :goto_0

    :cond_1
    const-string v1, "BODY["

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1504
    const-string v0, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1505
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1507
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1508
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1509
    const-class v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v2

    .line 1510
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1511
    return-object v3

    .line 1513
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1514
    return-object v3
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .locals 6
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1720
    const/4 v0, 0x0

    .line 1721
    .local v0, "flags":Ljavax/mail/Flags;
    const-string v1, "FLAGS"

    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1724
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "len":I
    :goto_0
    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 1725
    :cond_0
    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    .line 1726
    aget-object v4, v1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v4, :cond_2

    .line 1727
    aget-object v4, v1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 1728
    goto :goto_2

    .line 1730
    :cond_1
    aget-object v4, v1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1731
    .local v4, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Ljavax/mail/Flags;

    move-object v0, v5

    if-eqz v5, :cond_2

    .line 1732
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1733
    nop

    .line 1738
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1739
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1740
    return-object v0

    .line 1724
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fetchMODSEQ(I)Lcom/sun/mail/imap/protocol/MODSEQ;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1776
    const-string v0, "MODSEQ"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1779
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1781
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1782
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    const-class v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    return-object v2

    .line 1784
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1785
    return-object v3

    .line 1787
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1788
    return-object v3
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .locals 4
    .param p1, "msgno"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1694
    nop

    .line 1695
    if-nez p2, :cond_0

    const-string v0, "RFC822"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1694
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1699
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1701
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

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

    return-object v2

    .line 1704
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1705
    return-object v3

    .line 1707
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1708
    return-object v3
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

    .line 1642
    invoke-virtual {p0, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1643
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1645
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 1646
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 1647
    const-class v3, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {v0, p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 1648
    .local v3, "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 1649
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    return-object v2

    .line 1650
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1652
    const-string v6, " BODY responses for section "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1651
    invoke-virtual {v2, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1654
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1660
    return-object v4

    .line 1654
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/BODY;

    .line 1655
    .local v5, "br":Lcom/sun/mail/imap/protocol/BODY;
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

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1657
    :cond_4
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1658
    return-object v5

    .line 1661
    .end local v3    # "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    .end local v5    # "br":Lcom/sun/mail/imap/protocol/BODY;
    :cond_5
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1662
    return-object v4

    .line 1664
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1665
    return-object v4
.end method

.method public fetchSequenceNumber(J)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1803
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UID"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1805
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1806
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1807
    return-void
.end method

.method public fetchSequenceNumbers([J)V
    .locals 4
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1862
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1863
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 1869
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UID"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1871
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1872
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1873
    return-void

    .line 1864
    .local v1, "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 1865
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1866
    :cond_1
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fetchSequenceNumbers(JJ)[J
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    const-wide/16 v1, -0x1

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    const-string v1, "*"

    goto :goto_0

    .line 1827
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1826
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    nop

    .line 1825
    const-string v1, "UID"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1831
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UID;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    .local v4, "len":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 1841
    .end local v3    # "i":I
    .end local v4    # "len":I
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1842
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1844
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [J

    .line 1845
    .local v5, "lv":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1847
    .end local v2    # "i":I
    return-object v5

    .line 1846
    .restart local v2    # "i":I
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/UID;

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    aput-wide v3, v5, v2

    .line 1845
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1833
    .end local v2    # "i":I
    .end local v5    # "lv":[J
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    :cond_2
    aget-object v5, v0, v3

    if-eqz v5, :cond_4

    aget-object v5, v0, v3

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_3

    .line 1834
    goto :goto_3

    .line 1836
    :cond_3
    aget-object v5, v0, v3

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1837
    .local v5, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v6, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/protocol/UID;

    move-object v7, v6

    .local v7, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v6, :cond_4

    .line 1838
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1832
    .end local v5    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v7    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1751
    const-string v0, "UID"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1754
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1756
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1757
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1758
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    return-object v2

    .line 1759
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1760
    return-object v3

    .line 1762
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1763
    return-object v3
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .locals 12
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2788
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2792
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2794
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2795
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2797
    const-string v2, "GETACL"

    invoke-virtual {p0, v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2798
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2801
    .local v3, "response":Lcom/sun/mail/iap/Response;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/ACL;>;"
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2803
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_0

    goto :goto_4

    .line 2804
    :cond_0
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 2805
    goto :goto_3

    .line 2807
    :cond_1
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2808
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2812
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2813
    const/4 v8, 0x0

    .line 2814
    .local v8, "name":Ljava/lang/String;
    nop

    :goto_1
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 2815
    :cond_2
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    .line 2816
    .local v9, "rights":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 2817
    nop

    .line 2821
    .end local v9    # "rights":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x0

    aput-object v9, v2, v5

    goto :goto_3

    .line 2818
    .restart local v9    # "rights":Ljava/lang/String;
    :cond_3
    new-instance v10, Lcom/sun/mail/imap/ACL;

    new-instance v11, Lcom/sun/mail/imap/Rights;

    invoke-direct {v11, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v8, v11}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    .line 2819
    .local v10, "acl":Lcom/sun/mail/imap/ACL;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2803
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "rights":Ljava/lang/String;
    .end local v10    # "acl":Lcom/sun/mail/imap/ACL;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2827
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_5
    :goto_4
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2828
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2829
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/imap/ACL;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0

    .line 2789
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/ACL;>;"
    :cond_6
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities()Ljava/util/Map;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method protected getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;
    .locals 11
    .param p1, "rr"    # [Lcom/sun/mail/iap/Response;

    .line 2129
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 2150
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0

    .line 2130
    .restart local v0    # "i":I
    :cond_0
    aget-object v1, p1, v0

    .line 2131
    .local v1, "r":Lcom/sun/mail/iap/Response;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2132
    goto :goto_1

    .line 2134
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    move v3, v2

    .local v3, "b":B
    if-lez v2, :cond_2

    const/16 v2, 0x5b

    if-ne v3, v2, :cond_1

    .line 2136
    :cond_2
    if-nez v3, :cond_3

    .line 2137
    goto :goto_1

    .line 2139
    :cond_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    .line 2140
    .local v2, "s":Ljava/lang/String;
    const-string v4, "COPYUID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2141
    goto :goto_1

    .line 2144
    :cond_4
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 2145
    .local v4, "uidvalidity":J
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v6

    .line 2146
    .local v6, "src":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v7

    .line 2147
    .local v7, "dst":Ljava/lang/String;
    new-instance v8, Lcom/sun/mail/imap/CopyUID;

    .line 2148
    invoke-static {v6}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v9

    invoke-static {v7}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    .line 2147
    invoke-direct {v8, v4, v5, v9, v10}, Lcom/sun/mail/imap/CopyUID;-><init>(J[Lcom/sun/mail/imap/protocol/UIDSet;[Lcom/sun/mail/imap/protocol/UIDSet;)V

    return-object v8

    .line 2129
    .end local v1    # "r":Lcom/sun/mail/iap/Response;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "b":B
    .end local v4    # "uidvalidity":J
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "dst":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;
    .locals 1

    .line 197
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

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

    .line 2598
    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2601
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2602
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2604
    const-string v2, "GETQUOTA"

    invoke-virtual {p0, v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2606
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 2607
    .local v3, "quota":Ljavax/mail/Quota;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2608
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota;>;"
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    .line 2611
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2612
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v2

    .local v7, "len":I
    :goto_0
    if-lt v6, v7, :cond_0

    goto :goto_2

    .line 2613
    :cond_0
    aget-object v8, v2, v6

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_1

    .line 2614
    goto :goto_1

    .line 2616
    :cond_1
    aget-object v8, v2, v6

    check-cast v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2617
    .local v8, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v8, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2618
    invoke-direct {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v3

    .line 2619
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2620
    const/4 v9, 0x0

    aput-object v9, v2, v6

    .line 2612
    .end local v8    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2626
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2627
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2628
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Quota;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0

    .line 2599
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "quota":Ljavax/mail/Quota;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota;>;"
    .end local v5    # "response":Lcom/sun/mail/iap/Response;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "QUOTA not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 18
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2522
    move-object/from16 v0, p0

    const-string v1, "QUOTA"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2526
    invoke-static/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2528
    .end local p1    # "mbox":Ljava/lang/String;
    .local v2, "mbox":Ljava/lang/String;
    new-instance v3, Lcom/sun/mail/iap/Argument;

    invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2529
    .local v3, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v3, v2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2531
    const-string v4, "GETQUOTAROOT"

    invoke-virtual {v0, v4, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2533
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    .line 2535
    .local v5, "response":Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 2538
    .local v6, "tab":Ljava/util/Hashtable;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2539
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v4

    .local v8, "len":I
    :goto_0
    if-lt v7, v8, :cond_0

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 2540
    :cond_0
    aget-object v9, v4, v7

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_1

    .line 2541
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_4

    .line 2543
    :cond_1
    aget-object v9, v4, v7

    check-cast v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2544
    .local v9, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "QUOTAROOT"

    invoke-virtual {v9, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 2549
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2551
    const/4 v10, 0x0

    .line 2552
    .local v10, "root":Ljava/lang/String;
    nop

    :goto_1
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    if-eqz v12, :cond_3

    .line 2553
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    .line 2552
    if-gtz v12, :cond_2

    goto :goto_2

    .line 2554
    :cond_2
    new-instance v12, Ljavax/mail/Quota;

    invoke-direct {v12, v10}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2555
    :cond_3
    :goto_2
    aput-object v11, v4, v7

    .line 2556
    .end local v10    # "root":Ljava/lang/String;
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v9, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2557
    invoke-direct {v0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v10

    .line 2558
    .local v10, "quota":Ljavax/mail/Quota;
    iget-object v12, v10, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Quota;

    .line 2559
    .local v12, "q":Ljavax/mail/Quota;
    if-eqz v12, :cond_5

    iget-object v13, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v13, :cond_5

    .line 2561
    iget-object v13, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v13, v13

    iget-object v14, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v14, v14

    add-int/2addr v13, v14

    .line 2562
    .local v13, "newl":I
    new-array v14, v13, [Ljavax/mail/Quota$Resource;

    .line 2563
    .local v14, "newr":[Ljavax/mail/Quota$Resource;
    iget-object v15, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2564
    iget-object v11, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v11, v11

    .line 2563
    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v14, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2565
    iget-object v11, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2566
    iget-object v15, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v15, v15

    iget-object v1, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v1, v1

    .line 2565
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "mbox":Ljava/lang/String;
    .local v17, "mbox":Ljava/lang/String;
    invoke-static {v11, v2, v14, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2567
    iput-object v14, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    goto :goto_3

    .line 2559
    .end local v13    # "newl":I
    .end local v14    # "newr":[Ljavax/mail/Quota$Resource;
    .end local v17    # "mbox":Ljava/lang/String;
    .restart local v2    # "mbox":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 2569
    .end local v2    # "mbox":Ljava/lang/String;
    .restart local v17    # "mbox":Ljava/lang/String;
    :goto_3
    iget-object v1, v10, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v6, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2570
    const/4 v1, 0x0

    aput-object v1, v4, v7

    goto :goto_4

    .line 2556
    .end local v10    # "quota":Ljavax/mail/Quota;
    .end local v12    # "q":Ljavax/mail/Quota;
    .end local v17    # "mbox":Ljava/lang/String;
    .restart local v2    # "mbox":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 2539
    .end local v2    # "mbox":Ljava/lang/String;
    .end local v9    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .restart local v17    # "mbox":Ljava/lang/String;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 2538
    .end local v7    # "i":I
    .end local v8    # "len":I
    .end local v17    # "mbox":Ljava/lang/String;
    .restart local v2    # "mbox":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v2

    .line 2576
    .end local v2    # "mbox":Ljava/lang/String;
    .restart local v17    # "mbox":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2577
    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2579
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Quota;

    .line 2580
    .local v1, "qa":[Ljavax/mail/Quota;
    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 2581
    .local v2, "e":Ljava/util/Enumeration;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2583
    .end local v7    # "i":I
    return-object v1

    .line 2582
    .restart local v7    # "i":I
    :cond_8
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/Quota;

    aput-object v8, v1, v7

    .line 2581
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2523
    .end local v1    # "qa":[Ljavax/mail/Quota;
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v3    # "args":Lcom/sun/mail/iap/Argument;
    .end local v4    # "r":[Lcom/sun/mail/iap/Response;
    .end local v5    # "response":Lcom/sun/mail/iap/Response;
    .end local v6    # "tab":Ljava/util/Hashtable;
    .end local v7    # "i":I
    .end local v17    # "mbox":Ljava/lang/String;
    .restart local p1    # "mbox":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "GETQUOTAROOT not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 2

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

    .line 363
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .end local p1    # "c":Ljava/lang/String;
    .local v0, "c":Ljava/lang/String;
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 366
    .local v3, "it":Ljava/util/Iterator;
    nop

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 370
    return v2

    .line 367
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    return v1

    .line 372
    .end local v0    # "c":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;
    .restart local p1    # "c":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
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

    .line 3092
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3095
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/ID;->getArgumentList(Ljava/util/Map;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 3097
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 3098
    .local v2, "id":Lcom/sun/mail/imap/protocol/ID;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    .line 3101
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 3102
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v1

    .local v6, "len":I
    :goto_0
    if-lt v4, v6, :cond_0

    goto :goto_2

    .line 3103
    :cond_0
    aget-object v7, v1, v4

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 3104
    goto :goto_1

    .line 3106
    :cond_1
    aget-object v7, v1, v4

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3107
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3108
    if-nez v2, :cond_2

    .line 3109
    new-instance v8, Lcom/sun/mail/imap/protocol/ID;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/ID;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v2, v8

    .line 3110
    :cond_2
    aput-object v5, v1, v4

    .line 3102
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3116
    .end local v4    # "i":I
    .end local v6    # "len":I
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3117
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3118
    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/ID;->getServerParams()Ljava/util/Map;

    move-result-object v5

    :goto_3
    return-object v5

    .line 3093
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    .end local v2    # "id":Lcom/sun/mail/imap/protocol/ID;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_6
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ID not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 3071
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 3073
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3074
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3075
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3077
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception aborting IDLE"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3079
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized idleStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 2957
    :try_start_0
    const-string v0, "IDLE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2961
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 2962
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 2966
    .local v2, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    const-string v3, "IDLE"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_1
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2967
    goto :goto_0

    .line 2970
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v3

    .line 2972
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2973
    const/4 v1, 0x1

    .line 2976
    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 2967
    :catch_1
    move-exception v3

    .line 2968
    .local v3, "lex":Lcom/sun/mail/iap/LiteralException;
    invoke-virtual {v3}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2969
    const/4 v1, 0x1

    .line 2976
    .end local v3    # "lex":Lcom/sun/mail/iap/LiteralException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 2992
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/iap/Response;

    .line 2993
    .local v3, "responses":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    move-object v2, v4

    .line 2996
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2997
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2998
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2999
    :cond_1
    monitor-exit p0

    return-void

    .line 2978
    .end local v3    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 2979
    goto :goto_1

    .line 2982
    :catch_2
    move-exception v3

    .line 2983
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_0

    .line 2979
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v3

    .line 2981
    .local v3, "ioex":Ljava/io/IOException;
    :try_start_4
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    move-object v2, v4

    .line 2986
    .end local v3    # "ioex":Ljava/io/IOException;
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2988
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2989
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 2958
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "done":Z
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "IDLE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;

    .line 1113
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1114
    const/4 v0, 0x0

    return v0

    .line 1116
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isREV1()Z
    .locals 1

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

    .line 2843
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2847
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
    const-string v1, "LISTRIGHTS"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2854
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2857
    .local v3, "response":Lcom/sun/mail/iap/Response;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2858
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights;>;"
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2859
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_0

    goto :goto_3

    .line 2860
    :cond_0
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 2861
    goto :goto_2

    .line 2863
    :cond_1
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2864
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2868
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2870
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2872
    nop

    :goto_1
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "rights":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 2874
    const/4 v8, 0x0

    aput-object v8, v2, v5

    goto :goto_2

    .line 2873
    :cond_2
    new-instance v8, Lcom/sun/mail/imap/Rights;

    invoke-direct {v8, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2859
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v9    # "rights":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2880
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_4
    :goto_3
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2881
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2882
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/Rights;

    return-object v1

    .line 2844
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights;>;"
    :cond_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 446
    nop

    .line 447
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 451
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 454
    iget-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LOGIN command result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 456
    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 458
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 460
    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 415
    :try_start_0
    const-string v0, "LOGOUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 417
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 420
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    nop

    .line 422
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 424
    return-void

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 423
    throw v0
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

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2048
    nop

    .line 2047
    const/4 v1, 0x0

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

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2082
    nop

    .line 2081
    const/4 v1, 0x1

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

    .line 2894
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2898
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2900
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2901
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2903
    const-string v1, "MYRIGHTS"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2904
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2907
    .local v3, "response":Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 2908
    .local v4, "rights":Lcom/sun/mail/imap/Rights;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2909
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_0

    goto :goto_2

    .line 2910
    :cond_0
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 2911
    goto :goto_1

    .line 2913
    :cond_1
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2914
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2917
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2918
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v8

    .line 2919
    .local v8, "rs":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2920
    new-instance v9, Lcom/sun/mail/imap/Rights;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 2921
    :cond_2
    const/4 v9, 0x0

    aput-object v9, v2, v5

    .line 2909
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "rs":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2927
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2928
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2929
    return-object v4

    .line 2895
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "rights":Lcom/sun/mail/imap/Rights;
    :cond_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2480
    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2483
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2485
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 2486
    .local v3, "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    .line 2489
    .local v4, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2490
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_0

    goto :goto_2

    .line 2491
    :cond_0
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_1

    .line 2492
    goto :goto_1

    .line 2494
    :cond_1
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2495
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2496
    if-nez v3, :cond_2

    .line 2497
    new-instance v8, Lcom/sun/mail/imap/protocol/Namespaces;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v3, v8

    .line 2498
    :cond_2
    aput-object v1, v2, v5

    .line 2490
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2504
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2505
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2506
    return-object v3

    .line 2481
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    .end local v4    # "response":Lcom/sun/mail/iap/Response;
    :cond_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "NAMESPACE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 259
    nop

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_2

    .line 262
    nop

    .line 284
    :goto_1
    return-void

    .line 274
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    .line 275
    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "AUTH="

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AUTH: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_4
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

    .line 293
    invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 294
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 296
    return-void

    .line 299
    :cond_0
    nop

    .line 300
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 301
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 303
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 304
    nop

    .line 308
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 306
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v1
.end method

.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3038
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 3039
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3040
    const/4 v1, 0x0

    .line 3041
    .local v1, "done":Z
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3043
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3044
    const/4 v1, 0x1

    .line 3047
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3048
    const/4 v1, 0x1

    .line 3050
    :cond_1
    if-eqz v1, :cond_2

    .line 3051
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    .line 3053
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3054
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public proxyauth(Ljava/lang/String;)V
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
    .locals 3

    monitor-enter p0

    .line 3012
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3013
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 3014
    :cond_0
    const/4 v0, 0x0

    .line 3016
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 3017
    goto :goto_0

    .line 3020
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v1

    .line 3022
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3017
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 3019
    .local v1, "ioex":Ljava/io/IOException;
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 3024
    .end local v1    # "ioex":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 3011
    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 348
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 349
    .local v0, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    new-instance v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    move-object v0, v1

    .line 351
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
    .locals 14
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

    .line 792
    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sasl.usecanonicalhostname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 795
    .local v3, "useCanonicalHostName":Z
    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v0, "serviceHost":Ljava/lang/String;
    goto :goto_0

    .line 798
    .end local v0    # "serviceHost":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    move-object v5, v0

    .line 799
    .local v5, "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 802
    :try_start_0
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    .line 801
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 803
    .local v0, "sac":Ljava/lang/Class;
    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    .line 804
    const-class v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    aput-object v9, v8, v4

    .line 805
    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    .line 806
    const-class v9, Ljava/util/Properties;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 807
    const-class v9, Lcom/sun/mail/util/MailLogger;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 808
    const-class v9, Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v9, v8, v12

    .line 803
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 810
    .local v8, "c":Ljava/lang/reflect/Constructor;
    nop

    .line 811
    new-array v7, v7, [Ljava/lang/Object;

    .line 812
    aput-object v1, v7, v4

    .line 813
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v4, v7, v6

    .line 814
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v4, v7, v10

    .line 815
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v4, v7, v11

    .line 816
    aput-object v5, v7, v12

    .line 810
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v0    # "sac":Ljava/lang/Class;
    .end local v8    # "c":Ljava/lang/reflect/Constructor;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 819
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Can\'t load SASL authenticator"

    invoke-virtual {v4, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    return-void

    .line 827
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    array-length v0, v2

    if-lez v0, :cond_4

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 830
    .local v0, "v":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, v2

    if-lt v4, v7, :cond_2

    .line 833
    .end local v4    # "i":I
    move-object v4, v0

    goto :goto_3

    .line 831
    .restart local v4    # "i":I
    :cond_2
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    aget-object v8, v2, v4

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 832
    aget-object v7, v2, v4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 835
    .end local v0    # "v":Ljava/util/List;
    .end local v4    # "i":I
    :cond_4
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    move-object v4, v0

    .line 837
    .local v4, "v":Ljava/util/List;
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 841
    .local v13, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 842
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "SASL authentication command trace suppressed"

    invoke-virtual {v0, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V

    .line 846
    :cond_5
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v8, v13

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 847
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 848
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "SASL authentication succeeded"

    invoke-virtual {v0, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 849
    :cond_6
    iput-boolean v6, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 850
    goto :goto_4

    .line 851
    :cond_7
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 852
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "SASL authentication failed"

    invoke-virtual {v0, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 857
    return-void

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

    .line 956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 7
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
    if-eqz p2, :cond_3

    .line 979
    sget-object v1, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v1, :cond_1

    .line 980
    const-string v1, "CONDSTORE"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 983
    goto :goto_0

    .line 981
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "CONDSTORE not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 984
    :cond_1
    const-string v1, "QRESYNC"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 986
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 985
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "QRESYNC not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 990
    :cond_3
    :goto_0
    const-string v1, "SELECT"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 994
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 997
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 999
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 1001
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1002
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "READ-ONLY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 1003
    iput v4, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_1

    .line 1005
    :cond_4
    const/4 v4, 0x2

    iput v4, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1008
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1009
    return-object v2
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .locals 4
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "modifier"    # C
    .param p3, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2730
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2734
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

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2739
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2740
    .local v1, "rights":Ljava/lang/String;
    const/16 v2, 0x2b

    if-eq p2, v2, :cond_0

    const/16 v2, 0x2d

    if-ne p2, v2, :cond_1

    .line 2741
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2742
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2744
    const-string v2, "SETACL"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2745
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2748
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2749
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2750
    return-void

    .line 2731
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "rights":Ljava/lang/String;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    move v1, v0

    .local v1, "b":B
    if-lez v0, :cond_1

    const/16 v0, 0x5b

    if-ne v1, v0, :cond_0

    .line 240
    :cond_1
    if-nez v1, :cond_2

    .line 241
    return-void

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "s":Ljava/lang/String;
    const-string v2, "CAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    return-void

    .line 246
    :cond_3
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

    .line 249
    return-void
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 5
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2641
    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2644
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2645
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    iget-object v1, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2646
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2647
    .local v1, "qargs":Lcom/sun/mail/iap/Argument;
    iget-object v2, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v2, :cond_1

    .line 2648
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 2649
    :cond_0
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-object v3, v3, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2650
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-wide v3, v3, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 2648
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2653
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2655
    const-string v2, "SETQUOTA"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2656
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2683
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2684
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2688
    return-void

    .line 2642
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "qargs":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "QUOTA not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I
    .locals 13
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2415
    const-string v0, "SORT*"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2418
    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    .line 2421
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2422
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2423
    .local v1, "sargs":Lcom/sun/mail/iap/Argument;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_7

    .line 2425
    .end local v2    # "i":I
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2427
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2428
    if-eqz p2, :cond_0

    .line 2430
    nop

    .line 2431
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    .line 2430
    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    goto :goto_1

    :catch_0
    move-exception v2

    .line 2434
    .local v2, "ioex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/search/SearchException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2437
    .end local v2    # "ioex":Ljava/io/IOException;
    :cond_0
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2439
    :goto_1
    const-string v2, "SORT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 2440
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    .line 2441
    .local v4, "response":Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 2444
    .local v5, "matches":[I
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2445
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v6, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v3

    .local v8, "len":I
    :goto_2
    if-lt v7, v8, :cond_2

    .line 2460
    .end local v7    # "i":I
    .end local v8    # "len":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 2461
    .local v9, "vsize":I
    new-array v10, v9, [I

    .line 2462
    .end local v5    # "matches":[I
    .local v10, "matches":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v9, :cond_1

    move-object v5, v10

    goto :goto_6

    .line 2463
    :cond_1
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v10, v2

    .line 2462
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2448
    .end local v2    # "i":I
    .end local v9    # "vsize":I
    .end local v10    # "matches":[I
    .restart local v5    # "matches":[I
    .restart local v7    # "i":I
    .restart local v8    # "len":I
    :cond_2
    aget-object v9, v3, v7

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_3

    .line 2449
    goto :goto_5

    .line 2451
    :cond_3
    aget-object v9, v3, v7

    check-cast v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2452
    .local v9, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v9, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2453
    nop

    :goto_4
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v10

    move v11, v10

    .local v11, "num":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_4

    .line 2455
    const/4 v10, 0x0

    aput-object v10, v3, v7

    goto :goto_5

    .line 2454
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2447
    .end local v9    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v11    # "num":I
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2467
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .end local v8    # "len":I
    :cond_6
    :goto_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2468
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2469
    return-object v5

    .line 2424
    .end local v3    # "r":[Lcom/sun/mail/iap/Response;
    .end local v4    # "response":Lcom/sun/mail/iap/Response;
    .end local v5    # "matches":[I
    .restart local v2    # "i":I
    :cond_7
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/SortTerm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2423
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2419
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "sargs":Lcom/sun/mail/iap/Argument;
    .end local v2    # "i":I
    :cond_8
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "Must have at least one sort term"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2416
    :cond_9
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "SORT not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTLS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 929
    :try_start_0
    const-string v0, "STARTTLS"

    invoke-super {p0, v0}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    nop

    .line 945
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "STARTTLS Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 940
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/mail/iap/Response;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v3

    aput-object v3, v1, v2

    .line 941
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 942
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 943
    new-instance v2, Lcom/sun/mail/iap/ProtocolException;

    const-string v3, "STARTTLS failure"

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 930
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v0

    .line 931
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "STARTTLS ProtocolException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    throw v0
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

    .line 1143
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IMAP4SUNVERSION"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "STATUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1151
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1152
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1154
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1155
    .local v1, "itemArgs":Lcom/sun/mail/iap/Argument;
    if-nez p2, :cond_2

    .line 1156
    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 1158
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p2

    .local v3, "len":I
    :goto_1
    if-lt v2, v3, :cond_8

    .line 1160
    .end local v2    # "i":I
    .end local v3    # "len":I
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1162
    const-string v2, "STATUS"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1164
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 1165
    .local v4, "status":Lcom/sun/mail/imap/protocol/Status;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    .line 1168
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1169
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v3

    .local v7, "len":I
    :goto_2
    if-lt v6, v7, :cond_3

    goto :goto_5

    .line 1170
    :cond_3
    aget-object v8, v3, v6

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 1171
    goto :goto_4

    .line 1173
    :cond_4
    aget-object v8, v3, v6

    check-cast v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1174
    .local v8, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v8, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1175
    if-nez v4, :cond_5

    .line 1176
    new-instance v9, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v4, v9

    goto :goto_3

    .line 1178
    :cond_5
    new-instance v9, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v4, v9}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    .line 1179
    :goto_3
    const/4 v9, 0x0

    aput-object v9, v3, v6

    .line 1169
    .end local v8    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1185
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_7
    :goto_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1186
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1187
    return-object v4

    .line 1159
    .end local v4    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local v5    # "response":Lcom/sun/mail/iap/Response;
    .restart local v2    # "i":I
    .local v3, "len":I
    :cond_8
    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
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

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    nop

    .line 2160
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

    .line 1490
    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID EXPUNGE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1493
    return-void

    .line 1491
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UID EXPUNGE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uidfetchChangedSince(JJJ)[I
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-wide/16 v1, -0x1

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    const-string v1, "*"

    goto :goto_0

    .line 1892
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1891
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "msgSequence":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID FETCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string v2, " (FLAGS) (CHANGEDSINCE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1893
    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1896
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v2, "v":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "len":I
    :goto_1
    if-lt v3, v4, :cond_2

    .line 1905
    .end local v3    # "i":I
    .end local v4    # "len":I
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1906
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1909
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1910
    .local v5, "vsize":I
    new-array v6, v5, [I

    .line 1911
    .local v6, "matches":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v5, :cond_1

    .line 1913
    .end local v3    # "i":I
    return-object v6

    .line 1912
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v6, v3

    .line 1911
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1898
    .end local v5    # "vsize":I
    .end local v6    # "matches":[I
    .restart local v4    # "len":I
    :cond_2
    aget-object v5, v1, v3

    if-eqz v5, :cond_4

    aget-object v5, v1, v3

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_3

    .line 1899
    goto :goto_3

    .line 1901
    :cond_3
    aget-object v5, v1, v3

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1902
    .local v5, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1897
    .end local v5    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public unauthenticate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 898
    const-string v0, "X-UNAUTHENTICATE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x0

    const-string v1, "UNAUTHENTICATE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 902
    return-void

    .line 899
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNAUTHENTICATE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unselect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1127
    const-string v0, "UNSELECT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1130
    return-void

    .line 1128
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNSELECT not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

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
