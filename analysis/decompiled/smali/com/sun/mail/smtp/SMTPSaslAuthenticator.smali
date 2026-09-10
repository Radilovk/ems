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

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/sun/mail/auth/OAuth2SaslClientFactory;->init()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;Ljava/util/Properties;Lcom/sun/mail/util/MailLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "pr"    # Lcom/sun/mail/smtp/SMTPTransport;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "logger"    # Lcom/sun/mail/util/MailLogger;
    .param p5, "host"    # Ljava/lang/String;

    .prologue
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
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method private static final responseText(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 3
    .param p0, "pr"    # Lcom/sun/mail/smtp/SMTPTransport;

    .prologue
    const/4 v2, 0x4

    .line 239
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "resp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
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

    .prologue
    .line 91
    const/4 v11, 0x0

    .line 92
    .local v11, "done":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "SASL Mechanisms:"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 94
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-lt v13, v4, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 100
    .end local v13    # "i":I
    :cond_0
    new-instance v9, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;-><init>(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v9, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->host:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 138
    invoke-static/range {v4 .. v9}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;
    :try_end_0
    .catch Ljavax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 144
    .local v19, "sc":Ljavax/security/sasl/SaslClient;
    if-nez v19, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "No SASL support"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "No SASL support"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    .end local v19    # "sc":Ljavax/security/sasl/SaslClient;
    .restart local v13    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p1, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 140
    .end local v13    # "i":I
    .restart local v9    # "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :catch_0
    move-exception v20

    .line 141
    .local v20, "sex":Ljavax/security/sasl/SaslException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Failed to create SASL client"

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v6, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {v20 .. v20}, Ljavax/security/sasl/SaslException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v20    # "sex":Ljavax/security/sasl/SaslException;
    .restart local v19    # "sc":Ljavax/security/sasl/SaslClient;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SASL client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 153
    :cond_3
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "mech":Ljava/lang/String;
    const/4 v15, 0x0

    .line 155
    .local v15, "ir":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljavax/security/sasl/SaslClient;->hasInitialResponse()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    const/4 v4, 0x0

    new-array v4, v4, [B

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v10

    .line 157
    .local v10, "ba":[B
    array-length v4, v10

    if-lez v4, :cond_6

    .line 158
    invoke-static {v10}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v10

    .line 159
    const/4 v4, 0x0

    array-length v5, v10

    invoke-static {v10, v4, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v15

    .line 163
    .end local v10    # "ba":[B
    :cond_4
    :goto_1
    if-eqz v15, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v18

    .line 172
    .local v18, "resp":I
    :goto_2
    const/16 v4, 0x212

    move/from16 v0, v18

    if-ne v0, v4, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 174
    if-eqz v15, :cond_8

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v18

    .line 180
    :cond_5
    :goto_3
    const/16 v4, 0xeb

    move/from16 v0, v18

    if-ne v0, v4, :cond_9

    .line 181
    const/4 v4, 0x1

    .line 235
    .end local v15    # "ir":Ljava/lang/String;
    .end local v16    # "mech":Ljava/lang/String;
    .end local v18    # "resp":I
    :goto_4
    return v4

    .line 161
    .restart local v10    # "ba":[B
    .restart local v15    # "ir":Ljava/lang/String;
    .restart local v16    # "mech":Ljava/lang/String;
    :cond_6
    const-string v15, "="

    goto :goto_1

    .line 166
    .end local v10    # "ba":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v18

    .restart local v18    # "resp":I
    goto :goto_2

    .line 177
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    goto :goto_3

    .line 183
    :cond_9
    const/16 v4, 0x14e

    move/from16 v0, v18

    if-eq v0, v4, :cond_e

    .line 184
    const/4 v4, 0x0

    goto :goto_4

    .line 185
    .end local v15    # "ir":Ljava/lang/String;
    .end local v16    # "mech":Ljava/lang/String;
    .end local v18    # "resp":I
    :catch_1
    move-exception v12

    .line 186
    .local v12, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "SASL AUTHENTICATE Exception"

    invoke-virtual {v4, v5, v6, v12}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const/4 v4, 0x0

    goto :goto_4

    .line 192
    .end local v12    # "ex":Ljava/lang/Exception;
    .restart local v15    # "ir":Ljava/lang/String;
    .restart local v16    # "mech":Ljava/lang/String;
    .restart local v18    # "resp":I
    :cond_a
    const/16 v4, 0x14e

    move/from16 v0, v18

    if-ne v0, v4, :cond_11

    .line 193
    const/4 v10, 0x0

    .line 194
    .restart local v10    # "ba":[B
    :try_start_2
    invoke-interface/range {v19 .. v19}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-nez v4, :cond_d

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->responseText(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 196
    array-length v4, v10

    if-lez v4, :cond_b

    .line 197
    invoke-static {v10}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v10

    .line 198
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SASL challenge: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    const/4 v6, 0x0

    array-length v7, v10

    invoke-static {v10, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 201
    :cond_c
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v10

    .line 203
    :cond_d
    if-nez v10, :cond_f

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "SASL: no response"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v18

    .line 190
    .end local v10    # "ba":[B
    :cond_e
    :goto_5
    if-eqz v11, :cond_a

    .line 221
    const/16 v4, 0xeb

    move/from16 v0, v18

    if-eq v0, v4, :cond_12

    .line 222
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 207
    .restart local v10    # "ba":[B
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SASL response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    const/4 v6, 0x0

    array-length v7, v10

    invoke-static {v10, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 210
    :cond_10
    invoke-static {v10}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v10

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->pr:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v4, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v18

    .line 213
    goto :goto_5

    .line 214
    .end local v10    # "ba":[B
    :cond_11
    const/4 v11, 0x1

    goto :goto_5

    .line 215
    .restart local v10    # "ba":[B
    :catch_2
    move-exception v14

    .line 216
    .local v14, "ioex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "SASL Exception"

    invoke-virtual {v4, v5, v6, v14}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    const/4 v11, 0x1

    goto :goto_5

    .line 224
    .end local v10    # "ba":[B
    .end local v14    # "ioex":Ljava/lang/Exception;
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 225
    const-string v4, "javax.security.sasl.qop"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 226
    .local v17, "qop":Ljava/lang/String;
    if-eqz v17, :cond_14

    const-string v4, "auth-int"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 227
    const-string v4, "auth-conf"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 229
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->logger:Lcom/sun/mail/util/MailLogger;

    .line 230
    const-string v5, "SASL Mechanism requires integrity or confidentiality"

    .line 229
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 231
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 235
    .end local v17    # "qop":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_4
.end method
