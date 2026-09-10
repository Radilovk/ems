.class public Lcom/sun/mail/smtp/SMTPSaslAuthenticator;
.super Ljava/lang/Object;
.source "SMTPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/smtp/SaslAuthenticator;


# instance fields
.field private host:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private name:Ljava/lang/String;

.field private pr:Lcom/sun/mail/smtp/SMTPTransport;

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    :try_start_0
    invoke-static {}, Lcom/sun/mail/auth/OAuth2SaslClientFactory;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 76
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;Ljava/util/Properties;Lcom/sun/mail/util/MailLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "pr"    # Lcom/sun/mail/smtp/SMTPTransport;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "logger"    # Lcom/sun/mail/util/MailLogger;
    .param p5, "host"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    .line 81
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->name:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 83
    iput-object p4, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    .line 84
    iput-object p5, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->host:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method private static final responseText(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 3
    .param p0, "pr"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 239
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "resp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    :cond_0
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "mechs"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 92
    .local v9, "done":Z
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v10, ""

    const-string v11, " "

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL Mechanisms:"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v8

    if-lt v0, v2, :cond_0

    .line 96
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v0, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v8, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_1
    :goto_1
    new-instance v7, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct {v7, v1, v13, v14, v12}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;-><init>(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v7, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_start_0
    iget-object v4, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->host:Ljava/lang/String;

    .line 139
    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 138
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;

    move-result-object v0
    :try_end_0
    .catch Ljavax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v0

    .line 140
    .local v2, "sc":Ljavax/security/sasl/SaslClient;
    nop

    .line 144
    if-eqz v2, :cond_14

    .line 148
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SASL client "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 153
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "mech":Ljava/lang/String;
    const/4 v4, 0x0

    .line 155
    .local v4, "ir":Ljava/lang/String;
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->hasInitialResponse()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    new-array v5, v3, [B

    invoke-interface {v2, v5}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v5

    .line 157
    .local v5, "ba":[B
    array-length v6, v5

    if-lez v6, :cond_3

    .line 158
    invoke-static {v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v6

    move-object v5, v6

    .line 159
    array-length v6, v5

    invoke-static {v5, v3, v6}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    const-string v6, "="
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 163
    .end local v5    # "ba":[B
    :cond_4
    :goto_2
    const-string v5, "AUTH "

    if-eqz v4, :cond_5

    .line 164
    :try_start_2
    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v6

    .local v6, "resp":I
    goto :goto_3

    .line 166
    .end local v6    # "resp":I
    :cond_5
    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v6

    .line 172
    .restart local v6    # "resp":I
    :goto_3
    const/16 v15, 0x212

    if-ne v6, v15, :cond_7

    .line 173
    iget-object v15, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v15}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 174
    if-eqz v4, :cond_6

    .line 175
    iget-object v15, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    goto :goto_4

    .line 177
    :cond_6
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v3

    .line 180
    :cond_7
    :goto_4
    const/16 v3, 0xeb

    const/4 v5, 0x1

    if-ne v6, v3, :cond_8

    .line 181
    return v5

    .line 183
    :cond_8
    const/16 v11, 0x14e

    if-eq v6, v11, :cond_9

    .line 184
    const/4 v15, 0x0

    return v15

    .line 183
    :cond_9
    const/4 v15, 0x0

    .line 190
    .end local v0    # "mech":Ljava/lang/String;
    .end local v4    # "ir":Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_d

    .line 221
    if-eq v6, v3, :cond_a

    .line 222
    return v15

    .line 224
    :cond_a
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 225
    const-string v0, "javax.security.sasl.qop"

    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_c

    const-string v3, "auth-int"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 227
    const-string v3, "auth-conf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 229
    :cond_b
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    .line 230
    nop

    .line 229
    const-string v4, "SASL Mechanism requires integrity or confidentiality"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x0

    return v3

    .line 235
    .end local v0    # "qop":Ljava/lang/String;
    :cond_c
    return v5

    .line 192
    :cond_d
    if-ne v6, v11, :cond_13

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "ba":[B
    :try_start_3
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v15, " :"

    if-nez v4, :cond_10

    .line 195
    :try_start_4
    iget-object v4, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->responseText(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, v4

    .line 196
    array-length v4, v0

    if-lez v4, :cond_e

    .line 197
    invoke-static {v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v4

    move-object v0, v4

    .line 198
    :cond_e
    iget-object v4, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 199
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SASL challenge: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    array-length v5, v0

    const/4 v11, 0x0

    invoke-static {v0, v11, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 201
    :cond_f
    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v3

    move-object v0, v3

    .line 203
    :cond_10
    if-nez v0, :cond_11

    .line 204
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL: no response"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 205
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v3, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    .line 206
    const/16 v3, 0xeb

    const/4 v5, 0x1

    const/16 v11, 0x14e

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 207
    :cond_11
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 208
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SASL response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    array-length v5, v0

    const/4 v11, 0x0

    invoke-static {v0, v11, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 210
    :cond_12
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v3

    move-object v0, v3

    .line 211
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v3, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v6, v3

    .line 213
    .end local v0    # "ba":[B
    const/16 v3, 0xeb

    const/4 v5, 0x1

    const/16 v11, 0x14e

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ioex":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "SASL Exception"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    const/4 v9, 0x1

    const/16 v3, 0xeb

    const/4 v5, 0x1

    const/16 v11, 0x14e

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 214
    .end local v0    # "ioex":Ljava/lang/Exception;
    :cond_13
    const/4 v9, 0x1

    .line 215
    const/16 v3, 0xeb

    const/4 v5, 0x1

    const/16 v11, 0x14e

    const/4 v15, 0x0

    goto/16 :goto_5

    .line 185
    .end local v6    # "resp":I
    :catch_1
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "SASL AUTHENTICATE Exception"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const/4 v3, 0x0

    return v3

    .line 145
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_14
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "No SASL support"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    .end local v2    # "sc":Ljavax/security/sasl/SaslClient;
    :catch_2
    move-exception v0

    .line 141
    .local v0, "sex":Ljavax/security/sasl/SaslException;
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed to create SASL client"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljavax/security/sasl/SaslException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
