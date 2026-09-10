.class public Lcom/sun/mail/util/logging/MailHandler;
.super Ljava/util/logging/Handler;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;,
        Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;,
        Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_FILTERS:[Ljava/util/logging/Filter;

.field private static final EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

.field private static final MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedAction",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_HEADER_SIZE:I = 0x400

.field private static final MUTEX:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUTEX_PUBLISH:Ljava/util/logging/Level;

.field private static final MUTEX_REPORT:Ljava/util/logging/Level;

.field private static final offValue:I


# instance fields
.field private volatile attachmentFilters:[Ljava/util/logging/Filter;

.field private attachmentFormatters:[Ljava/util/logging/Formatter;

.field private attachmentNames:[Ljava/util/logging/Formatter;

.field private auth:Ljavax/mail/Authenticator;

.field private capacity:I

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private contentTypes:Ljavax/activation/FileTypeMap;

.field private data:[Ljava/util/logging/LogRecord;

.field private encoding:Ljava/lang/String;

.field private volatile errorManager:Ljava/util/logging/ErrorManager;

.field private volatile filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private isWriting:Z

.field private volatile logLevel:Ljava/util/logging/Level;

.field private mailProps:Ljava/util/Properties;

.field private pushFilter:Ljava/util/logging/Filter;

.field private pushLevel:Ljava/util/logging/Level;

.field private volatile sealed:Z

.field private session:Ljavax/mail/Session;

.field private size:I

.field private subjectFormatter:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    .line 360
    new-array v0, v1, [Ljava/util/logging/Filter;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    .line 364
    new-array v0, v1, [Ljava/util/logging/Formatter;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    .line 372
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    .line 381
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    .line 380
    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    .line 389
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    .line 393
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    .line 397
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/util/logging/Level;

    return-void

    :cond_0
    move v0, v1

    .line 356
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 470
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 512
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 523
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 524
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 470
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 512
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 538
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    .line 539
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 470
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 512
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 557
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 558
    return-void
.end method

.method private allowRestrictedHeaders()Z
    .locals 1

    .prologue
    .line 3958
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->hasLogManager()Z

    move-result v0

    return v0
.end method

.method private appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V
    .locals 7
    .param p1, "p"    # Ljavax/mail/internet/MimePart;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 3411
    :try_start_0
    invoke-static {p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 3412
    .local v3, "lang":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3413
    const-string v5, "Content-Language"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3414
    .local v1, "header":Ljava/lang/String;
    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3415
    const-string v5, "Content-Language"

    invoke-interface {p1, v5, v3}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    .end local v1    # "header":Ljava/lang/String;
    .end local v3    # "lang":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3416
    .restart local v1    # "header":Ljava/lang/String;
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3417
    const-string v5, ","

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3418
    const/4 v2, 0x0

    .line 3419
    .local v2, "idx":I
    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-gt v2, v5, :cond_4

    .line 3427
    :cond_3
    :goto_1
    if-gez v2, :cond_0

    .line 3428
    const-string v5, "\r\n\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 3429
    .local v4, "len":I
    if-gez v4, :cond_5

    .line 3430
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, 0x14

    .line 3436
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v6, 0x4c

    if-le v5, v6, :cond_6

    .line 3437
    const-string v5, "\r\n\t"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3441
    :goto_3
    const-string v5, "Content-Language"

    invoke-interface {p1, v5, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3445
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "idx":I
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "len":I
    :catch_0
    move-exception v0

    .line 3446
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 3420
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    .restart local v1    # "header":Ljava/lang/String;
    .restart local v2    # "idx":I
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 3421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 3422
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 3432
    .restart local v4    # "len":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v4, v5, 0x8

    goto :goto_2

    .line 3439
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3
.end method

.method private appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .prologue
    .line 3311
    if-eqz p2, :cond_1

    .line 3312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3313
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 3318
    :cond_0
    :goto_0
    return-void

    .line 3316
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    goto :goto_0
.end method

.method private appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 4
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .prologue
    .line 3329
    :try_start_0
    const-string v2, "[\\x00-\\x1F\\x7F]+"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3330
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 3331
    .local v1, "old":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v2}, Ljavax/mail/Part;->setFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    .end local v1    # "old":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v1    # "old":Ljava/lang/String;
    :cond_0
    move-object v2, p2

    .line 3331
    goto :goto_0

    .line 3332
    .end local v1    # "old":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3333
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v0, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method private appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .prologue
    .line 3343
    if-eqz p2, :cond_1

    .line 3344
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3345
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3350
    :cond_0
    :goto_0
    return-void

    .line 3348
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    goto :goto_0
.end method

.method private appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .prologue
    .line 3361
    :try_start_0
    const-string v3, "[\\x00-\\x1F\\x7F]+"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3362
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    .line 3363
    .local v1, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 3364
    .local v2, "old":Ljava/lang/String;
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    instance-of v3, p1, Ljavax/mail/internet/MimeMessage;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "old":Ljava/lang/String;
    .end local p1    # "msg":Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 3368
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3370
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void

    .line 3365
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v2    # "old":Ljava/lang/String;
    .restart local p1    # "msg":Ljavax/mail/Message;
    :cond_0
    :try_start_1
    check-cast p1, Ljavax/mail/internet/MimeMessage;

    .end local p1    # "msg":Ljavax/mail/Message;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3366
    :goto_1
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3365
    invoke-virtual {p1, v3, v4}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v3, p2

    .line 3366
    goto :goto_1
.end method

.method private static atIndexMsg(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 3967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "At index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;
    .locals 2
    .param p0, "required"    # Ljavax/mail/MessagingException;
    .param p1, "optional"    # Ljava/lang/Exception;

    .prologue
    .line 3905
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3906
    instance-of v1, p1, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3907
    check-cast v0, Ljavax/mail/MessagingException;

    .line 3908
    .local v0, "head":Ljavax/mail/MessagingException;
    invoke-virtual {v0, p0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3913
    .end local v0    # "head":Ljavax/mail/MessagingException;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static attachmentMismatch(II)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expected"    # I
    .param p1, "found"    # I

    .prologue
    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attachments mismatched, expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3882
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private checkAccess()V
    .locals 1

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    if-eqz v0, :cond_0

    .line 1480
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLogManagerAccess()V

    .line 1482
    :cond_0
    return-void
.end method

.method private contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1685
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1687
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v2, "charset"

    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1690
    invoke-static {p2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1691
    move-object p1, p2

    .line 1696
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :cond_1
    :goto_0
    return-object p1

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "ME":Ljavax/mail/MessagingException;
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v2, 0x0

    .line 1838
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1839
    .local v0, "copy":[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1840
    return-object v0
.end method

.method private createBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3212
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3213
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 3214
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    .line 3216
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 3215
    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3217
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3218
    return-object v0
.end method

.method private createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3230
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3231
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 3232
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3234
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v1, v1, p1

    .line 3235
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v2, p1

    .line 3236
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v3, v3, p1

    .line 3233
    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3237
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3238
    return-object v0
.end method

.method private defaultErrorManager()Ljava/util/logging/ErrorManager;
    .locals 2

    .prologue
    .line 2344
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/Handler;->getErrorManager()Ljava/util/logging/ErrorManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2350
    .local v0, "em":Ljava/util/logging/ErrorManager;
    :goto_0
    if-nez v0, :cond_0

    .line 2351
    new-instance v0, Ljava/util/logging/ErrorManager;

    .end local v0    # "em":Ljava/util/logging/ErrorManager;
    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    .line 2353
    .restart local v0    # "em":Ljava/util/logging/ErrorManager;
    :cond_0
    return-object v0

    .line 2345
    .end local v0    # "em":Ljava/util/logging/ErrorManager;
    :catch_0
    move-exception v1

    .line 2346
    .local v1, "ignore":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    .restart local v0    # "em":Ljava/util/logging/ErrorManager;
    goto :goto_0
.end method

.method private descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;
    .locals 2
    .param p2, "l"    # Ljava/util/logging/Level;
    .param p3, "f"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/util/logging/Level;",
            "Ljava/util/logging/Filter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3253
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Sorted using "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "no comparator"

    .line 3254
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3255
    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_1

    const-string v0, "no push filter"

    .line 3256
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3256
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "filter"    # Ljava/util/logging/Filter;
    .param p3, "name"    # Ljava/util/logging/Formatter;

    .prologue
    .line 3267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Formatted using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3268
    const-string v1, ", filtered with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v0, "no filter"

    .line 3269
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and named by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3270
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3269
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static emptyFilterArray()[Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 1750
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private static emptyFormatterArray()[Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 1742
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private envelopeFor(Ljavax/mail/Message;Z)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z

    .prologue
    .line 3184
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3185
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setFrom(Ljavax/mail/Message;)V

    .line 3186
    const-string v1, "mail.to"

    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3187
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V

    .line 3189
    :cond_0
    const-string v1, "mail.cc"

    sget-object v2, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3190
    const-string v1, "mail.bcc"

    sget-object v2, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3191
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setReplyTo(Ljavax/mail/Message;)V

    .line 3192
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setSender(Ljavax/mail/Message;)V

    .line 3193
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailer(Ljavax/mail/Message;)V

    .line 3194
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAutoSubmitted(Ljavax/mail/Message;)V

    .line 3195
    if-eqz p2, :cond_1

    .line 3196
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setPriority(Ljavax/mail/Message;)V

    .line 3200
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3204
    :goto_0
    return-void

    .line 3201
    :catch_0
    move-exception v0

    .line 3202
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private fixUpAttachmentFilters()Z
    .locals 6

    .prologue
    .line 1787
    sget-boolean v5, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1789
    :cond_0
    const/4 v3, 0x0

    .line 1790
    .local v3, "fixed":Z
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v5

    .line 1791
    .local v2, "expect":I
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v1, v5

    .line 1792
    .local v1, "current":I
    if-eq v1, v2, :cond_1

    .line 1793
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    invoke-static {v5, v2}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/logging/Filter;

    iput-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1794
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 1798
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1799
    .local v0, "body":Ljava/util/logging/Filter;
    if-eqz v0, :cond_1

    .line 1800
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_3

    .line 1807
    .end local v0    # "body":Ljava/util/logging/Filter;
    .end local v4    # "i":I
    :cond_1
    if-nez v2, :cond_4

    .line 1808
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1809
    sget-boolean v5, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v5, v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1794
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1801
    .restart local v0    # "body":Ljava/util/logging/Filter;
    .restart local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aput-object v0, v5, v4

    .line 1800
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1811
    .end local v0    # "body":Ljava/util/logging/Filter;
    .end local v4    # "i":I
    :cond_4
    return v3
.end method

.method private fixUpAttachmentNames()Z
    .locals 7

    .prologue
    .line 1758
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1759
    :cond_0
    const/4 v2, 0x0

    .line 1760
    .local v2, "fixed":Z
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v4

    .line 1761
    .local v1, "expect":I
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v0, v4

    .line 1762
    .local v0, "current":I
    if-eq v0, v1, :cond_1

    .line 1763
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    invoke-static {v4, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/logging/Formatter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1764
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1768
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 1769
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1770
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v4, v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1764
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1772
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_5

    .line 1779
    .end local v3    # "i":I
    :cond_4
    return v2

    .line 1773
    .restart local v3    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v4, v4, v3

    if-nez v4, :cond_6

    .line 1774
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    new-instance v5, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    .line 1775
    iget-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v6, v6, v3

    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    .line 1774
    aput-object v5, v4, v3

    .line 1772
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v9, 0x4

    .line 3121
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3122
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v2

    .line 3123
    .local v2, "body":Ljavax/mail/internet/MimeBodyPart;
    iget-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v8, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {p0, v6, v7, v8}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v3

    .line 3124
    .local v3, "msgDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v5

    .line 3121
    .local v5, "subjectType":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3127
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "Formatted using "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3128
    if-nez p3, :cond_0

    const-class v6, Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3129
    const-string v7, ", filtered with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3130
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and named by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3131
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3127
    invoke-virtual {v2, v6}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3132
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    invoke-direct {p0, v2, v6, v7}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3133
    new-instance v4, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v4}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 3134
    .local v4, "multipart":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v4, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 3135
    invoke-virtual {p1, v4}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3136
    invoke-virtual {p1, v3}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 3137
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3138
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3144
    .end local v2    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "msgDesc":Ljava/lang/String;
    .end local v4    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .end local v5    # "subjectType":Ljava/lang/String;
    :goto_1
    return-void

    .line 3121
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3139
    :catch_0
    move-exception v0

    .line 3140
    .local v0, "ME":Ljavax/mail/MessagingException;
    const-string v6, "Unable to create body."

    invoke-virtual {p0, v6, v0, v9}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 3129
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    .restart local v2    # "body":Ljavax/mail/internet/MimeBodyPart;
    .restart local v3    # "msgDesc":Ljava/lang/String;
    .restart local v5    # "subjectType":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    goto :goto_0

    .line 3141
    .end local v2    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "msgDesc":Ljava/lang/String;
    .end local v5    # "subjectType":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3142
    .local v1, "RE":Ljava/lang/RuntimeException;
    const-string v6, "Unable to create body."

    invoke-virtual {p0, v6, v1, v9}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method private fixUpSession()Ljavax/mail/Session;
    .locals 3

    .prologue
    .line 3152
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3154
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    const-string/jumbo v2, "verify"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3155
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v0

    .line 3156
    .local v0, "settings":Ljavax/mail/Session;
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3158
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    .line 3159
    const/4 v0, 0x0

    .line 3161
    .restart local v0    # "settings":Ljavax/mail/Session;
    :cond_2
    return-object v0
.end method

.method private format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 3548
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3551
    :goto_0
    return-object v1

    .line 3549
    :catch_0
    move-exception v0

    .line 3550
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3551
    const-string v1, ""

    goto :goto_0
.end method

.method private getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "ccl"    # Ljava/lang/Object;

    .prologue
    .line 3861
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    if-eq p1, v2, :cond_1

    .line 3864
    :try_start_0
    instance-of v2, p1, Ljava/security/PrivilegedAction;

    if-eqz v2, :cond_0

    .line 3865
    move-object v0, p1

    check-cast v0, Ljava/security/PrivilegedAction;

    move-object v1, v0

    .line 3869
    .local v1, "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :goto_0
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 3873
    .end local v1    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :goto_1
    return-object v2

    .line 3867
    :cond_0
    new-instance v1, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    goto :goto_0

    .line 3870
    .end local v1    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :catch_0
    move-exception v2

    .line 3873
    :cond_1
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    goto :goto_1
.end method

.method private getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .prologue
    .line 3282
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v0, :cond_0

    .line 3283
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3285
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1634
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1635
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;

    invoke-virtual {v1, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "type":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1637
    const/4 v0, 0x0

    .line 1639
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1650
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 1652
    :cond_0
    return-object v0
.end method

.method private getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljavax/mail/Service;

    .prologue
    .line 3924
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getLocalHost(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3931
    :goto_0
    return-object v1

    .line 3928
    :catch_0
    move-exception v0

    .line 3929
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljavax/mail/Service;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3931
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3925
    :catch_1
    move-exception v1

    goto :goto_1

    .line 3926
    :catch_2
    move-exception v1

    goto :goto_1

    .line 3927
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private getSession(Ljavax/mail/Message;)Ljavax/mail/Session;
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3942
    if-nez p1, :cond_0

    .line 3943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3945
    :cond_0
    new-instance v0, Ljavax/mail/MessageContext;

    invoke-direct {v0, p1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getSession()Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method private grow()V
    .locals 3

    .prologue
    .line 1860
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1861
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v0, v2

    .line 1862
    .local v0, "len":I
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 1863
    .local v1, "newCapacity":I
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gt v1, v2, :cond_1

    if-ge v1, v0, :cond_2

    .line 1864
    :cond_1
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 1866
    :cond_2
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 1867
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    invoke-static {v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 1868
    return-void
.end method

.method private static hasValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2083
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private head(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .prologue
    .line 3533
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3536
    :goto_0
    return-object v1

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3536
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized init(Ljava/util/Properties;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 1878
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1879
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1880
    .local v1, "p":Ljava/lang/String;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1881
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1883
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_2
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1885
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initErrorManager(Ljava/lang/String;)V

    .line 1891
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initLevel(Ljava/lang/String;)V

    .line 1892
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initFilter(Ljava/lang/String;)V

    .line 1893
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initCapacity(Ljava/lang/String;)V

    .line 1894
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initAuthenticator(Ljava/lang/String;)V

    .line 1896
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initEncoding(Ljava/lang/String;)V

    .line 1897
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initFormatter(Ljava/lang/String;)V

    .line 1898
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initComparator(Ljava/lang/String;)V

    .line 1899
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initPushLevel(Ljava/lang/String;)V

    .line 1900
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initPushFilter(Ljava/lang/String;)V

    .line 1902
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initSubject(Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFormaters(Ljava/lang/String;)V

    .line 1905
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFilters(Ljava/lang/String;)V

    .line 1906
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentNames(Ljava/lang/String;)V

    .line 1908
    if-nez p1, :cond_1

    const-string v2, ".verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1909
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1911
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->intern()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1912
    monitor-exit p0

    return-void

    .line 1884
    :catchall_1
    move-exception v2

    .line 1885
    :try_start_4
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private initAttachmentFilters(Ljava/lang/String;)V
    .locals 9
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    .line 2093
    sget-boolean v6, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2094
    :cond_0
    sget-boolean v6, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2095
    :cond_1
    const-string v6, ".attachment.filters"

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2096
    .local v4, "list":Ljava/lang/String;
    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2097
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2098
    .local v5, "names":[Ljava/lang/String;
    array-length v6, v5

    new-array v2, v6, [Ljava/util/logging/Filter;

    .line 2099
    .local v2, "a":[Ljava/util/logging/Filter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-lt v3, v6, :cond_3

    .line 2112
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2113
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2114
    const-string v6, "Attachment filters."

    .line 2115
    const-string v7, "Length mismatch."

    invoke-static {v7}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v7

    .line 2114
    invoke-virtual {p0, v6, v7, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2121
    .end local v2    # "a":[Ljava/util/logging/Filter;
    .end local v3    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2100
    .restart local v2    # "a":[Ljava/util/logging/Filter;
    .restart local v3    # "i":I
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_3
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2101
    const-string v6, "null"

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2103
    :try_start_0
    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2099
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2104
    :catch_0
    move-exception v1

    .line 2105
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2106
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2107
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_2

    .line 2118
    .end local v0    # "E":Ljava/lang/Exception;
    .end local v2    # "a":[Ljava/util/logging/Filter;
    .end local v3    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2119
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    goto :goto_1
.end method

.method private initAttachmentFormaters(Ljava/lang/String;)V
    .locals 11
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    .line 2130
    sget-boolean v8, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2131
    :cond_0
    const-string v8, ".attachment.formatters"

    invoke-virtual {p1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2132
    .local v6, "list":Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2134
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2135
    .local v7, "names":[Ljava/lang/String;
    array-length v8, v7

    if-nez v8, :cond_1

    .line 2136
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v4

    .line 2141
    .local v4, "a":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v8, v4

    if-lt v5, v8, :cond_2

    .line 2164
    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 2168
    .end local v4    # "a":[Ljava/util/logging/Formatter;
    .end local v5    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    :goto_2
    return-void

    .line 2138
    .restart local v7    # "names":[Ljava/lang/String;
    :cond_1
    array-length v8, v7

    new-array v4, v8, [Ljava/util/logging/Formatter;

    .restart local v4    # "a":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 2142
    .restart local v5    # "i":I
    :cond_2
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2143
    const-string v8, "null"

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2145
    :try_start_0
    aget-object v8, v7, v5

    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v8

    aput-object v8, v4, v5

    .line 2146
    aget-object v8, v4, v5

    instance-of v8, v8, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v8, :cond_3

    .line 2147
    new-instance v0, Ljava/lang/ClassNotFoundException;

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2148
    .local v0, "CNFE":Ljava/lang/Exception;
    const-string v8, "Attachment formatter."

    const/4 v9, 0x4

    invoke-virtual {p0, v8, v0, v9}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2149
    new-instance v8, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v8}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v8, v4, v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2141
    .end local v0    # "CNFE":Ljava/lang/Exception;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2151
    :catch_0
    move-exception v3

    .line 2152
    .local v3, "SE":Ljava/lang/SecurityException;
    throw v3

    .line 2153
    .end local v3    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2154
    .local v1, "E":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2155
    new-instance v8, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v8}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v8, v4, v5

    goto :goto_3

    .line 2158
    .end local v1    # "E":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-static {v5}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2159
    .local v2, "NPE":Ljava/lang/Exception;
    const-string v8, "Attachment formatter."

    invoke-virtual {p0, v8, v2, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2160
    new-instance v8, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v8}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v8, v4, v5

    goto :goto_3

    .line 2166
    .end local v2    # "NPE":Ljava/lang/Exception;
    .end local v4    # "a":[Ljava/util/logging/Formatter;
    .end local v5    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v8

    iput-object v8, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    goto :goto_2
.end method

.method private initAttachmentNames(Ljava/lang/String;)V
    .locals 11
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    .line 2177
    sget-boolean v8, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2178
    :cond_0
    sget-boolean v8, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2180
    :cond_1
    const-string v8, ".attachment.names"

    invoke-virtual {p1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2181
    .local v5, "list":Ljava/lang/String;
    invoke-static {v5}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2182
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2183
    .local v7, "names":[Ljava/lang/String;
    array-length v8, v7

    new-array v3, v8, [Ljava/util/logging/Formatter;

    .line 2184
    .local v3, "a":[Ljava/util/logging/Formatter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v3

    if-lt v4, v8, :cond_3

    .line 2206
    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2207
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2208
    const-string v8, "Attachment names."

    .line 2209
    const-string v9, "Length mismatch."

    invoke-static {v9}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v9

    .line 2208
    invoke-virtual {p0, v8, v9, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2215
    .end local v3    # "a":[Ljava/util/logging/Formatter;
    .end local v4    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2185
    .restart local v3    # "a":[Ljava/util/logging/Formatter;
    .restart local v4    # "i":I
    .restart local v7    # "names":[Ljava/lang/String;
    :cond_3
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 2186
    const-string v8, "null"

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2189
    :try_start_0
    aget-object v8, v7, v4

    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v8

    aput-object v8, v3, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2184
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2190
    :catch_0
    move-exception v6

    .line 2191
    .local v6, "literal":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v8, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    aget-object v9, v7, v4

    invoke-direct {v8, v9}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 2195
    .end local v6    # "literal":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 2196
    .local v2, "SE":Ljava/lang/SecurityException;
    throw v2

    .line 2192
    .end local v2    # "SE":Ljava/lang/SecurityException;
    :catch_2
    move-exception v6

    .line 2193
    .local v6, "literal":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v8, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    aget-object v9, v7, v4

    invoke-direct {v8, v9}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v4
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 2197
    .end local v6    # "literal":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 2198
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_2

    .line 2201
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v1, "NPE":Ljava/lang/Exception;
    const-string v8, "Attachment names."

    invoke-virtual {p0, v8, v1, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_2

    .line 2212
    .end local v1    # "NPE":Ljava/lang/Exception;
    .end local v3    # "a":[Ljava/util/logging/Formatter;
    .end local v4    # "i":I
    .end local v7    # "names":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v8

    iput-object v8, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2213
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    goto :goto_1
.end method

.method private initAuthenticator(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2224
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2225
    :cond_0
    const-string v4, ".authenticator"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2226
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2229
    :try_start_0
    const-class v4, Ljavax/mail/Authenticator;

    invoke-static {v3, v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Authenticator;

    .line 2228
    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2240
    :cond_1
    :goto_0
    return-void

    .line 2230
    :catch_0
    move-exception v1

    .line 2231
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2232
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2233
    .local v2, "literalAuth":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    goto :goto_0

    .line 2234
    .end local v2    # "literalAuth":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 2235
    .local v2, "literalAuth":Ljava/lang/ClassCastException;
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    goto :goto_0

    .line 2236
    .end local v2    # "literalAuth":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 2237
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initCapacity(Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3e8

    .line 2292
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2293
    :cond_0
    const/16 v0, 0x3e8

    .line 2295
    .local v0, "DEFAULT_CAPACITY":I
    :try_start_0
    const-string v4, ".capacity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2296
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2297
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2307
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gtz v4, :cond_1

    .line 2308
    iput v6, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 2311
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/logging/LogRecord;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2312
    return-void

    .line 2299
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x3e8

    :try_start_1
    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2301
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2302
    .local v2, "SE":Ljava/lang/SecurityException;
    throw v2

    .line 2303
    .end local v2    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2304
    .local v1, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initComparator(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2413
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2415
    :cond_0
    :try_start_0
    const-string v4, ".comparator"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2416
    .local v2, "name":Ljava/lang/String;
    const-string v4, ".comparator.reverse"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2417
    .local v3, "reverse":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2418
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2419
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2420
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2429
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "reverse":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2430
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2421
    .end local v1    # "SE":Ljava/lang/SecurityException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "reverse":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2434
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "reverse":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 2424
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "reverse":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2425
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 2426
    const-string v5, "No comparator to reverse."

    .line 2425
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2431
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "reverse":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2432
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initEncoding(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    .line 2321
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2323
    :cond_0
    :try_start_0
    const-string v4, ".encoding"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2324
    .local v3, "e":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2325
    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2334
    .end local v3    # "e":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2327
    :catch_0
    move-exception v1

    .line 2328
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2329
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2330
    .local v2, "UEE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2331
    .end local v2    # "UEE":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 2332
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initErrorManager(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2363
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2365
    :cond_0
    :try_start_0
    const-string v3, ".errorManager"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2366
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2367
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2374
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2369
    :catch_0
    move-exception v1

    .line 2370
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2371
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2372
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initFilter(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2272
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2274
    :cond_0
    :try_start_0
    const-string v3, ".filter"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2275
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2276
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2283
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2278
    :catch_0
    move-exception v1

    .line 2279
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2280
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2281
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initFormatter(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2383
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2385
    :cond_0
    :try_start_0
    const-string v4, ".formatter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2386
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2388
    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v2

    .line 2389
    .local v2, "f":Ljava/util/logging/Formatter;
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2398
    .end local v2    # "f":Ljava/util/logging/Formatter;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2399
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2390
    .end local v1    # "SE":Ljava/lang/SecurityException;
    .restart local v2    # "f":Ljava/util/logging/Formatter;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    instance-of v4, v2, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-nez v4, :cond_2

    .line 2391
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2404
    .end local v2    # "f":Ljava/util/logging/Formatter;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 2393
    .restart local v2    # "f":Ljava/util/logging/Formatter;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v4}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2400
    .end local v2    # "f":Ljava/util/logging/Formatter;
    .end local v3    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2401
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2402
    new-instance v4, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v4}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2396
    .end local v0    # "E":Ljava/lang/Exception;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v4}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private initLevel(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2249
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2251
    :cond_0
    :try_start_0
    const-string v3, ".level"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2252
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2253
    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 2263
    .end local v2    # "val":Ljava/lang/String;
    :goto_0
    return-void

    .line 2255
    .restart local v2    # "val":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2257
    .end local v2    # "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2258
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2259
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2260
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2261
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method private initPushFilter(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2465
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2467
    :cond_0
    :try_start_0
    const-string v3, ".pushFilter"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2468
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2469
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2476
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2471
    :catch_0
    move-exception v1

    .line 2472
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2473
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2474
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initPushLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2443
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2445
    :cond_0
    :try_start_0
    const-string v2, ".pushLevel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2446
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2447
    invoke-static {v1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    if-nez v2, :cond_2

    .line 2454
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    .line 2456
    :cond_2
    return-void

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v0, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private initSession()Ljavax/mail/Session;
    .locals 3

    .prologue
    .line 3169
    sget-boolean v2, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3171
    .local v0, "p":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/logging/LogManagerProperties;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 3172
    .local v1, "proxy":Lcom/sun/mail/util/logging/LogManagerProperties;
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    invoke-static {v1, v2}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    .line 3173
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    return-object v2
.end method

.method private initSubject(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 2485
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2486
    :cond_0
    const-string v4, ".subject"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2487
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2489
    :try_start_0
    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2506
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    if-nez v4, :cond_2

    .line 2507
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2509
    :cond_2
    return-void

    .line 2490
    :catch_0
    move-exception v1

    .line 2491
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2492
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2493
    .local v2, "literalSubject":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2494
    .end local v2    # "literalSubject":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 2495
    .local v2, "literalSubject":Ljava/lang/ClassCastException;
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2496
    .end local v2    # "literalSubject":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 2497
    .local v0, "E":Ljava/lang/Exception;
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2498
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2501
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_3
    if-eqz v3, :cond_1

    .line 2502
    new-instance v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v4, v3}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    goto :goto_0
.end method

.method private intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 2000
    if-nez p2, :cond_0

    .line 2001
    const/4 v4, 0x0

    .line 2065
    :goto_0
    return-object v4

    .line 2020
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2021
    move-object v1, p2

    .line 2030
    .local v1, "key":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_6

    .line 2031
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2032
    .local v0, "found":Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 2034
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2035
    .local v3, "right":Z
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2036
    .local v2, "left":Z
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 2038
    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2039
    if-eqz v0, :cond_1

    .line 2040
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2041
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2042
    if-eq v0, p2, :cond_1

    .line 2043
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2044
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2052
    :cond_1
    :goto_2
    move-object v4, p2

    .line 2053
    .local v4, "use":Ljava/lang/Object;
    goto :goto_0

    .line 2025
    .end local v0    # "found":Ljava/lang/Object;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "left":Z
    .end local v3    # "right":Z
    .end local v4    # "use":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 2048
    .restart local v0    # "found":Ljava/lang/Object;
    .restart local v2    # "left":Z
    .restart local v3    # "right":Z
    :cond_3
    if-eq v3, v2, :cond_1

    .line 2049
    invoke-direct {p0, p2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2055
    .end local v2    # "left":Z
    .end local v3    # "right":Z
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_5

    .line 2056
    move-object v4, v0

    .line 2057
    .restart local v4    # "use":Ljava/lang/Object;
    goto :goto_0

    .line 2058
    .end local v4    # "use":Ljava/lang/Object;
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2059
    move-object v4, p2

    .line 2062
    .restart local v4    # "use":Ljava/lang/Object;
    goto :goto_0

    .line 2063
    .end local v0    # "found":Ljava/lang/Object;
    .end local v4    # "use":Ljava/lang/Object;
    :cond_6
    move-object v4, p2

    .restart local v4    # "use":Ljava/lang/Object;
    goto :goto_0
.end method

.method private intern()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 1922
    sget-boolean v7, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1926
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_3

    .line 1928
    .local v5, "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_1
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, v5, v7}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3

    .line 1934
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1935
    .local v1, "canidate":Ljava/util/logging/Filter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1936
    .local v3, "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_1

    instance-of v7, v3, Ljava/util/logging/Filter;

    if-eqz v7, :cond_1

    .line 1937
    check-cast v3, Ljava/util/logging/Filter;

    .end local v3    # "result":Ljava/lang/Object;
    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1940
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 1941
    .local v1, "canidate":Ljava/util/logging/Formatter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1942
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_2

    instance-of v7, v3, Ljava/util/logging/Formatter;

    if-eqz v7, :cond_2

    .line 1943
    check-cast v3, Ljava/util/logging/Formatter;

    .end local v3    # "result":Ljava/lang/Object;
    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_3

    .line 1949
    .end local v1    # "canidate":Ljava/util/logging/Formatter;
    :cond_2
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1950
    .restart local v1    # "canidate":Ljava/util/logging/Formatter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1951
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_3

    instance-of v7, v3, Ljava/util/logging/Formatter;

    if-eqz v7, :cond_3

    .line 1952
    check-cast v3, Ljava/util/logging/Formatter;

    .end local v3    # "result":Ljava/lang/Object;
    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1955
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    .line 1956
    .local v1, "canidate":Ljava/util/logging/Filter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1957
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_4

    instance-of v7, v3, Ljava/util/logging/Filter;

    if-eqz v7, :cond_4

    .line 1958
    move-object v0, v3

    check-cast v0, Ljava/util/logging/Filter;

    move-object v7, v0

    iput-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    .line 1961
    :cond_4
    const/4 v2, 0x0

    .end local v1    # "canidate":Ljava/util/logging/Filter;
    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v7, v7

    if-lt v2, v7, :cond_5

    .line 1986
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/Object;
    .end local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_3
    return-void

    .line 1929
    .restart local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 1930
    .local v4, "se":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v4, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1980
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_1
    move-exception v6

    .line 1981
    .local v6, "skip":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6, v9}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3

    .line 1945
    .end local v6    # "skip":Ljava/lang/Exception;
    .restart local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_2
    move-exception v4

    .line 1946
    .restart local v4    # "se":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v4, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 1982
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_3
    move-exception v6

    .line 1983
    .local v6, "skip":Ljava/lang/LinkageError;
    invoke-virtual {v6}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v8, v6}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3

    .line 1962
    .end local v6    # "skip":Ljava/lang/LinkageError;
    .restart local v2    # "i":I
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v5    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v1, v7, v2

    .line 1963
    .local v1, "canidate":Ljava/util/logging/Formatter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1964
    if-eq v3, v1, :cond_6

    instance-of v7, v3, Ljava/util/logging/Formatter;

    if-eqz v7, :cond_6

    .line 1965
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    check-cast v3, Ljava/util/logging/Formatter;

    .end local v3    # "result":Ljava/lang/Object;
    aput-object v3, v7, v2

    .line 1968
    :cond_6
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v1, v7, v2

    .line 1969
    .local v1, "canidate":Ljava/util/logging/Filter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1970
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_7

    instance-of v7, v3, Ljava/util/logging/Filter;

    if-eqz v7, :cond_7

    .line 1971
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    check-cast v3, Ljava/util/logging/Filter;

    .end local v3    # "result":Ljava/lang/Object;
    aput-object v3, v7, v2

    .line 1974
    :cond_7
    iget-object v7, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v1, v7, v2

    .line 1975
    .local v1, "canidate":Ljava/util/logging/Formatter;
    invoke-direct {p0, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1976
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v1, :cond_8

    instance-of v7, v3, Ljava/util/logging/Formatter;

    if-eqz v7, :cond_8

    .line 1977
    iget-object v8, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object v0, v3

    check-cast v0, Ljava/util/logging/Formatter;

    move-object v7, v0

    aput-object v7, v8, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_3

    .line 1961
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 2519
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v1

    .line 2520
    .local v1, "filters":[Ljava/util/logging/Filter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 2526
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 2521
    :cond_0
    aget-object v0, v1, v2

    .line 2522
    .local v0, "f":Ljava/util/logging/Filter;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2523
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 2520
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2074
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPushable(Ljava/util/logging/LogRecord;)Z
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v2, 0x0

    .line 2536
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2537
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    .line 2538
    .local v1, "value":I
    sget v3, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 2543
    :cond_1
    :goto_0
    return v2

    .line 2542
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushFilter()Ljava/util/logging/Filter;

    move-result-object v0

    .line 2543
    .local v0, "push":Ljava/util/logging/Filter;
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;
    .locals 3
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 3382
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    .line 3383
    .local v1, "rb":Ljava/util/ResourceBundle;
    if-eqz v1, :cond_2

    .line 3384
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 3385
    .local v0, "l":Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3391
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3396
    :cond_1
    :goto_0
    return-object v0

    .line 3394
    .end local v0    # "l":Ljava/util/Locale;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "l":Ljava/util/Locale;
    goto :goto_0
.end method

.method private publish0(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v4, 0x1

    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-ge v2, v3, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->grow()V

    .line 636
    :cond_0
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 637
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    aput-object p1, v2, v3

    .line 638
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 639
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isPushable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    .line 640
    .local v1, "priority":Z
    if-nez v1, :cond_1

    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lt v2, v3, :cond_3

    .line 641
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v0

    .line 631
    .local v0, "msg":Ljavax/mail/Message;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    if-eqz v0, :cond_2

    .line 652
    invoke-direct {p0, v0, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    .line 654
    :cond_2
    return-void

    .line 643
    .end local v0    # "msg":Ljavax/mail/Message;
    :cond_3
    const/4 v0, 0x0

    .line 645
    .restart local v0    # "msg":Ljavax/mail/Message;
    goto :goto_0

    .line 646
    .end local v0    # "msg":Ljavax/mail/Message;
    .end local v1    # "priority":Z
    :cond_4
    const/4 v1, 0x0

    .line 647
    .restart local v1    # "priority":Z
    const/4 v0, 0x0

    .restart local v0    # "msg":Ljavax/mail/Message;
    goto :goto_0

    .line 631
    .end local v0    # "msg":Ljavax/mail/Message;
    .end local v1    # "priority":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private push(ZI)V
    .locals 2
    .param p1, "priority"    # Z
    .param p2, "code"    # I

    .prologue
    .line 2552
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2554
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v0

    .line 2555
    .local v0, "msg":Ljavax/mail/Message;
    if-eqz v0, :cond_0

    .line 2556
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2564
    .end local v0    # "msg":Ljavax/mail/Message;
    :goto_0
    return-void

    .line 2558
    :catchall_0
    move-exception v1

    .line 2559
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2560
    throw v1

    .line 2562
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method private readOnlyAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private releaseMutex()V
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 710
    return-void
.end method

.method private reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .prologue
    .line 1554
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toRawString(Ljavax/mail/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1562
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v2

    .line 1556
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 1557
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 1559
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1560
    .local v0, "GLASSFISH_21258":Ljava/lang/LinkageError;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_0
.end method

.method private reportFilterError(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 3477
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3478
    :cond_0
    new-instance v0, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v0}, Ljava/util/logging/SimpleFormatter;-><init>()V

    .line 3479
    .local v0, "f":Ljava/util/logging/SimpleFormatter;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log record "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3480
    const-string v4, " was filtered from all message parts.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3481
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3482
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3483
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3484
    .local v2, "txt":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3485
    const/4 v4, 0x5

    .line 3484
    invoke-virtual {p0, v1, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3486
    return-void
.end method

.method private reportLinkageError(Ljava/lang/Throwable;I)V
    .locals 7
    .param p1, "le"    # Ljava/lang/Throwable;
    .param p2, "code"    # I

    .prologue
    .line 1584
    if-nez p1, :cond_0

    .line 1585
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1588
    :cond_0
    const/4 v2, 0x1

    .line 1589
    .local v2, "reThrow":Z
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1590
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    .line 1591
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_2

    .line 1616
    .end local v0    # "i":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_9

    .line 1617
    instance-of v5, p1, Ljava/lang/Error;

    if-eqz v5, :cond_7

    .line 1618
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "le":Ljava/lang/Throwable;
    throw p1

    .line 1592
    .restart local v0    # "i":I
    .restart local p1    # "le":Ljava/lang/Throwable;
    :cond_2
    aget-object v3, v4, v0

    .line 1593
    .local v3, "s":Ljava/lang/StackTraceElement;
    const-string v5, "error"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1594
    const-string v5, "java.util.logging.ErrorManager"

    .line 1595
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1596
    const/4 v2, 0x0

    .line 1597
    goto :goto_1

    .line 1598
    :cond_3
    const-string v5, "reportError"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1599
    const-string v5, "java.util.logging.Handler"

    .line 1600
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1601
    add-int/lit8 v5, v0, -0x1

    aget-object v1, v4, v5

    .line 1602
    .local v1, "p":Ljava/lang/StackTraceElement;
    const-string v5, "println"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1603
    const-string v5, "printStackTrace"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1604
    :cond_4
    const/4 v2, 0x0

    .line 1605
    goto :goto_1

    .line 1591
    .end local v1    # "p":Ljava/lang/StackTraceElement;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1611
    .end local v0    # "i":I
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :cond_6
    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    .line 1612
    const/4 v2, 0x0

    goto :goto_1

    .line 1619
    :cond_7
    instance-of v5, p1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_8

    .line 1620
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "le":Ljava/lang/Throwable;
    throw p1

    .line 1622
    .restart local p1    # "le":Ljava/lang/Throwable;
    :cond_8
    sget-boolean v5, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1625
    :cond_9
    return-void
.end method

.method private reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .prologue
    .line 3511
    const-string v0, "Non discriminating equals implementation."

    .line 3512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3513
    const-string v3, " should not be equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3512
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3514
    const/4 v2, 0x4

    .line 3511
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3515
    return-void
.end method

.method private reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .prologue
    .line 3496
    const-string v0, "Non symmetric equals implementation."

    .line 3497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3498
    const-string v3, " is not equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3497
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3499
    const/4 v2, 0x4

    .line 3496
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3500
    return-void
.end method

.method private reportNullError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3523
    const-string v0, "null"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3524
    return-void
.end method

.method private reportUnPublishedError(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 665
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    sget-object v4, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v4, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 669
    if-eqz p1, :cond_1

    .line 670
    :try_start_0
    new-instance v1, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v1}, Ljava/util/logging/SimpleFormatter;-><init>()V

    .line 671
    .local v1, "f":Ljava/util/logging/SimpleFormatter;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log record "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    const-string v4, " was not published. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 671
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .end local v1    # "f":Ljava/util/logging/SimpleFormatter;
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recursive publish detected by thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v4, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 675
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 681
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 682
    sget-object v4, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v5, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 683
    throw v3
.end method

.method private reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 3101
    new-instance v0, Ljavax/mail/MessagingException;

    .line 3102
    const-string v1, "An empty message was sent."

    .line 3101
    invoke-direct {v0, v1, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3103
    .local v0, "write":Ljavax/mail/MessagingException;
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3104
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3105
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1847
    sget-boolean v0, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1848
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1853
    :goto_0
    iput v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 1854
    return-void

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private send(Ljavax/mail/Message;ZI)V
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z
    .param p3, "code"    # I

    .prologue
    .line 2578
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2579
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2581
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2583
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    .end local v0    # "ccl":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2582
    .restart local v0    # "ccl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 2583
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    throw v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2585
    .end local v0    # "ccl":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2586
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2587
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 2588
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v1, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setAcceptLang(Ljavax/mail/Part;)V
    .locals 4
    .param p1, "p"    # Ljavax/mail/Part;

    .prologue
    .line 3459
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3460
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3461
    const-string v2, "Accept-Language"

    invoke-interface {p1, v2, v1}, Ljavax/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3466
    .end local v1    # "lang":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v0, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setAuthenticator0(Ljavax/mail/Authenticator;)V
    .locals 2
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v1, :cond_0

    .line 1133
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1131
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1135
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 1136
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1131
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1139
    return-void
.end method

.method private setAutoSubmitted(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3636
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->allowRestrictedHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3638
    :try_start_0
    const-string v1, "auto-submitted"

    const-string v2, "auto-generated"

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3643
    :cond_0
    :goto_0
    return-void

    .line 3639
    :catch_0
    move-exception v0

    .line 3640
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private declared-synchronized setCapacity0(I)V
    .locals 2
    .param p1, "newCapacity"    # I

    .prologue
    .line 1710
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1711
    if-gtz p1, :cond_0

    .line 1712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1715
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_1

    .line 1716
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1719
    :cond_1
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gez v0, :cond_2

    .line 1720
    neg-int v0, p1

    iput v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :goto_0
    monitor-exit p0

    return-void

    .line 1722
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 5
    .param p1, "part"    # Ljavax/mail/internet/MimeBodyPart;
    .param p2, "buf"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1663
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "charset":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v3, "text/plain"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1665
    invoke-direct {p0, p3, v1}, Lcom/sun/mail/util/logging/MailHandler;->contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1667
    :try_start_0
    new-instance v2, Ljavax/mail/util/ByteArrayDataSource;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    .local v2, "source":Ljavax/activation/DataSource;
    new-instance v3, Ljavax/activation/DataHandler;

    invoke-direct {v3, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p1, v3}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    .end local v2    # "source":Ljavax/activation/DataSource;
    :goto_0
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "IOE":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1671
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    .end local v0    # "IOE":Ljava/io/IOException;
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDefaultFrom(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3680
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3684
    :goto_0
    return-void

    .line 3681
    :catch_0
    move-exception v0

    .line 3682
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V
    .locals 8
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "type"    # Ljavax/mail/Message$RecipientType;

    .prologue
    const/4 v7, 0x5

    .line 3696
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v5

    invoke-static {v5}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 3697
    .local v2, "a":Ljavax/mail/Address;
    if-eqz v2, :cond_0

    .line 3698
    invoke-virtual {p1, p2, v2}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 3716
    .end local v2    # "a":Ljavax/mail/Address;
    :goto_0
    return-void

    .line 3700
    .restart local v2    # "a":Ljavax/mail/Address;
    :cond_0
    new-instance v4, Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 3701
    .local v4, "m":Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v4}, Ljavax/mail/internet/MimeMessage;->setFrom()V

    .line 3702
    invoke-virtual {v4}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v3

    .line 3703
    .local v3, "from":[Ljavax/mail/Address;
    array-length v5, v3

    if-lez v5, :cond_1

    .line 3704
    invoke-virtual {p1, p2, v3}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3709
    .end local v2    # "a":Ljavax/mail/Address;
    .end local v3    # "from":[Ljavax/mail/Address;
    .end local v4    # "m":Ljavax/mail/internet/MimeMessage;
    :catch_0
    move-exception v0

    .line 3710
    .local v0, "ME":Ljavax/mail/MessagingException;
    const-string v5, "Unable to compute a default recipient."

    invoke-virtual {p0, v5, v0, v7}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 3706
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    .restart local v2    # "a":Ljavax/mail/Address;
    .restart local v3    # "from":[Ljavax/mail/Address;
    .restart local v4    # "m":Ljavax/mail/internet/MimeMessage;
    :cond_1
    :try_start_1
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "No local address."

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3712
    .end local v2    # "a":Ljavax/mail/Address;
    .end local v3    # "from":[Ljavax/mail/Address;
    .end local v4    # "m":Ljavax/mail/internet/MimeMessage;
    :catch_1
    move-exception v1

    .line 3713
    .local v1, "RE":Ljava/lang/RuntimeException;
    const-string v5, "Unable to compute a default recipient."

    invoke-virtual {p0, v5, v1, v7}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setEncoding0(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 945
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "icne":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    .end local v0    # "icne":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_0
    monitor-enter p0

    .line 954
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;

    .line 953
    monitor-exit p0

    .line 956
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setFrom(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3650
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v3

    const-string v4, "mail.from"

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3651
    .local v2, "from":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3653
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3654
    .local v1, "address":[Ljavax/mail/Address;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 3655
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3656
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v3}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 3672
    .end local v1    # "address":[Ljavax/mail/Address;
    :cond_0
    :goto_0
    return-void

    .line 3658
    .restart local v1    # "address":[Ljavax/mail/Address;
    :cond_1
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->addFrom([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3665
    .end local v1    # "address":[Ljavax/mail/Address;
    :catch_0
    move-exception v0

    .line 3666
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3667
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    goto :goto_0

    .line 3670
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    goto :goto_0
.end method

.method private setIncompleteCopy(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3623
    :try_start_0
    const-string v1, "Incomplete-Copy"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3627
    :goto_0
    return-void

    .line 3624
    :catch_0
    move-exception v0

    .line 3625
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setMailProperties0(Ljava/util/Properties;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1163
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "props":Ljava/util/Properties;
    check-cast p1, Ljava/util/Properties;

    .line 1165
    .restart local p1    # "props":Ljava/util/Properties;
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v1, :cond_0

    .line 1167
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1169
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1170
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1165
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1173
    return-void
.end method

.method private setMailer(Ljavax/mail/Message;)V
    .locals 9
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v8, 0x5

    .line 3576
    :try_start_0
    const-class v3, Lcom/sun/mail/util/logging/MailHandler;

    .line 3577
    .local v3, "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3579
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, v3, :cond_0

    .line 3580
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3591
    .local v4, "value":Ljava/lang/String;
    :goto_0
    const-string v5, "X-Mailer"

    invoke-virtual {p1, v5, v4}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3595
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    return-void

    .line 3583
    .restart local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 3588
    .restart local v4    # "value":Ljava/lang/String;
    :goto_2
    const/16 v5, 0xa

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " using the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3589
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extension."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3588
    invoke-static {v5, v6}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3584
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3585
    .local v0, "E":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3586
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[^\\x00-\\x7F]"

    const-string v7, "\u001a"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_2

    .line 3592
    .end local v0    # "E":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3593
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method private setPriority(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3603
    :try_start_0
    const-string v1, "Importance"

    const-string v2, "High"

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const-string v1, "Priority"

    const-string/jumbo v2, "urgent"

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    const-string v1, "X-Priority"

    const-string v2, "2"

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3609
    :goto_0
    return-void

    .line 3606
    :catch_0
    move-exception v0

    .line 3607
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z
    .locals 6
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/mail/Message$RecipientType;

    .prologue
    const/4 v2, 0x0

    .line 3782
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3783
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3784
    .local v2, "containsKey":Z
    :cond_0
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3786
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3787
    .local v1, "address":[Ljavax/mail/Address;
    array-length v4, v1

    if-lez v4, :cond_1

    .line 3788
    invoke-virtual {p1, p3, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3794
    .end local v1    # "address":[Ljavax/mail/Address;
    :cond_1
    :goto_0
    return v2

    .line 3790
    :catch_0
    move-exception v0

    .line 3791
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setReplyTo(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 3723
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v3

    const-string v4, "mail.reply.to"

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3724
    .local v2, "reply":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3726
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3727
    .local v1, "address":[Ljavax/mail/Address;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 3728
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3734
    .end local v1    # "address":[Ljavax/mail/Address;
    :cond_0
    :goto_0
    return-void

    .line 3730
    :catch_0
    move-exception v0

    .line 3731
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private setSender(Ljavax/mail/Message;)V
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 3741
    sget-boolean v3, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    instance-of v3, p1, Ljavax/mail/internet/MimeMessage;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 3742
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v3

    const-string v4, "mail.sender"

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3743
    .local v2, "sender":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3746
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3747
    .local v1, "address":[Ljavax/mail/internet/InternetAddress;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 3748
    check-cast p1, Ljavax/mail/internet/MimeMessage;

    .end local p1    # "msg":Ljavax/mail/Message;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v3}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    .line 3749
    array-length v3, v1

    if-le v3, v5, :cond_1

    .line 3750
    const-string v3, "Ignoring other senders."

    .line 3751
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;

    move-result-object v4

    .line 3752
    const/4 v5, 0x5

    .line 3750
    invoke-virtual {p0, v3, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3759
    .end local v1    # "address":[Ljavax/mail/internet/InternetAddress;
    :cond_1
    :goto_0
    return-void

    .line 3755
    :catch_0
    move-exception v0

    .line 3756
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private sort()V
    .locals 5

    .prologue
    .line 2597
    sget-boolean v1, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2598
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    .line 2600
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 2601
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 2612
    :cond_1
    :goto_0
    return-void

    .line 2603
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2605
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2604
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :catch_0
    move-exception v0

    .line 2609
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 3563
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 3566
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 3564
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3565
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v7, 0x20

    .line 3828
    if-nez p1, :cond_0

    .line 3829
    const-string v5, "null"

    .line 3848
    :goto_0
    return-object v5

    .line 3832
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    .line 3835
    .local v1, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3839
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3840
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3842
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 3843
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3844
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 3845
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    .line 3846
    .local v4, "unexpected":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3847
    .end local v4    # "unexpected":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3848
    .local v0, "badMimeCharset":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private toRawString(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3807
    if-eqz p1, :cond_0

    .line 3808
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3810
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v3

    add-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3811
    .local v1, "nbytes":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3812
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v2}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 3813
    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3815
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3818
    .end local v0    # "ccl":Ljava/lang/Object;
    .end local v1    # "nbytes":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 3814
    .restart local v0    # "ccl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .line 3815
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    throw v3

    .line 3818
    .end local v0    # "ccl":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private toString(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .prologue
    .line 3296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3297
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3300
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;
    .locals 3
    .param p1, "address"    # [Ljavax/mail/Address;
    .param p2, "offset"    # I

    .prologue
    .line 3768
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v2, p1

    invoke-interface {v1, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 3769
    .local v0, "l":Ljava/util/List;
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private tryMutex()Z
    .locals 2

    .prologue
    .line 695
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 696
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 697
    const/4 v0, 0x1

    .line 699
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static verifyAddresses([Ljavax/mail/Address;)V
    .locals 3
    .param p0, "all"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 3083
    if-eqz p0, :cond_0

    .line 3084
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 3091
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 3085
    .restart local v1    # "i":I
    :cond_1
    aget-object v0, p0, v1

    .line 3086
    .local v0, "a":Ljavax/mail/Address;
    instance-of v2, v0, Ljavax/mail/internet/InternetAddress;

    if-eqz v2, :cond_2

    .line 3087
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .end local v0    # "a":Ljavax/mail/Address;
    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3084
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3064
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 3068
    .local v0, "a":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3069
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1

    .line 3066
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "a":Ljava/net/InetAddress;
    goto :goto_0

    .line 3071
    :cond_1
    return-object v0
.end method

.method private verifySettings(Ljavax/mail/Session;)V
    .locals 5
    .param p1, "session"    # Ljavax/mail/Session;

    .prologue
    .line 2795
    if-eqz p1, :cond_0

    .line 2796
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 2797
    .local v1, "props":Ljava/util/Properties;
    const-string/jumbo v3, "verify"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2798
    .local v0, "check":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 2799
    check-cast v2, Ljava/lang/String;

    .line 2801
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2802
    invoke-direct {p0, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 2810
    .end local v0    # "check":Ljava/lang/Object;
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2805
    .restart local v0    # "check":Ljava/lang/Object;
    .restart local v1    # "props":Ljava/util/Properties;
    :cond_1
    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 29
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "verify"    # Ljava/lang/String;

    .prologue
    .line 2824
    sget-boolean v26, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v26, :cond_0

    if-nez p2, :cond_0

    new-instance v26, Ljava/lang/AssertionError;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v26

    .line 2825
    :cond_0
    const-string v26, "local"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, "remote"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 2826
    const-string v26, "limited"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string v26, "resolve"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 2827
    const-string v26, "Verify must be \'limited\', local\', \'resolve\' or \'remote\'."

    .line 2829
    new-instance v27, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2830
    const/16 v28, 0x4

    .line 2827
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3052
    :goto_0
    return-void

    .line 2834
    :cond_1
    new-instance v8, Ljavax/mail/internet/MimeMessage;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2836
    .local v8, "abort":Ljavax/mail/internet/MimeMessage;
    const-string v26, "limited"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 2837
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Local address is "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2838
    invoke-static/range {p1 .. p1}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2837
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2841
    .local v19, "msg":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2853
    :goto_1
    monitor-enter p0

    .line 2854
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    move-object/from16 v26, v0

    const-string v27, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2853
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2858
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 2859
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2861
    :try_start_2
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2868
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v9

    .line 2869
    .local v9, "all":[Ljavax/mail/Address;
    if-nez v9, :cond_2

    .line 2870
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v9, v0, [Ljavax/mail/internet/InternetAddress;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2874
    :cond_2
    :try_start_4
    array-length v0, v9

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object v10, v9

    .line 2875
    .local v10, "any":[Ljavax/mail/Address;
    :goto_3
    if-eqz v10, :cond_b

    array-length v0, v10

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 2876
    const/16 v26, 0x0

    aget-object v26, v10, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v25

    .line 2877
    .local v25, "t":Ljavax/mail/Transport;
    const-string v26, "mail.transport.protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2896
    .end local v10    # "any":[Ljavax/mail/Address;
    :goto_4
    const/16 v17, 0x0

    .line 2897
    .local v17, "local":Ljava/lang/String;
    :try_start_5
    const-string v26, "remote"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 2898
    const/4 v13, 0x0

    .line 2899
    .local v13, "closed":Ljavax/mail/MessagingException;
    invoke-virtual/range {v25 .. v25}, Ljavax/mail/Transport;->connect()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2903
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v17

    .line 2908
    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2911
    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljavax/mail/Transport;->close()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/mail/SendFailedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 2916
    :goto_5
    const/16 v26, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v8, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljavax/mail/SendFailedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 2935
    :cond_3
    :goto_6
    if-eqz v13, :cond_4

    .line 2936
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v13}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2937
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v13, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2970
    .end local v13    # "closed":Ljavax/mail/MessagingException;
    :cond_4
    :goto_7
    const-string v26, "limited"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result v26

    if-nez v26, :cond_6

    .line 2972
    :try_start_a
    const-string v26, "remote"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 2973
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v17

    .line 2975
    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 2988
    :goto_8
    :try_start_b
    sget-object v26, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v12

    .line 2990
    .local v12, "ccl":Ljava/lang/Object;
    :try_start_c
    new-instance v20, Ljavax/mail/internet/MimeMultipart;

    invoke-direct/range {v20 .. v20}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 2991
    .local v20, "multipart":Ljavax/mail/internet/MimeMultipart;
    new-instance v11, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v11}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 2992
    .local v11, "body":Ljavax/mail/internet/MimeBodyPart;
    const-string v26, "inline"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 2993
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 2994
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 2995
    const-string v26, ""

    const-string v27, "text/plain"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v11, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2996
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2997
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 2998
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 2999
    new-instance v26, Ljava/io/ByteArrayOutputStream;

    const/16 v27, 0x400

    invoke-direct/range {v26 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 3001
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 3011
    .end local v11    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v12    # "ccl":Ljava/lang/Object;
    .end local v20    # "multipart":Ljavax/mail/internet/MimeMultipart;
    :cond_6
    :goto_9
    :try_start_e
    array-length v0, v9

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 3012
    invoke-static {v9}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3018
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v15

    .line 3019
    .local v15, "from":[Ljavax/mail/Address;
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->getSender()Ljavax/mail/Address;

    move-result-object v23

    .line 3020
    .local v23, "sender":Ljavax/mail/Address;
    move-object/from16 v0, v23

    instance-of v0, v0, Ljavax/mail/internet/InternetAddress;

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 3021
    move-object/from16 v0, v23

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3025
    :cond_7
    const-string v26, "From"

    const-string v27, ","

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    array-length v0, v15

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 3026
    invoke-static {v15}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3027
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_a
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_10

    .line 3044
    .end local v16    # "i":I
    :cond_8
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 3045
    .end local v9    # "all":[Ljavax/mail/Address;
    .end local v15    # "from":[Ljavax/mail/Address;
    .end local v17    # "local":Ljava/lang/String;
    .end local v23    # "sender":Ljavax/mail/Address;
    .end local v25    # "t":Ljavax/mail/Transport;
    :catch_0
    move-exception v6

    .line 3046
    .local v6, "RE":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3047
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v6, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_0

    .line 2842
    .end local v6    # "RE":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 2844
    .restart local v6    # "RE":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 2845
    .local v7, "UEE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7, v6}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2846
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v7, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 2849
    .end local v6    # "RE":Ljava/lang/RuntimeException;
    .end local v7    # "UEE":Ljava/io/UnsupportedEncodingException;
    .end local v19    # "msg":Ljava/lang/String;
    :cond_9
    const-string v19, "Skipping local address check."

    .restart local v19    # "msg":Ljava/lang/String;
    goto/16 :goto_1

    .line 2853
    :catchall_0
    move-exception v26

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v26

    .line 2862
    :catch_2
    move-exception v5

    .line 2863
    .local v5, "ME":Ljavax/mail/MessagingException;
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v5, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_2

    .line 2874
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    .restart local v9    # "all":[Ljavax/mail/Address;
    :cond_a
    :try_start_10
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v10

    goto/16 :goto_3

    .line 2879
    .restart local v10    # "any":[Ljavax/mail/Address;
    :cond_b
    new-instance v18, Ljavax/mail/MessagingException;

    .line 2880
    const-string v26, "No recipient or from address."

    .line 2879
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 2881
    .local v18, "me":Ljavax/mail/MessagingException;
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2882
    throw v18
    :try_end_10
    .catch Ljavax/mail/MessagingException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 2884
    .end local v10    # "any":[Ljavax/mail/Address;
    .end local v18    # "me":Ljavax/mail/MessagingException;
    :catch_3
    move-exception v21

    .line 2886
    .local v21, "protocol":Ljavax/mail/MessagingException;
    :try_start_11
    sget-object v26, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    move-result-object v12

    .line 2888
    .restart local v12    # "ccl":Ljava/lang/Object;
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getTransport()Ljavax/mail/Transport;
    :try_end_12
    .catch Ljavax/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v25

    .line 2892
    .restart local v25    # "t":Ljavax/mail/Transport;
    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_4

    .line 3048
    .end local v9    # "all":[Ljavax/mail/Address;
    .end local v12    # "ccl":Ljava/lang/Object;
    .end local v21    # "protocol":Ljavax/mail/MessagingException;
    .end local v25    # "t":Ljavax/mail/Transport;
    :catch_4
    move-exception v5

    .line 3049
    .local v5, "ME":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3050
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_0

    .line 2889
    .end local v5    # "ME":Ljava/lang/Exception;
    .restart local v9    # "all":[Ljavax/mail/Address;
    .restart local v12    # "ccl":Ljava/lang/Object;
    .restart local v21    # "protocol":Ljavax/mail/MessagingException;
    :catch_5
    move-exception v14

    .line 2890
    .local v14, "fail":Ljavax/mail/MessagingException;
    :try_start_14
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;

    move-result-object v26

    throw v26
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2891
    .end local v14    # "fail":Ljavax/mail/MessagingException;
    :catchall_1
    move-exception v26

    .line 2892
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    throw v26
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 2909
    .end local v12    # "ccl":Ljava/lang/Object;
    .end local v21    # "protocol":Ljavax/mail/MessagingException;
    .restart local v13    # "closed":Ljavax/mail/MessagingException;
    .restart local v17    # "local":Ljava/lang/String;
    .restart local v25    # "t":Ljavax/mail/Transport;
    :catchall_2
    move-exception v26

    .line 2911
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Ljavax/mail/Transport;->close()V
    :try_end_16
    .catch Ljavax/mail/MessagingException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljavax/mail/SendFailedException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 2915
    :goto_b
    :try_start_17
    throw v26
    :try_end_17
    .catch Ljavax/mail/SendFailedException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    .line 2917
    :catch_6
    move-exception v24

    .line 2918
    .local v24, "sfe":Ljavax/mail/SendFailedException;
    :try_start_18
    invoke-virtual/range {v24 .. v24}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v22

    .line 2919
    .local v22, "recip":[Ljavax/mail/Address;
    if-eqz v22, :cond_c

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 2920
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v8, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2921
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v8, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2924
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v22

    .line 2925
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2926
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v8, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 2912
    .end local v22    # "recip":[Ljavax/mail/Address;
    .end local v24    # "sfe":Ljavax/mail/SendFailedException;
    :catch_7
    move-exception v5

    .line 2913
    .local v5, "ME":Ljavax/mail/MessagingException;
    move-object v13, v5

    goto :goto_b

    .line 2912
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :catch_8
    move-exception v5

    .line 2913
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object v13, v5

    goto/16 :goto_5

    .line 2928
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :catch_9
    move-exception v5

    .line 2929
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/sun/mail/util/logging/MailHandler;->isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 2930
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2931
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_6

    .line 2941
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    .end local v13    # "closed":Ljavax/mail/MessagingException;
    :cond_d
    invoke-virtual/range {v25 .. v25}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v21

    .line 2942
    .local v21, "protocol":Ljava/lang/String;
    const-string v26, "mail.host"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    const-string v26, "mail.user"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2944
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mail."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".host"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2945
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mail."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".port"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2946
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mail."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".user"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2947
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mail."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".localhost"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2948
    invoke-static/range {v17 .. v17}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 2949
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mail."

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2950
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".localaddress"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2949
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2953
    :cond_e
    const-string v26, "resolve"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    move-result v26

    if-eqz v26, :cond_4

    .line 2955
    :try_start_19
    invoke-virtual/range {v25 .. v25}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto/16 :goto_7

    .line 2956
    :catch_a
    move-exception v4

    .line 2958
    .local v4, "IOE":Ljava/io/IOException;
    :try_start_1a
    new-instance v5, Ljavax/mail/MessagingException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2959
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2960
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_7

    .line 2961
    .end local v4    # "IOE":Ljava/io/IOException;
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :catch_b
    move-exception v6

    .line 2963
    .restart local v6    # "RE":Ljava/lang/RuntimeException;
    new-instance v5, Ljavax/mail/MessagingException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2964
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2965
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_7

    .line 2976
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    .end local v6    # "RE":Ljava/lang/RuntimeException;
    .end local v21    # "protocol":Ljava/lang/String;
    :catch_c
    move-exception v4

    .line 2977
    .restart local v4    # "IOE":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2978
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2979
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_8

    .line 2980
    .end local v4    # "IOE":Ljava/io/IOException;
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :catch_d
    move-exception v6

    .line 2981
    .restart local v6    # "RE":Ljava/lang/RuntimeException;
    new-instance v5, Ljavax/mail/MessagingException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2982
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2983
    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    goto/16 :goto_8

    .line 3000
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    .end local v6    # "RE":Ljava/lang/RuntimeException;
    .restart local v12    # "ccl":Ljava/lang/Object;
    :catchall_3
    move-exception v26

    .line 3001
    :try_start_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    throw v26
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    .line 3003
    .end local v12    # "ccl":Ljava/lang/Object;
    :catch_e
    move-exception v4

    .line 3004
    .restart local v4    # "IOE":Ljava/io/IOException;
    :try_start_1c
    new-instance v5, Ljavax/mail/MessagingException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3005
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3006
    const/16 v26, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v8, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_9

    .line 3014
    .end local v4    # "IOE":Ljava/io/IOException;
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :cond_f
    new-instance v26, Ljavax/mail/MessagingException;

    const-string v27, "No recipient addresses."

    invoke-direct/range {v26 .. v27}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 3028
    .restart local v15    # "from":[Ljavax/mail/Address;
    .restart local v16    # "i":I
    .restart local v23    # "sender":Ljavax/mail/Address;
    :cond_10
    aget-object v26, v15, v16

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 3029
    new-instance v5, Ljavax/mail/MessagingException;

    .line 3030
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Sender address \'"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3031
    const-string v27, "\' equals from address."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3030
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3029
    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3032
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    new-instance v26, Ljavax/mail/MessagingException;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v26

    .line 3027
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 3036
    .end local v16    # "i":I
    :cond_12
    if-nez v23, :cond_8

    .line 3037
    new-instance v5, Ljavax/mail/MessagingException;

    .line 3038
    const-string v26, "No from or sender address."

    .line 3037
    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3039
    .restart local v5    # "ME":Ljavax/mail/MessagingException;
    new-instance v26, Ljavax/mail/MessagingException;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v26
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
.end method

.method private writeLogRecords(I)Ljavax/mail/Message;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 2625
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2626
    :try_start_1
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v2, :cond_2

    .line 2627
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2629
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords0()Ljavax/mail/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2631
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2632
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v3, :cond_0

    .line 2633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2629
    :cond_0
    monitor-exit p0

    .line 2643
    :goto_0
    return-object v2

    .line 2630
    :catchall_0
    move-exception v2

    .line 2631
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2632
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v3, :cond_1

    .line 2633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2635
    :cond_1
    throw v2

    .line 2625
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2638
    :catch_0
    move-exception v1

    .line 2639
    .local v1, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2643
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2625
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 2640
    :catch_1
    move-exception v0

    .line 2641
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method private writeLogRecords0()Ljavax/mail/Message;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2659
    sget-boolean v23, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v23, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    new-instance v23, Ljava/lang/AssertionError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 2660
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->sort()V

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    .line 2664
    :cond_1
    new-instance v18, Ljavax/mail/internet/MimeMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2665
    .local v18, "msg":Ljavax/mail/internet/MimeMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljavax/mail/internet/MimeBodyPart;

    move-object/from16 v21, v0

    .line 2677
    .local v21, "parts":[Ljavax/mail/internet/MimeBodyPart;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v10, v0, [Ljava/lang/StringBuilder;

    .line 2679
    .local v10, "buffers":[Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 2680
    .local v11, "contentType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2682
    .local v9, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    .line 2685
    .local v6, "body":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v8

    .line 2686
    .local v8, "bodyFormat":Ljava/util/logging/Formatter;
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v7

    .line 2688
    .local v7, "bodyFilter":Ljava/util/logging/Filter;
    const/16 v16, 0x0

    .line 2689
    .local v16, "lastLocale":Ljava/util/Locale;
    const/4 v15, 0x0

    .local v15, "ix":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v15, v0, :cond_2

    .line 2738
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 2740
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v14, v23, -0x1

    .local v14, "i":I
    :goto_1
    if-gez v14, :cond_c

    .line 2760
    if-eqz v9, :cond_10

    .line 2761
    const-string v23, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2768
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2770
    new-instance v19, Ljavax/mail/internet/MimeMultipart;

    invoke-direct/range {v19 .. v19}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 2771
    .local v19, "multipart":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2772
    .local v5, "altType":Ljava/lang/String;
    if-nez v5, :cond_11

    .end local v11    # "contentType":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v11}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2773
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2775
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_12

    .line 2781
    invoke-virtual/range {v18 .. v19}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 2782
    return-object v18

    .line 2690
    .end local v5    # "altType":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v19    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .restart local v11    # "contentType":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    .line 2691
    .local v12, "formatted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    move-object/from16 v23, v0

    aget-object v22, v23, v15

    .line 2692
    .local v22, "r":Ljava/util/logging/LogRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v24, v23, v15

    .line 2694
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;

    move-result-object v17

    .line 2695
    .local v17, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2697
    if-eqz v7, :cond_3

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 2698
    :cond_3
    if-nez v9, :cond_4

    .line 2699
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "buf":Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2700
    .restart local v9    # "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v13

    .line 2701
    .local v13, "head":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2704
    .end local v13    # "head":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x1

    .line 2705
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 2707
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2711
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_7

    .line 2729
    if-eqz v12, :cond_b

    .line 2730
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 2731
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2736
    :cond_6
    :goto_6
    move-object/from16 v16, v17

    .line 2689
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 2712
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    move-object/from16 v23, v0

    aget-object v4, v23, v14

    .line 2713
    .local v4, "af":Ljava/util/logging/Filter;
    if-eqz v4, :cond_8

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 2714
    :cond_8
    aget-object v23, v21, v14

    if-nez v23, :cond_9

    .line 2715
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v23

    aput-object v23, v21, v14

    .line 2716
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v23, v10, v14

    .line 2717
    aget-object v23, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    aget-object v23, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2720
    :cond_9
    const/4 v12, 0x1

    .line 2721
    aget-object v23, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2722
    aget-object v23, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2723
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 2724
    aget-object v23, v21, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2711
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 2734
    .end local v4    # "af":Ljava/util/logging/Filter;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportFilterError(Ljava/util/logging/LogRecord;)V

    goto/16 :goto_6

    .line 2741
    .end local v12    # "formatted":Z
    .end local v17    # "locale":Ljava/util/Locale;
    .end local v22    # "r":Ljava/util/logging/LogRecord;
    :cond_c
    aget-object v23, v21, v14

    if-eqz v23, :cond_e

    .line 2742
    aget-object v23, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    const-string v25, "err"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2743
    aget-object v23, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    const-string v25, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    aget-object v23, v10, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_f

    .line 2746
    aget-object v23, v21, v14

    invoke-virtual/range {v23 .. v23}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v20

    .line 2747
    .local v20, "name":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v20

    .line 2749
    aget-object v23, v21, v14

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 2751
    :cond_d
    aget-object v23, v21, v14

    aget-object v24, v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2756
    .end local v20    # "name":Ljava/lang/String;
    :goto_7
    const/16 v23, 0x0

    aput-object v23, v10, v14

    .line 2740
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 2753
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 2754
    const/16 v23, 0x0

    aput-object v23, v21, v14

    goto :goto_7

    .line 2765
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "buf":Ljava/lang/StringBuilder;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9    # "buf":Ljava/lang/StringBuilder;
    goto/16 :goto_2

    .restart local v5    # "altType":Ljava/lang/String;
    .restart local v19    # "multipart":Ljavax/mail/internet/MimeMultipart;
    :cond_11
    move-object v11, v5

    .line 2772
    goto/16 :goto_3

    .line 2776
    .end local v11    # "contentType":Ljava/lang/String;
    :cond_12
    aget-object v23, v21, v14

    if-eqz v23, :cond_13

    .line 2777
    aget-object v23, v21, v14

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2775
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 776
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "msg":Ljavax/mail/Message;
    monitor-enter p0

    .line 780
    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 782
    :try_start_1
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 789
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v1, :cond_0

    .line 790
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v1, v1

    iput v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 794
    :cond_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    if-eq v1, v3, :cond_1

    .line 795
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 778
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    if-eqz v0, :cond_2

    .line 801
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    .line 803
    :cond_2
    return-void

    .line 781
    :catchall_0
    move-exception v1

    .line 782
    :try_start_2
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 789
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v2, :cond_3

    .line 790
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v2, v2

    iput v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 794
    :cond_3
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    if-eq v2, v3, :cond_4

    .line 795
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 797
    :cond_4
    throw v1

    .line 778
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method final contentTypeOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "head"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x19

    .line 1494
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1495
    const/16 v1, 0x19

    .line 1496
    .local v1, "MAX_CHARS":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 1497
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1500
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, "charset":Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1504
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    sget-boolean v4, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "IOE":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1510
    .end local v0    # "IOE":Ljava/io/IOException;
    .end local v1    # "MAX_CHARS":I
    :cond_1
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 1505
    .restart local v1    # "MAX_CHARS":I
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 759
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 760
    return-void
.end method

.method public final getAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/util/logging/Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Filter;

    return-object v0
.end method

.method public final getAttachmentFormatters()[Ljava/util/logging/Formatter;
    .locals 2

    .prologue
    .line 1234
    monitor-enter p0

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1234
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/logging/Formatter;

    return-object v1

    .line 1234
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getAttachmentNames()[Ljava/util/logging/Formatter;
    .locals 2

    .prologue
    .line 1286
    monitor-enter p0

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1286
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/logging/Formatter;

    return-object v1

    .line 1286
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized getAuthenticator()Ljavax/mail/Authenticator;
    .locals 1

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1092
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCapacity()I
    .locals 2

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sun/mail/util/logging/MailHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1081
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 851
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public declared-synchronized getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final getMailProperties()Ljava/util/Properties;
    .locals 2

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1184
    monitor-enter p0

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1184
    .local v0, "props":Ljava/util/Properties;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    return-object v1

    .line 1184
    .end local v0    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized getPushFilter()Ljava/util/logging/Filter;
    .locals 1

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSubject()Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 1393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    .line 575
    .local v1, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_0

    sget v2, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-ne v1, v2, :cond_1

    .line 576
    :cond_0
    const/4 v2, 0x0

    .line 584
    :goto_0
    return v2

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    .line 580
    .local v0, "body":Ljava/util/logging/Filter;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 584
    :cond_3
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    goto :goto_0
.end method

.method final isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1523
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_0

    .line 1528
    sget-object v5, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1530
    .local v2, "ccl":Ljava/lang/Object;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v5}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    :goto_1
    const/4 v5, 0x0

    :goto_2
    return v5

    .line 1524
    .end local v2    # "ccl":Ljava/lang/Object;
    :cond_0
    move-object p2, v1

    .line 1525
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 1531
    .restart local v2    # "ccl":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "RE":Ljava/lang/RuntimeException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    .line 1539
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    throw v5

    .line 1533
    :catch_1
    move-exception v3

    .line 1534
    .local v3, "noContent":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "txt":Ljava/lang/String;
    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 1536
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 1539
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public postConstruct()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public preDestroy()V
    .locals 2

    .prologue
    .line 739
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 740
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 613
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->publish0(Ljava/util/logging/LogRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 621
    :goto_0
    return-void

    .line 615
    :catchall_0
    move-exception v0

    .line 616
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 617
    throw v0

    .line 619
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method

.method public push()V
    .locals 2

    .prologue
    .line 749
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 750
    return-void
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .prologue
    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1464
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-virtual {v1, v2, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1473
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "GLASSFISH_21258":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 1470
    .end local v0    # "GLASSFISH_21258":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1471
    .local v0, "GLASSFISH_21258":Ljava/lang/LinkageError;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_0
.end method

.method public final varargs setAttachmentFilters([Ljava/util/logging/Filter;)V
    .locals 2
    .param p1, "filters"    # [Ljava/util/logging/Filter;

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1214
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Filter;

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "filters":[Ljava/util/logging/Filter;
    check-cast p1, [Ljava/util/logging/Filter;

    .line 1215
    .restart local p1    # "filters":[Ljava/util/logging/Filter;
    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1220
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_1

    .line 1221
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1223
    :cond_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1215
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    return-void
.end method

.method public final varargs setAttachmentFormatters([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1254
    array-length v1, p1

    if-nez v1, :cond_1

    .line 1255
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    .line 1266
    :cond_0
    monitor-enter p0

    .line 1267
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v1, :cond_3

    .line 1268
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1266
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1258
    :cond_1
    array-length v1, p1

    const-class v2, [Ljava/util/logging/Formatter;

    .line 1257
    invoke-static {p1, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1259
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1260
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 1261
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1271
    .end local v0    # "i":I
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1272
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    .line 1273
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    .line 1266
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    return-void
.end method

.method public final varargs setAttachmentNames([Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1311
    array-length v3, p1

    if-nez v3, :cond_0

    .line 1312
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    .line 1317
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 1330
    monitor-enter p0

    .line 1331
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v3, v3

    array-length v4, p1

    if-eq v3, v4, :cond_4

    .line 1332
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v3, v3

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1330
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1314
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    .end local v1    # "i":I
    :cond_0
    array-length v3, p1

    new-array v0, v3, [Ljava/util/logging/Formatter;

    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 1318
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, p1, v1

    .line 1319
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1320
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1321
    new-instance v3, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v3, v2}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1323
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1326
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1335
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v3, :cond_5

    .line 1336
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 1338
    :cond_5
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1330
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    return-void
.end method

.method public final varargs setAttachmentNames([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1366
    array-length v1, p1

    const-class v2, [Ljava/util/logging/Formatter;

    invoke-static {p1, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1367
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1373
    monitor-enter p0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 1375
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1373
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1368
    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 1369
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1378
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v1, :cond_3

    .line 1379
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1382
    :cond_3
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1373
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1384
    return-void
.end method

.method public final setAuthenticator(Ljavax/mail/Authenticator;)V
    .locals 0
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1104
    return-void
.end method

.method public final varargs setAuthenticator([C)V
    .locals 2
    .param p1, "password"    # [C

    .prologue
    .line 1116
    if-nez p1, :cond_0

    .line 1117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    goto :goto_0
.end method

.method public final declared-synchronized setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1066
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1067
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1070
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    monitor-exit p0

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 932
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 1
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 868
    if-nez p1, :cond_0

    .line 869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 871
    :cond_0
    monitor-enter p0

    .line 872
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 871
    monitor-exit p0

    .line 874
    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 900
    monitor-enter p0

    .line 901
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 900
    monitor-exit p0

    .line 903
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFormatter(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 982
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 983
    if-nez p1, :cond_0

    .line 984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 986
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    monitor-exit p0

    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v0, :cond_1

    .line 824
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 822
    :cond_1
    monitor-exit p0

    .line 827
    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setMailProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 1154
    return-void
.end method

.method public final declared-synchronized setPushFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/logging/Filter;

    .prologue
    .line 1041
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1042
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1045
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized setPushLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1011
    if-nez p1, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1015
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1018
    :cond_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    monitor-exit p0

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 1408
    if-eqz p1, :cond_0

    .line 1409
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setSubject(Ljava/util/logging/Formatter;)V

    .line 1414
    return-void

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final setSubject(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "format"    # Ljava/util/logging/Formatter;

    .prologue
    .line 1436
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1437
    if-nez p1, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1441
    :cond_0
    monitor-enter p0

    .line 1442
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-eqz v0, :cond_1

    .line 1443
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1445
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1441
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1447
    return-void
.end method
