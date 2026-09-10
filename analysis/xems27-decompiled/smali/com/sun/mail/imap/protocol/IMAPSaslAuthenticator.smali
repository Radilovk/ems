.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private host:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private name:Ljava/lang/String;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    :try_start_0
    invoke-static {}, Lcom/sun/mail/auth/OAuth2SaslClientFactory;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 77
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;Lcom/sun/mail/util/MailLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "pr"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "logger"    # Lcom/sun/mail/util/MailLogger;
    .param p5, "host"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 82
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 84
    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    .line 85
    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "mechs"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 92
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    iget-object v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter v10

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 94
    .local v11, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v12, 0x0

    .line 95
    .local v12, "tag":Ljava/lang/String;
    const/4 v13, 0x0

    .line 96
    .local v13, "r":Lcom/sun/mail/iap/Response;
    const/4 v14, 0x0

    .line 97
    .local v14, "done":Z
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL Mechanisms:"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v8

    if-lt v0, v2, :cond_0

    .line 101
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v8, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_1
    :goto_1
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v15, p2

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    :try_start_1
    invoke-direct {v7, v1, v6, v5, v15}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .local v7, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_start_2
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 144
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 143
    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    move-object v5, v0

    move-object/from16 v6, v16

    invoke-static/range {v2 .. v7}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;

    move-result-object v0
    :try_end_2
    .catch Ljavax/security/sasl/SaslException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v0

    .line 145
    .local v2, "sc":Ljavax/security/sasl/SaslClient;
    nop

    .line 149
    if-eqz v2, :cond_15

    .line 153
    :try_start_3
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SASL client "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 158
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 159
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "SASL-IR"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->hasInitialResponse()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    new-array v4, v3, [B

    invoke-interface {v2, v4}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v4

    .line 162
    .local v4, "ba":[B
    array-length v5, v4

    if-lez v5, :cond_3

    .line 163
    invoke-static {v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v5

    move-object v4, v5

    .line 164
    array-length v5, v4

    invoke-static {v4, v3, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "irs":Ljava/lang/String;
    goto :goto_2

    .line 166
    .end local v5    # "irs":Ljava/lang/String;
    :cond_3
    const-string v5, "="

    .line 167
    .restart local v5    # "irs":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 170
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v4    # "ba":[B
    .end local v5    # "irs":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v17, v7

    goto/16 :goto_c

    .line 169
    .restart local v0    # "args":Lcom/sun/mail/iap/Argument;
    :cond_4
    :goto_3
    :try_start_6
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "AUTHENTICATE"

    invoke-virtual {v4, v5, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v12    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    nop

    .line 175
    :try_start_7
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v5, v0

    .line 190
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    .line 191
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v12, 0xd

    aput-byte v12, v0, v3

    const/16 v12, 0xa

    const/4 v3, 0x1

    aput-byte v12, v0, v3

    move-object v12, v0

    .line 197
    .local v12, "CRLF":[B
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "XGWTRUSTEDAPP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v17, v7

    .end local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .local v17, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    const-string v7, "mail."

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".sasl.xgwtrustedapphack.enable"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 196
    const/4 v0, 0x1

    goto :goto_4

    .line 197
    .end local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :cond_5
    move-object/from16 v17, v7

    .line 196
    .end local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :cond_6
    const/4 v0, 0x0

    :goto_4
    move v3, v0

    .line 200
    .local v3, "isXGWTRUSTEDAPP":Z
    nop

    :goto_5
    if-eqz v14, :cond_b

    .line 249
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    const-string v0, "javax.security.sasl.qop"

    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v7, "auth-int"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 252
    const-string v7, "auth-conf"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 254
    :cond_7
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    .line 255
    move-object/from16 v18, v0

    .end local v0    # "qop":Ljava/lang/String;
    .local v18, "qop":Ljava/lang/String;
    const-string v0, "SASL Mechanism requires integrity or confidentiality"

    .line 254
    invoke-virtual {v7, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 256
    monitor-exit v10

    const/4 v7, 0x0

    return v7

    .line 251
    .end local v18    # "qop":Ljava/lang/String;
    .restart local v0    # "qop":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v0

    .line 266
    .end local v0    # "qop":Ljava/lang/String;
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/iap/Response;

    .line 267
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 270
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 271
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 278
    if-eqz v3, :cond_a

    if-eqz v9, :cond_a

    .line 279
    new-instance v7, Lcom/sun/mail/iap/Argument;

    invoke-direct {v7}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 280
    .local v7, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v7, v9}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 282
    move-object/from16 v16, v0

    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    .local v16, "responses":[Lcom/sun/mail/iap/Response;
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v8, "LOGIN"

    invoke-virtual {v0, v8, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 285
    .end local v16    # "responses":[Lcom/sun/mail/iap/Response;
    .restart local v0    # "responses":[Lcom/sun/mail/iap/Response;
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 288
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v18, v7

    .end local v7    # "args":Lcom/sun/mail/iap/Argument;
    .local v18, "args":Lcom/sun/mail/iap/Argument;
    array-length v7, v0

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v8, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 290
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    array-length v8, v0

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_6

    .line 278
    .end local v18    # "args":Lcom/sun/mail/iap/Argument;
    :cond_a
    move-object/from16 v16, v0

    .line 292
    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    .restart local v16    # "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, v16

    .end local v16    # "responses":[Lcom/sun/mail/iap/Response;
    .restart local v0    # "responses":[Lcom/sun/mail/iap/Response;
    :goto_6
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v7, 0x1

    return v7

    .line 202
    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_b
    const/4 v7, 0x1

    :try_start_8
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    move-object v13, v0

    .line 203
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "ba":[B
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v8

    if-nez v8, :cond_e

    .line 206
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v8

    move-object v0, v8

    .line 207
    array-length v8, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lez v8, :cond_c

    .line 208
    :try_start_9
    invoke-static {v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v0, v8

    goto :goto_7

    .line 240
    .end local v0    # "ba":[B
    :catch_1
    move-exception v0

    move/from16 v18, v14

    goto/16 :goto_b

    .line 209
    .restart local v0    # "ba":[B
    :cond_c
    :goto_7
    :try_start_a
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 210
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SASL challenge: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    array-length v9, v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v18, v14

    const/4 v14, 0x0

    .end local v14    # "done":Z
    .local v18, "done":Z
    :try_start_b
    invoke-static {v0, v14, v9}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_8

    .line 209
    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    :cond_d
    move/from16 v18, v14

    .line 212
    .end local v14    # "done":Z
    .restart local v18    # "done":Z
    :goto_8
    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v7

    move-object v0, v7

    goto :goto_9

    .line 205
    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    :cond_e
    move/from16 v18, v14

    .line 214
    .end local v14    # "done":Z
    .restart local v18    # "done":Z
    :goto_9
    if-nez v0, :cond_f

    .line 215
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v8, "SASL no response"

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v12}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 218
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 219
    goto/16 :goto_a

    .line 220
    :cond_f
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 221
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SASL response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    array-length v9, v0

    const/4 v14, 0x0

    invoke-static {v0, v14, v9}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 221
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 223
    :cond_10
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v7

    move-object v0, v7

    .line 224
    if-eqz v3, :cond_11

    .line 225
    const-string v7, "XGWTRUSTEDAPP "

    invoke-static {v7}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    :cond_11
    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 228
    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 231
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 233
    .end local v0    # "ba":[B
    goto :goto_a

    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    :cond_12
    move/from16 v18, v14

    .end local v14    # "done":Z
    .restart local v18    # "done":Z
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    const/4 v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    goto/16 :goto_5

    .line 236
    .end local v14    # "done":Z
    .restart local v18    # "done":Z
    :cond_13
    invoke-virtual {v13}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 237
    const/4 v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    goto/16 :goto_5

    .line 239
    .end local v14    # "done":Z
    .restart local v18    # "done":Z
    :cond_14
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 240
    nop

    .line 200
    :goto_a
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v14, v18

    goto/16 :goto_5

    .line 240
    :catch_2
    move-exception v0

    goto :goto_b

    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    :catch_3
    move-exception v0

    move/from16 v18, v14

    .line 241
    .end local v14    # "done":Z
    .local v0, "ioex":Ljava/lang/Exception;
    .restart local v18    # "done":Z
    :goto_b
    :try_start_c
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "SASL Exception"

    invoke-virtual {v7, v8, v9, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v7

    move-object v13, v7

    .line 244
    const/4 v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .end local v18    # "done":Z
    .restart local v14    # "done":Z
    goto/16 :goto_5

    .line 170
    .end local v0    # "ioex":Ljava/lang/Exception;
    .end local v3    # "isXGWTRUSTEDAPP":Z
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .local v7, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .local v12, "tag":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v17, v7

    .line 171
    .end local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :goto_c
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "SASL AUTHENTICATE Exception"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    monitor-exit v10

    const/4 v3, 0x0

    return v3

    .line 150
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :cond_15
    move-object/from16 v17, v7

    .end local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "No SASL support"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "No SASL support"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mechs":[Ljava/lang/String;
    .end local p2    # "realm":Ljava/lang/String;
    .end local p3    # "authzid":Ljava/lang/String;
    .end local p4    # "u":Ljava/lang/String;
    .end local p5    # "p":Ljava/lang/String;
    throw v0

    .line 145
    .end local v2    # "sc":Ljavax/security/sasl/SaslClient;
    .end local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local p1    # "mechs":[Ljava/lang/String;
    .restart local p2    # "realm":Ljava/lang/String;
    .restart local p3    # "authzid":Ljava/lang/String;
    .restart local p4    # "u":Ljava/lang/String;
    .restart local p5    # "p":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v17, v7

    .line 146
    .end local v7    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .local v0, "sex":Ljavax/security/sasl/SaslException;
    .restart local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed to create SASL client"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljavax/security/sasl/SaslException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "mechs":[Ljava/lang/String;
    .end local p2    # "realm":Ljava/lang/String;
    .end local p3    # "authzid":Ljava/lang/String;
    .end local p4    # "u":Ljava/lang/String;
    .end local p5    # "p":Ljava/lang/String;
    throw v2

    .line 92
    .end local v0    # "sex":Ljavax/security/sasl/SaslException;
    .end local v11    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "r":Lcom/sun/mail/iap/Response;
    .end local v14    # "done":Z
    .end local v17    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .restart local p1    # "mechs":[Ljava/lang/String;
    .restart local p2    # "realm":Ljava/lang/String;
    .restart local p3    # "authzid":Ljava/lang/String;
    .restart local p4    # "u":Ljava/lang/String;
    .restart local p5    # "p":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p2

    :goto_d
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d
.end method
