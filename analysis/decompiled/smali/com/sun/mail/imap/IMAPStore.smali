.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "IMAPStore.java"

# interfaces
.implements Ljavax/mail/QuotaAwareStore;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ID_ADDRESS:Ljava/lang/String; = "address"

.field public static final ID_ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final ID_COMMAND:Ljava/lang/String; = "command"

.field public static final ID_DATE:Ljava/lang/String; = "date"

.field public static final ID_ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final ID_NAME:Ljava/lang/String; = "name"

.field public static final ID_OS:Ljava/lang/String; = "os"

.field public static final ID_OS_VERSION:Ljava/lang/String; = "os-version"

.field public static final ID_SUPPORT_URL:Ljava/lang/String; = "support-url"

.field public static final ID_VENDOR:Ljava/lang/String; = "vendor"

.field public static final ID_VERSION:Ljava/lang/String; = "version"

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private final appendBufferSize:I

.field protected authorizationID:Ljava/lang/String;

.field private final blksize:I

.field private closeFoldersOnStoreFailure:Z

.field private volatile connectionFailed:Z

.field private final connectionFailedLock:Ljava/lang/Object;

.field private debugpassword:Z

.field private debugusername:Z

.field protected final defaultPort:I

.field private disableAuthLogin:Z

.field private disableAuthNtlm:Z

.field private disableAuthPlain:Z

.field private enableImapEvents:Z

.field private enableResponseEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private volatile folderConstructor:Ljava/lang/reflect/Constructor;

.field private volatile folderConstructorLI:Ljava/lang/reflect/Constructor;

.field private volatile forceClose:Z

.field private forcePasswordRefresh:Z

.field private guid:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field private ignoreSize:Z

.field protected final isSSL:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private messageCacheDebug:Z

.field private final minIdleTime:I

.field protected final name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

.field protected password:Ljava/lang/String;

.field private peek:Z

.field private final pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private volatile port:I

.field protected proxyAuthUser:Ljava/lang/String;

.field private requireStartTLS:Z

.field private saslMechanisms:[Ljava/lang/String;

.field protected saslRealm:Ljava/lang/String;

.field private final statusCacheTimeout:I

.field private throwSearchException:Z

.field protected user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    .line 182
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 425
    const-string v0, "imap"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 426
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .prologue
    .line 438
    invoke-direct/range {p0 .. p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 200
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 212
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    .line 213
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    .line 214
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthNtlm:Z

    .line 215
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    .line 217
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 218
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 220
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 222
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    .line 224
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 226
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    .line 227
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    .line 228
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    .line 239
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 240
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 241
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    .line 250
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    .line 251
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    .line 407
    new-instance v13, Lcom/sun/mail/imap/IMAPStore$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sun/mail/imap/IMAPStore$1;-><init>(Lcom/sun/mail/imap/IMAPStore;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    .line 439
    if-eqz p2, :cond_0

    .line 440
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 441
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    .line 442
    if-nez p4, :cond_1

    .line 444
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ssl.enable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 443
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result p4

    .line 445
    :cond_1
    if-eqz p4, :cond_1b

    .line 446
    const/16 v13, 0x3e1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    .line 449
    :goto_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 451
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    .line 453
    const-string v13, "mail.debug.auth.username"

    const/4 v14, 0x1

    .line 452
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    .line 455
    const-string v13, "mail.debug.auth.password"

    const/4 v14, 0x0

    .line 454
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    .line 456
    new-instance v13, Lcom/sun/mail/util/MailLogger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 457
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "DEBUG "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v15, v0}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 456
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    .line 460
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".partialfetch"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 459
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v9

    .line 461
    .local v9, "partialFetch":Z
    if-nez v9, :cond_1c

    .line 462
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "mail.imap.partialfetch: false"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 472
    :cond_2
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ignorebodystructuresize"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 471
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.ignorebodystructuresize: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 477
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".statuscachetimeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x3e8

    .line 476
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.statuscachetimeout: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 479
    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 483
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".appendbuffersize"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    .line 482
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    .line 484
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.appendbuffersize: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 488
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".minidletime"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    .line 487
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.minidletime: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 493
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".proxyauth.user"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "s":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 495
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.proxyauth.user: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 502
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".auth.login.disable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 501
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    .line 503
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    if-eqz v13, :cond_8

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "disable AUTH=LOGIN"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 508
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".auth.plain.disable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 507
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    .line 509
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    if-eqz v13, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "disable AUTH=PLAIN"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 514
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".auth.ntlm.disable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 513
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthNtlm:Z

    .line 515
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->disableAuthNtlm:Z

    if-eqz v13, :cond_a

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "disable AUTH=NTLM"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 520
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".starttls.enable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 519
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 521
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-eqz v13, :cond_b

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "enable STARTTLS"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 526
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".starttls.required"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 525
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    .line 527
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz v13, :cond_c

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "require STARTTLS"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 532
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".sasl.enable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 533
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v13, :cond_d

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "enable SASL"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 537
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v13, :cond_10

    .line 538
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".sasl.mechanisms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 539
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_10

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SASL mechanisms allowed: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 542
    :cond_e
    new-instance v12, Ljava/util/Vector;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Ljava/util/Vector;-><init>(I)V

    .line 543
    .local v12, "v":Ljava/util/Vector;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, " ,"

    invoke-direct {v11, v10, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .local v11, "st":Ljava/util/StringTokenizer;
    :cond_f
    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_1d

    .line 549
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 555
    .end local v11    # "st":Ljava/util/StringTokenizer;
    .end local v12    # "v":Ljava/util/Vector;
    :cond_10
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".sasl.authorizationid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 556
    if-eqz v10, :cond_11

    .line 557
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v15, "mail.imap.sasl.authorizationid: {0}"

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 558
    invoke-virtual/range {v13 .. v16}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".sasl.realm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 564
    if-eqz v10, :cond_12

    .line 565
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v15, "mail.imap.sasl.realm: {0}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    :cond_12
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".forcepasswordrefresh"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 570
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 572
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v13, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "enable forcePasswordRefresh"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 577
    :cond_13
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".enableresponseevents"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 576
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    .line 578
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    if-eqz v13, :cond_14

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "enable IMAP response events"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 583
    :cond_14
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".enableimapevents"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 582
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 584
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v13, :cond_15

    .line 585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "enable IMAP IDLE events"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 589
    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".messagecache.debug"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 588
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    .line 591
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".yahoo.guid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v15, "mail.imap.yahoo.guid: {0}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".throwsearchexception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 596
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    .line 598
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    if-eqz v13, :cond_17

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v14, "throw SearchException"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 603
    :cond_17
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".peek"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 602
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    .line 604
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    if-eqz v13, :cond_18

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "peek"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 609
    :cond_18
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".closefoldersonstorefailure"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 608
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    .line 610
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    if-eqz v13, :cond_19

    .line 611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v14, "closeFoldersOnStoreFailure"

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 613
    :cond_19
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".folder.class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 614
    if-eqz v10, :cond_1a

    .line 615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v15, "IMAP: folder class: {0}"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 620
    .local v4, "cl":Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .line 625
    .local v7, "folderClass":Ljava/lang/Class;
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v10, v13, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 633
    :goto_3
    const/4 v13, 0x4

    :try_start_2
    new-array v2, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v2, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const-class v14, Lcom/sun/mail/imap/IMAPStore;

    aput-object v14, v2, v13

    const/4 v13, 0x3

    .line 634
    const-class v14, Ljava/lang/Boolean;

    aput-object v14, v2, v13

    .line 635
    .local v2, "c":[Ljava/lang/Class;
    invoke-virtual {v7, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    .line 636
    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Lcom/sun/mail/imap/protocol/ListInfo;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-class v14, Lcom/sun/mail/imap/IMAPStore;

    aput-object v14, v3, v13

    .line 637
    .local v3, "c2":[Ljava/lang/Class;
    invoke-virtual {v7, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 644
    .end local v2    # "c":[Ljava/lang/Class;
    .end local v3    # "c2":[Ljava/lang/Class;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "folderClass":Ljava/lang/Class;
    :cond_1a
    :goto_4
    new-instance v13, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v14, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>(Ljava/lang/String;Lcom/sun/mail/util/MailLogger;Ljavax/mail/Session;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 645
    return-void

    .line 448
    .end local v9    # "partialFetch":Z
    .end local v10    # "s":Ljava/lang/String;
    :cond_1b
    const/16 v13, 0x8f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    goto/16 :goto_0

    .line 466
    .restart local v9    # "partialFetch":Z
    :cond_1c
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mail."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".fetchsize"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x4000

    .line 465
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mail.imap.fetchsize: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    .restart local v10    # "s":Ljava/lang/String;
    .restart local v11    # "st":Ljava/util/StringTokenizer;
    .restart local v12    # "v":Ljava/util/Vector;
    :cond_1d
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, "m":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_f

    .line 547
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 626
    .end local v8    # "m":Ljava/lang/String;
    .end local v11    # "st":Ljava/util/StringTokenizer;
    .end local v12    # "v":Ljava/util/Vector;
    .restart local v4    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "folderClass":Ljava/lang/Class;
    :catch_0
    move-exception v6

    .line 630
    .local v6, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    goto/16 :goto_3

    .line 638
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v6    # "ex1":Ljava/lang/ClassNotFoundException;
    .end local v7    # "folderClass":Ljava/lang/Class;
    :catch_1
    move-exception v5

    .line 639
    .local v5, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 640
    const-string v15, "IMAP: failed to load folder class"

    .line 639
    invoke-virtual {v13, v14, v15, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private checkConnected()V
    .locals 2

    .prologue
    .line 1918
    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1919
    :cond_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1921
    :cond_1
    return-void
.end method

.method private declared-synchronized cleanup()V
    .locals 9

    .prologue
    .line 1605
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1606
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "IMAPStore cleanup, not connected"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    :goto_0
    monitor-exit p0

    return-void

    .line 1617
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    :try_start_2
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1619
    .local v3, "force":Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1620
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1617
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1622
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1623
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMAPStore cleanup, force "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1625
    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    if-eqz v6, :cond_4

    .line 1626
    :cond_2
    const/4 v2, 0x0

    .line 1627
    .local v2, "foldersCopy":Ljava/util/Vector;
    const/4 v0, 0x1

    .line 1639
    .local v0, "done":Z
    :cond_3
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1640
    :try_start_4
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1641
    const/4 v0, 0x0

    .line 1642
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    .line 1643
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    .line 1639
    :goto_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1648
    if-eqz v0, :cond_6

    .line 1676
    .end local v0    # "done":Z
    .end local v2    # "foldersCopy":Ljava/util/Vector;
    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1677
    :try_start_6
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V

    .line 1676
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1682
    :try_start_7
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1686
    :goto_2
    :try_start_8
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "IMAPStore cleanup done"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1605
    .end local v3    # "force":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1617
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1645
    .restart local v0    # "done":Z
    .restart local v2    # "foldersCopy":Ljava/util/Vector;
    .restart local v3    # "force":Z
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1639
    :catchall_2
    move-exception v6

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v6

    .line 1652
    :cond_6
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    .local v4, "fsize":I
    :goto_3
    if-ge v5, v4, :cond_3

    .line 1653
    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1656
    .local v1, "f":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz v3, :cond_7

    .line 1657
    :try_start_d
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "force folder to close"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    .line 1652
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1663
    :cond_7
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "close folder"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1664
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_d
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 1666
    :catch_0
    move-exception v6

    goto :goto_4

    .line 1676
    .end local v0    # "done":Z
    .end local v1    # "f":Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "foldersCopy":Ljava/util/Vector;
    .end local v4    # "fsize":I
    .end local v5    # "i":I
    :catchall_3
    move-exception v6

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1683
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1668
    .restart local v0    # "done":Z
    .restart local v1    # "f":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v2    # "foldersCopy":Ljava/util/Vector;
    .restart local v4    # "fsize":I
    .restart local v5    # "i":I
    :catch_2
    move-exception v6

    goto :goto_4
.end method

.method private emptyConnectionPool(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 1316
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    .line 1317
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 1316
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    const-string v3, "removed all authenticated connections from pool"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1334
    return-void

    .line 1321
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1322
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1323
    if-eqz p1, :cond_1

    .line 1324
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 1318
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1326
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1327
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1316
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1813
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1815
    const/4 v1, 0x0

    .line 1817
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1819
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1820
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1828
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1831
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1821
    :catch_0
    move-exception v3

    .line 1828
    :try_start_3
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1813
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1823
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v0

    .line 1824
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    new-instance v3, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1827
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v3

    .line 1828
    :try_start_5
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1829
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1825
    :catch_2
    move-exception v2

    .line 1826
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v3, 0x0

    .line 1059
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    if-eqz v3, :cond_0

    .line 1131
    return-object v3

    .line 1060
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5

    .line 1061
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    .line 1065
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1066
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    const-string v6, "getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v4, :cond_1

    .line 1070
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 1072
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v4, v6}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1074
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    :goto_1
    if-nez v3, :cond_3

    .line 1084
    :try_start_2
    new-instance v4, Lcom/sun/mail/iap/ConnectionException;

    .line 1085
    const-string v6, "failed to create new store connection"

    .line 1084
    invoke-direct {v4, v6}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1060
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1075
    :catch_0
    move-exception v2

    .line 1076
    .local v2, "ex1":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    .line 1078
    :try_start_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1080
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1087
    .end local v2    # "ex1":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1088
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1107
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 1111
    const/4 v3, 0x0

    .line 1112
    :try_start_5
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1128
    :goto_4
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1060
    monitor-exit v5

    goto :goto_0

    .line 1092
    :cond_5
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1093
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStoreProtocol() - connection available -- size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1093
    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1096
    :cond_6
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object v3, v0

    .line 1099
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1100
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1101
    const-string v4, "X-UNAUTHENTICATE"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1102
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1103
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1113
    :catch_1
    move-exception v1

    .line 1116
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1119
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    .line 1120
    const-string v6, "Interrupted getStoreProtocol"

    .line 1119
    invoke-direct {v4, v6, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1123
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_7
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 1125
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    const-string v6, "getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 1079
    .restart local v2    # "ex1":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto/16 :goto_2
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    .line 768
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 775
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 845
    :cond_2
    :goto_0
    return-void

    .line 769
    :cond_3
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "STARTTLS required but not supported by server"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 771
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    .line 772
    const-string v1, "STARTTLS required but not supported by server"

    .line 771
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 783
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 784
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 785
    .local v7, "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "GUID"

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {p1, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    .line 794
    .end local v7    # "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, "__PRELOGIN__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 797
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 803
    .local v3, "authzid":Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v0, :cond_6

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_6

    .line 807
    new-instance v0, Lcom/sun/mail/iap/CommandFailedException;

    .line 808
    const-string v1, "SASL authentication failed"

    .line 807
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :catch_0
    move-exception v0

    .line 814
    :cond_6
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 828
    :goto_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 829
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    .line 835
    :cond_7
    const-string v0, "__PRELOGIN__"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    :try_start_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 838
    :catch_1
    move-exception v6

    .line 839
    .local v6, "cex":Lcom/sun/mail/iap/ConnectionException;
    throw v6

    .line 798
    .end local v3    # "authzid":Ljava/lang/String;
    .end local v6    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 799
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .restart local v3    # "authzid":Ljava/lang/String;
    goto :goto_1

    .line 801
    .end local v3    # "authzid":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "authzid":Ljava/lang/String;
    goto :goto_1

    .line 816
    :cond_a
    const-string v0, "AUTH=PLAIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    if-nez v0, :cond_b

    .line 817
    invoke-virtual {p1, v3, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 818
    :cond_b
    const-string v0, "AUTH-LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 819
    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    if-nez v0, :cond_d

    .line 820
    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 821
    :cond_d
    const-string v0, "AUTH=NTLM"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthNtlm:Z

    if-nez v0, :cond_e

    .line 822
    invoke-virtual {p1, v3, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 823
    :cond_e
    const-string v0, "LOGINDISABLED"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 824
    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 826
    :cond_f
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "No login methods supported!"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 7
    .param p1, "ns"    # [Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1836
    array-length v4, p1

    new-array v0, v4, [Ljavax/mail/Folder;

    .line 1837
    .local v0, "fa":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 1851
    return-object v0

    .line 1838
    :cond_0
    aget-object v4, p1, v1

    iget-object v3, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    .line 1839
    .local v3, "name":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 1841
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1842
    .local v2, "len":I
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-object v6, p1, v1

    iget-char v6, v6, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v4, v6, :cond_1

    .line 1843
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1848
    .end local v2    # "len":I
    :cond_1
    :goto_1
    aget-object v4, p1, v1

    iget-char v6, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 1849
    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1848
    invoke-virtual {p0, v3, v6, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1846
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 1849
    goto :goto_2
.end method

.method private refreshPassword()V
    .locals 8

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refresh password, user: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1157
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1162
    .local v1, "addr":Ljava/net/InetAddress;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 1163
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1162
    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v7

    .line 1164
    .local v7, "pa":Ljavax/mail/PasswordAuthentication;
    if-eqz v7, :cond_1

    .line 1165
    invoke-virtual {v7}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1166
    invoke-virtual {v7}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 1168
    :cond_1
    return-void

    .line 1158
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v7    # "pa":Ljavax/mail/PasswordAuthentication;
    :catch_0
    move-exception v6

    .line 1159
    .local v6, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    .restart local v1    # "addr":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method private releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 1258
    if-nez p1, :cond_1

    .line 1259
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1269
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1270
    .local v0, "failed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1268
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1275
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 1276
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1278
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    const-string v3, "releaseStoreProtocol()"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1274
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1288
    sget-boolean v1, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1268
    .end local v0    # "failed":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1274
    .restart local v0    # "failed":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1289
    :cond_2
    if-eqz v0, :cond_0

    .line 1290
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    goto :goto_0
.end method

.method private timeoutConnections()V
    .locals 10

    .prologue
    .line 1341
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    .line 1345
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1346
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 1347
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checking for connections to prune: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1350
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1352
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clientTimeoutInterval: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1353
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1352
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1361
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-gtz v0, :cond_2

    .line 1383
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    .line 1341
    .end local v0    # "index":I
    :cond_1
    monitor-exit v3

    .line 1386
    return-void

    .line 1363
    .restart local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    .line 1364
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1365
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1366
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "protocol last used: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1366
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1368
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1369
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 1371
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    .line 1372
    const-string v4, "authenticated connection timed out, logging out the connection"

    .line 1371
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1376
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :try_start_1
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1341
    .end local v0    # "index":I
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1380
    .restart local v0    # "index":I
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private tracePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2167
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    if-eqz v0, :cond_0

    .end local p1    # "password":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 2168
    .restart local p1    # "password":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "<null>"

    goto :goto_0

    :cond_1
    const-string p1, "<non-null>"

    goto :goto_0
.end method

.method private traceUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    if-eqz v0, :cond_0

    .end local p1    # "user":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "user":Ljava/lang/String;
    :cond_0
    const-string p1, "<user name suppressed>"

    goto :goto_0
.end method

.method private waitIfIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2082
    sget-boolean v1, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2084
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2085
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 2086
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2090
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2100
    return-void

    .line 2091
    :catch_0
    move-exception v0

    .line 2097
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".allowreadonlyselect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1176
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1534
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1593
    :goto_0
    monitor-exit p0

    return-void

    .line 1537
    :cond_0
    const/4 v2, 0x0

    .line 1540
    .local v2, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1543
    :try_start_2
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    .line 1540
    .local v0, "isEmpty":Z
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1554
    if-eqz v0, :cond_1

    .line 1555
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    const-string v4, "close() - no connections "

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1591
    :try_start_4
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1534
    .end local v0    # "isEmpty":Z
    .end local v2    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1540
    .restart local v2    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1587
    :catch_0
    move-exception v1

    .line 1589
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1590
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_2
    move-exception v3

    .line 1591
    :try_start_8
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1592
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1560
    .restart local v0    # "isEmpty":Z
    :cond_1
    :try_start_9
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1567
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1568
    :try_start_a
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1567
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1586
    :try_start_b
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1591
    :try_start_c
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 1567
    :catchall_3
    move-exception v3

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 1597
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V

    .line 1598
    return-void
.end method

.method getAppendBufferSize()I
    .locals 1

    .prologue
    .line 1420
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1694
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1695
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1703
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1704
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1703
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1712
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1713
    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1139
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1140
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1141
    return-object v0
.end method

.method getMessageCacheDebug()Z
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    return v0
.end method

.method getMinIdleTime()I
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method getPeek()Z
    .locals 1

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1784
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_1

    .line 1785
    :cond_0
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    .line 1786
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_0
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 14
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 916
    const/4 v3, 0x0

    .line 919
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    if-eqz v3, :cond_0

    .line 1035
    return-object v3

    .line 927
    :cond_0
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v8

    .line 931
    :try_start_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 932
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 933
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 935
    :cond_1
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "no connections in the pool, creating a new one"

    invoke-virtual {v7, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :try_start_1
    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v7, :cond_2

    .line 938
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 940
    :cond_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v9, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v7, v9}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 941
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 943
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v7, v9}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    :goto_1
    if-nez v3, :cond_8

    .line 954
    :try_start_2
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v9, "connection failure"

    invoke-direct {v7, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 927
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 945
    :catch_0
    move-exception v2

    .line 946
    .local v2, "ex1":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 948
    :try_start_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    :cond_3
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 956
    .end local v2    # "ex1":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 957
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection available -- size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 957
    invoke-virtual {v7, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 961
    :cond_5
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object v3, v0

    .line 962
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 966
    .local v4, "lastUsed":J
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    cmp-long v7, v4, v10

    if-lez v7, :cond_6

    .line 973
    :try_start_5
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 974
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 975
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 976
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 977
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 991
    :cond_6
    :try_start_6
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 992
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 993
    const-string v7, "X-UNAUTHENTICATE"

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    .line 1000
    :try_start_7
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1001
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1002
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1003
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v7, v9}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1005
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1019
    :cond_7
    :try_start_8
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1023
    .end local v4    # "lastUsed":J
    :cond_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1026
    if-eqz p1, :cond_a

    .line 1027
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    if-nez v7, :cond_9

    .line 1028
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    invoke-static {v7, v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    .line 1029
    :cond_9
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 927
    :cond_a
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 978
    .restart local v4    # "lastUsed":J
    :catch_1
    move-exception v6

    .line 980
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 981
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 984
    :goto_3
    const/4 v3, 0x0

    .line 985
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1006
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_2
    move-exception v6

    .line 1008
    .restart local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_b
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v3, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1009
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1012
    :goto_4
    const/4 v3, 0x0

    .line 1013
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 949
    .end local v4    # "lastUsed":J
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v2    # "ex1":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto/16 :goto_2

    .end local v2    # "ex1":Ljava/lang/Exception;
    .restart local v4    # "lastUsed":J
    .restart local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v7

    goto :goto_4

    :catchall_2
    move-exception v7

    goto :goto_3
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 7
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1872
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1873
    const/4 v4, 0x0

    .line 1875
    .local v4, "qa":[Ljavax/mail/Quota;
    const/4 v2, 0x0

    .line 1877
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1878
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1886
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1888
    monitor-exit p0

    return-object v4

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "QUOTA not supported"

    invoke-direct {v5, v6, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1885
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v5

    .line 1886
    :try_start_4
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1887
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1872
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v4    # "qa":[Ljavax/mail/Quota;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1881
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "qa":[Ljavax/mail/Quota;
    :catch_1
    move-exception v1

    .line 1882
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v5, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v5

    .line 1883
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v3

    .line 1884
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method getSession()Ljavax/mail/Session;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1806
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1807
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_1

    .line 1808
    :cond_0
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    .line 1809
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_0
.end method

.method getStatusCacheTimeout()I
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1796
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_1

    .line 1797
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    .line 1798
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v1, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 1928
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 1930
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1931
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore connection dead"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1934
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1935
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1936
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1934
    :cond_2
    monitor-exit v1

    .line 1941
    :cond_3
    return-void

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .locals 5
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 2141
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    if-eqz v3, :cond_0

    .line 2142
    const/16 v3, 0x3e8

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 2143
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v2

    .line 2144
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2145
    .local v1, "isAlert":Z
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2146
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2148
    .local v0, "i":I
    if-lez v0, :cond_1

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ALERT]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2149
    const/4 v1, 0x1

    .line 2151
    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2153
    .end local v0    # "i":I
    :cond_2
    if-eqz v1, :cond_4

    .line 2154
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 2160
    :cond_3
    :goto_0
    return-void

    .line 2155
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2159
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 4
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1455
    monitor-enter p0

    const/4 v0, 0x0

    .line 1457
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1462
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1458
    monitor-exit p0

    return v2

    .line 1459
    :catch_0
    move-exception v1

    .line 1460
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1461
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_0
    move-exception v2

    .line 1462
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1463
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1455
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method hasSeparateStoreConnection()Z
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized id(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
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
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2117
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2118
    const/4 v4, 0x0

    .line 2120
    .local v4, "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2122
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2123
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 2131
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2133
    monitor-exit p0

    return-object v4

    .line 2124
    :catch_0
    move-exception v0

    .line 2125
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "ID not supported"

    invoke-direct {v5, v6, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2130
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v5

    .line 2131
    :try_start_4
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2132
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2117
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v4    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2126
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 2127
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v5, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v5

    .line 2128
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v3

    .line 2129
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public idle()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1980
    const/4 v5, 0x0

    .line 1983
    .local v5, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    sget-boolean v8, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1984
    :cond_0
    monitor-enter p0

    .line 1985
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1984
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    const/4 v4, 0x0

    .line 1989
    .local v4, "needNotification":Z
    :try_start_1
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v9
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1990
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    .line 1991
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 1997
    :try_start_3
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2005
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2065
    if-eqz v4, :cond_1

    .line 2066
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v9

    .line 2067
    :try_start_5
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2068
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2069
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 2066
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2072
    :cond_1
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2074
    :goto_0
    return-void

    .line 1984
    .end local v4    # "needNotification":Z
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 1998
    .restart local v4    # "needNotification":Z
    :catch_0
    move-exception v2

    .line 2001
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 2003
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v10, "idle interrupted"

    invoke-direct {v8, v10, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 1989
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v8
    :try_end_8
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2058
    :catch_1
    move-exception v0

    .line 2059
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_9
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "IDLE not supported"

    invoke-direct {v8, v9, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2064
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_2
    move-exception v8

    .line 2065
    if-eqz v4, :cond_2

    .line 2066
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v9

    .line 2067
    :try_start_a
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2068
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2069
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 2066
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 2072
    :cond_2
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2073
    throw v8

    .line 2066
    :catchall_3
    move-exception v8

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v8

    .line 2007
    :cond_3
    :try_start_c
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    .line 2008
    const/4 v4, 0x1

    .line 2009
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2010
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v8, v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1989
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2027
    :cond_4
    :goto_1
    :try_start_d
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 2028
    .local v7, "r":Lcom/sun/mail/iap/Response;
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v9
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2029
    if-eqz v7, :cond_5

    :try_start_e
    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2030
    :cond_5
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2031
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2032
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 2033
    const/4 v4, 0x0

    .line 2034
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2047
    :try_start_f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I
    :try_end_f
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result v3

    .line 2048
    .local v3, "minidle":I
    if-lez v3, :cond_6

    .line 2050
    int-to-long v8, v3

    :try_start_10
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2065
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 2066
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v9

    .line 2067
    :try_start_11
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 2068
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2069
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 2066
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 2072
    :cond_7
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto/16 :goto_0

    .line 2028
    .end local v3    # "minidle":I
    :cond_8
    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2037
    :try_start_13
    iget-boolean v8, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2038
    const/16 v8, 0x3e8

    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_13
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_1

    .line 2060
    .end local v7    # "r":Lcom/sun/mail/iap/Response;
    :catch_2
    move-exception v1

    .line 2061
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_14
    new-instance v8, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2028
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v7    # "r":Lcom/sun/mail/iap/Response;
    :catchall_4
    move-exception v8

    :try_start_15
    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v8
    :try_end_16
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2062
    .end local v7    # "r":Lcom/sun/mail/iap/Response;
    :catch_3
    move-exception v6

    .line 2063
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_17
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2051
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "minidle":I
    .restart local v7    # "r":Lcom/sun/mail/iap/Response;
    :catch_4
    move-exception v2

    .line 2054
    .restart local v2    # "ex":Ljava/lang/InterruptedException;
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_18
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_2

    .line 2066
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .end local v3    # "minidle":I
    .end local v7    # "r":Lcom/sun/mail/iap/Response;
    :catchall_5
    move-exception v8

    :try_start_19
    monitor-exit v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v8

    .restart local v3    # "minidle":I
    .restart local v7    # "r":Lcom/sun/mail/iap/Response;
    :catchall_6
    move-exception v8

    :try_start_1a
    monitor-exit v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    throw v8
.end method

.method ignoreBodyStructureSize()Z
    .locals 1

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    return v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 1494
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1497
    const/4 v1, 0x0

    .line 1527
    :goto_0
    monitor-exit p0

    return v1

    .line 1516
    :cond_0
    const/4 v0, 0x0

    .line 1518
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1519
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1523
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1527
    :goto_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v1

    .line 1523
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1494
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1522
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1
    move-exception v1

    .line 1523
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1524
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method isConnectionPoolFull()Z
    .locals 4

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection pool current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1210
    const-string v3, "   pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;
    .locals 7
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;

    .prologue
    .line 1763
    const/4 v2, 0x0

    .line 1764
    .local v2, "f":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_0

    .line 1766
    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    .line 1767
    .local v3, "o":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    .end local v3    # "o":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1774
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    .end local v2    # "f":Lcom/sun/mail/imap/IMAPFolder;
    invoke-direct {v2, p1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    .line 1775
    .restart local v2    # "f":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    return-object v2

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 1770
    const-string v6, "exception creating IMAPFolder class LI"

    .line 1769
    invoke-virtual {v4, v5, v6, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0

    return-object v0
.end method

.method protected newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;
    .locals 7
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "isNamespace"    # Ljava/lang/Boolean;

    .prologue
    .line 1727
    const/4 v2, 0x0

    .line 1728
    .local v2, "f":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_0

    .line 1731
    const/4 v4, 0x4

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    .line 1732
    .local v3, "o":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    .end local v3    # "o":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1739
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    .end local v2    # "f":Lcom/sun/mail/imap/IMAPFolder;
    invoke-direct {v2, p1, p2, p0, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 1740
    .restart local v2    # "f":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    return-object v2

    .line 1733
    :catch_0
    move-exception v1

    .line 1734
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 1735
    const-string v6, "exception creating IMAPFolder class"

    .line 1734
    invoke-virtual {v4, v5, v6, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 753
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    .line 754
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    .line 755
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 756
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    move-object v2, p1

    move v3, p2

    .line 753
    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;ZLcom/sun/mail/util/MailLogger;)V

    return-object v0
.end method

.method protected preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 0
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 862
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "pport"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 661
    monitor-enter p0

    const/4 v4, 0x0

    .line 664
    .local v4, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    .line 665
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 666
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "protocolConnect returning false, host="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 668
    const-string v8, ", user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 669
    const-string v8, ", password="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_1
    const/4 v6, 0x0

    .line 736
    :goto_0
    monitor-exit p0

    return v6

    .line 674
    :cond_2
    if-eq p2, v9, :cond_7

    .line 675
    :try_start_1
    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 682
    :goto_1
    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    if-ne v6, v9, :cond_3

    .line 683
    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    .line 688
    .local v3, "poolEmpty":Z
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 692
    if-eqz v3, :cond_6

    .line 693
    :try_start_4
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 694
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "trying to connect to host \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 695
    const-string v8, "\", port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSSL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 694
    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 696
    :cond_4
    iget v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, p1, v6}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 697
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 698
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "protocolConnect login, host="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 700
    const-string v8, ", user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 701
    const-string v8, ", password="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 698
    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 702
    :cond_5
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 703
    invoke-direct {p0, v4, p3, p4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 705
    invoke-virtual {v4, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 707
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 709
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    .line 710
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 711
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 713
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 714
    :try_start_5
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 713
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 736
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 677
    .end local v3    # "poolEmpty":Z
    :cond_7
    :try_start_6
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 678
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mail."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".port"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 677
    invoke-static {v6, v7, v8}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 661
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 688
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6
    :try_end_8
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 717
    :catch_0
    move-exception v0

    .line 719
    .local v0, "cex":Lcom/sun/mail/iap/CommandFailedException;
    if-eqz v4, :cond_8

    .line 720
    :try_start_9
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 721
    :cond_8
    const/4 v4, 0x0

    .line 722
    new-instance v6, Ljavax/mail/AuthenticationFailedException;

    .line 723
    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v7

    .line 722
    invoke-direct {v6, v7}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 713
    .end local v0    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v3    # "poolEmpty":Z
    :catchall_2
    move-exception v6

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v6
    :try_end_b
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 724
    .end local v3    # "poolEmpty":Z
    :catch_1
    move-exception v2

    .line 726
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    if-eqz v4, :cond_9

    .line 727
    :try_start_c
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 728
    :cond_9
    const/4 v4, 0x0

    .line 729
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 730
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_2
    move-exception v5

    .line 731
    .local v5, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v6, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v6, v5}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v6

    .line 732
    .end local v5    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_3
    move-exception v1

    .line 733
    .local v1, "ioex":Ljava/io/IOException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 3
    .param p1, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 1297
    if-nez p1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1300
    invoke-virtual {p1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1301
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 1303
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1305
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v2, "releaseFolderStoreProtocol()"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1301
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 4
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 1223
    if-eqz p2, :cond_0

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1227
    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1228
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1230
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "added an Authenticated connection -- size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1233
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1246
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1222
    monitor-exit v1

    .line 1248
    return-void

    .line 1235
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1236
    const-string v2, "pool is full, not adding an Authenticated connection"

    .line 1235
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :try_start_1
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 1477
    return-void
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .locals 6
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1901
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1902
    const/4 v2, 0x0

    .line 1904
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1905
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1913
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1915
    monitor-exit p0

    return-void

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "QUOTA not supported"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1912
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v4

    .line 1913
    :try_start_4
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1914
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1901
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1908
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v1

    .line 1909
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v4, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v4

    .line 1910
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v3

    .line 1911
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 891
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    monitor-exit p0

    return-void

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method throwSearchException()Z
    .locals 1

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    return v0
.end method
