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
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_FILTERS:[Ljava/util/logging/Filter;

.field private static final EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

.field private static final MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedAction<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_HEADER_SIZE:I = 0x400

.field private static final MUTEX:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
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
            "Ljava/util/Comparator<",
            "-",
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

    .line 356
    nop

    .line 360
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/logging/Filter;

    sput-object v1, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    .line 364
    new-array v0, v0, [Ljava/util/logging/Formatter;

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
.end method

.method public constructor <init>()V
    .locals 1

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
    if-eqz p1, :cond_0

    .line 555
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 557
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 558
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private allowRestrictedHeaders()Z
    .locals 1

    .line 3958
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->hasLogManager()Z

    move-result v0

    return v0
.end method

.method private appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V
    .locals 8
    .param p1, "p"    # Ljavax/mail/internet/MimePart;
    .param p2, "l"    # Ljava/util/Locale;

    .line 3411
    const-string v0, "\r\n\t"

    const-string v1, "Content-Language"

    :try_start_0
    invoke-static {p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 3412
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3413
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3414
    .local v3, "header":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3415
    invoke-interface {p1, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3416
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3417
    const-string v4, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 3418
    const/4 v4, 0x0

    .line 3419
    .local v4, "idx":I
    nop

    :cond_1
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_2

    goto :goto_0

    .line 3420
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 3421
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 3422
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    .line 3427
    :cond_3
    :goto_0
    if-gez v4, :cond_7

    .line 3428
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 3429
    .local v5, "len":I
    if-gez v5, :cond_4

    .line 3430
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    .line 3431
    .end local v5    # "len":I
    .local v6, "len":I
    goto :goto_1

    .line 3432
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x8

    .line 3436
    .end local v5    # "len":I
    .restart local v6    # "len":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v5, v7, :cond_5

    .line 3437
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3438
    .end local v3    # "header":Ljava/lang/String;
    .local v0, "header":Ljava/lang/String;
    goto :goto_2

    .line 3439
    .end local v0    # "header":Ljava/lang/String;
    .restart local v3    # "header":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3441
    .end local v3    # "header":Ljava/lang/String;
    .restart local v0    # "header":Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v1, v0}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    .end local v0    # "header":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    .end local v4    # "idx":I
    .end local v6    # "len":I
    goto :goto_4

    .line 3416
    .restart local v2    # "lang":Ljava/lang/String;
    .restart local v3    # "header":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 3445
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "header":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3446
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3448
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_7
    :goto_4
    return-void
.end method

.method private appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3311
    if-eqz p2, :cond_0

    .line 3312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3313
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 3315
    goto :goto_0

    .line 3316
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    .line 3318
    :cond_1
    :goto_0
    return-void
.end method

.method private appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 3
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3329
    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 3330
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 3331
    .local v0, "old":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-interface {p1, v1}, Ljavax/mail/Part;->setFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    .end local v0    # "old":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 3333
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3335
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    return-void
.end method

.method private appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3343
    if-eqz p2, :cond_0

    .line 3344
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3345
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3347
    goto :goto_0

    .line 3348
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    .line 3350
    :cond_1
    :goto_0
    return-void
.end method

.method private appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3361
    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 3362
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 3363
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 3364
    .local v1, "old":Ljava/lang/String;
    nop

    .line 3365
    move-object v2, p1

    check-cast v2, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3366
    :cond_0
    move-object v3, p2

    :goto_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3365
    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "old":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 3368
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3370
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    return-void
.end method

.method private static atIndexMsg(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 3967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "At index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;
    .locals 2
    .param p0, "required"    # Ljavax/mail/MessagingException;
    .param p1, "optional"    # Ljava/lang/Exception;

    .line 3905
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3906
    instance-of v0, p1, Ljavax/mail/MessagingException;

    if-eqz v0, :cond_0

    .line 3907
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessagingException;

    .line 3908
    .local v0, "head":Ljavax/mail/MessagingException;
    invoke-virtual {v0, p0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3909
    return-object v0

    .line 3913
    .end local v0    # "head":Ljavax/mail/MessagingException;
    :cond_0
    return-object p0
.end method

.method private static attachmentMismatch(II)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expected"    # I
    .param p1, "found"    # I

    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attachments mismatched, expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 3882
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private checkAccess()V
    .locals 1

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
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 1685
    nop

    .line 1687
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v1, "charset"

    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 1690
    invoke-static {p2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 1691
    move-object p1, p2

    .line 1693
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1694
    .local v0, "ME":Ljavax/mail/MessagingException;
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1696
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-object p1
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
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 1838
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1839
    .local v0, "copy":[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

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

    .line 3212
    nop

    .line 3213
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

    .line 3230
    nop

    .line 3231
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 3232
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3233
    nop

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

    .line 2344
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/Handler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    .local v0, "em":Ljava/util/logging/ErrorManager;
    goto :goto_0

    .end local v0    # "em":Ljava/util/logging/ErrorManager;
    :catch_0
    move-exception v0

    .line 2346
    .local v0, "ignore":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 2350
    .local v0, "em":Ljava/util/logging/ErrorManager;
    :goto_0
    if-nez v0, :cond_0

    .line 2351
    new-instance v1, Ljava/util/logging/ErrorManager;

    invoke-direct {v1}, Ljava/util/logging/ErrorManager;-><init>()V

    move-object v0, v1

    .line 2353
    :cond_0
    return-object v0
.end method

.method private descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;
    .locals 2
    .param p2, "l"    # Ljava/util/logging/Level;
    .param p3, "f"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/util/logging/Level;",
            "Ljava/util/logging/Filter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3253
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sorted using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "no comparator"

    goto :goto_0

    .line 3254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pushed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string v1, "no push filter"

    goto :goto_1

    .line 3256
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "filter"    # Ljava/util/logging/Filter;
    .param p3, "name"    # Ljava/util/logging/Formatter;

    .line 3267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Formatted using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    const-string v1, ", filtered with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, "no filter"

    goto :goto_0

    .line 3269
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and named by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static emptyFilterArray()[Ljava/util/logging/Filter;
    .locals 1

    .line 1750
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private static emptyFormatterArray()[Ljava/util/logging/Formatter;
    .locals 1

    .line 1742
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private envelopeFor(Ljavax/mail/Message;Z)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z

    .line 3184
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3185
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setFrom(Ljavax/mail/Message;)V

    .line 3186
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    const-string v1, "mail.to"

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3187
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V

    .line 3189
    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    const-string v1, "mail.cc"

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3190
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    const-string v1, "mail.bcc"

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

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
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3202
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3204
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private fixUpAttachmentFilters()Z
    .locals 6

    .line 1787
    nop

    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, "fixed":Z
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    .line 1791
    .local v1, "expect":I
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v2, v2

    .line 1792
    .local v2, "current":I
    if-eq v2, v1, :cond_2

    .line 1793
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    invoke-static {v3, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/logging/Filter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1794
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1798
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1799
    .local v3, "body":Ljava/util/logging/Filter;
    if-eqz v3, :cond_2

    .line 1800
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-lt v4, v1, :cond_1

    goto :goto_2

    .line 1801
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aput-object v3, v5, v4

    .line 1800
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1807
    .end local v3    # "body":Ljava/util/logging/Filter;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 1808
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1811
    :cond_3
    return v0
.end method

.method private fixUpAttachmentNames()Z
    .locals 7

    .line 1758
    nop

    .line 1759
    const/4 v0, 0x0

    .line 1760
    .local v0, "fixed":Z
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    .line 1761
    .local v1, "expect":I
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v3, v2

    .line 1762
    .local v3, "current":I
    if-eq v3, v1, :cond_1

    .line 1763
    invoke-static {v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/logging/Formatter;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1764
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1768
    :cond_1
    if-nez v1, :cond_2

    .line 1769
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1770
    goto :goto_2

    .line 1772
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 1779
    .end local v2    # "i":I
    :goto_2
    return v0

    .line 1773
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v5, v4, v2

    if-nez v5, :cond_4

    .line 1774
    new-instance v5, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    .line 1775
    iget-object v6, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    .line 1774
    aput-object v5, v4, v2

    .line 1772
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 3121
    const/4 v0, 0x4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3122
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 3123
    .local v1, "body":Ljavax/mail/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v2

    .line 3124
    .local v2, "msgDesc":Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v3

    .line 3121
    .local v3, "subjectType":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3127
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Formatted using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3128
    if-nez p3, :cond_0

    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3129
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3128
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    const-string v5, ", filtered with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", and named by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3127
    invoke-virtual {v1, v4}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3132
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-direct {p0, v1, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3133
    new-instance v4, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v4}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 3134
    .local v4, "multipart":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v4, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 3135
    invoke-virtual {p1, v4}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3136
    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 3137
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3138
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3139
    .end local v1    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v2    # "msgDesc":Ljava/lang/String;
    .end local v3    # "subjectType":Ljava/lang/String;
    .end local v4    # "multipart":Ljavax/mail/internet/MimeMultipart;
    goto :goto_1

    .line 3121
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local p2    # "verify":Ljava/lang/String;
    .end local p3    # "t":Ljava/lang/Throwable;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3141
    .restart local p1    # "msg":Ljavax/mail/internet/MimeMessage;
    .restart local p2    # "verify":Ljava/lang/String;
    .restart local p3    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 3142
    .local v1, "RE":Ljava/lang/RuntimeException;
    const-string v2, "Unable to create body."

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 3139
    .end local v1    # "RE":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 3140
    .local v1, "ME":Ljavax/mail/MessagingException;
    const-string v2, "Unable to create body."

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3144
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    return-void
.end method

.method private fixUpSession()Ljavax/mail/Session;
    .locals 2

    .line 3152
    nop

    .line 3154
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    const-string v1, "verify"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3155
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v0

    .line 3156
    .local v0, "settings":Ljavax/mail/Session;
    goto :goto_0

    .line 3158
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    .line 3159
    const/4 v0, 0x0

    .line 3161
    .restart local v0    # "settings":Ljavax/mail/Session;
    :goto_0
    return-object v0
.end method

.method private format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "r"    # Ljava/util/logging/LogRecord;

    .line 3548
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

    return-object v1
.end method

.method private getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ccl"    # Ljava/lang/Object;

    .line 3861
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 3864
    :try_start_0
    instance-of v0, p1, Ljava/security/PrivilegedAction;

    if-eqz v0, :cond_0

    .line 3865
    move-object v0, p1

    check-cast v0, Ljava/security/PrivilegedAction;

    .line 3866
    .local v0, "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    goto :goto_0

    .line 3867
    .end local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :cond_0
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    .line 3869
    .restart local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3870
    .end local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :catch_0
    move-exception v0

    .line 3873
    :cond_1
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-object v0
.end method

.method private getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3282
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v0, :cond_0

    .line 3283
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1634
    nop

    .line 1635
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;

    invoke-virtual {v0, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "type":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1637
    const/4 v1, 0x0

    return-object v1

    .line 1639
    :cond_0
    return-object v0
.end method

.method private getEncodingName()Ljava/lang/String;
    .locals 1

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

    .line 3924
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getLocalHost(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3928
    :catch_0
    move-exception v0

    .line 3929
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljavax/mail/Service;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 3927
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 3926
    :catch_2
    move-exception v0

    goto :goto_0

    .line 3925
    :catch_3
    move-exception v0

    .line 3931
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSession(Ljavax/mail/Message;)Ljavax/mail/Session;
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3942
    if-eqz p1, :cond_0

    .line 3945
    new-instance v0, Ljavax/mail/MessageContext;

    invoke-direct {v0, p1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getSession()Ljavax/mail/Session;

    move-result-object v0

    return-object v0

    .line 3943
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private grow()V
    .locals 3

    .line 1860
    nop

    .line 1861
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v0, v0

    .line 1862
    .local v0, "len":I
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 1863
    .local v1, "newCapacity":I
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gt v1, v2, :cond_0

    if-ge v1, v0, :cond_1

    .line 1864
    :cond_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 1866
    :cond_1
    nop

    .line 1867
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

    .line 2083
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private head(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3533
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

    return-object v1
.end method

.method private declared-synchronized init(Ljava/util/Properties;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;

    monitor-enter p0

    .line 1878
    nop

    .line 1879
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1880
    .local v0, "p":Ljava/lang/String;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1881
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1883
    .local v1, "ccl":Ljava/lang/Object;
    :try_start_1
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1884
    nop

    .line 1885
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initErrorManager(Ljava/lang/String;)V

    .line 1891
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initLevel(Ljava/lang/String;)V

    .line 1892
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFilter(Ljava/lang/String;)V

    .line 1893
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initCapacity(Ljava/lang/String;)V

    .line 1894
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAuthenticator(Ljava/lang/String;)V

    .line 1896
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initEncoding(Ljava/lang/String;)V

    .line 1897
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFormatter(Ljava/lang/String;)V

    .line 1898
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initComparator(Ljava/lang/String;)V

    .line 1899
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushLevel(Ljava/lang/String;)V

    .line 1900
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushFilter(Ljava/lang/String;)V

    .line 1902
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initSubject(Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFormaters(Ljava/lang/String;)V

    .line 1905
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFilters(Ljava/lang/String;)V

    .line 1906
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentNames(Ljava/lang/String;)V

    .line 1908
    if-nez p1, :cond_0

    const-string v2, ".verify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1909
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1911
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->intern()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1912
    monitor-exit p0

    return-void

    .line 1884
    :catchall_0
    move-exception v2

    .line 1885
    :try_start_3
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1877
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "ccl":Ljava/lang/Object;
    .end local p1    # "props":Ljava/util/Properties;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initAttachmentFilters(Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .line 2093
    nop

    .line 2094
    nop

    .line 2095
    const-string v0, ".attachment.filters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2096
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2097
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Filter;

    .line 2099
    .local v2, "a":[Ljava/util/logging/Filter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x4

    if-lt v3, v4, :cond_0

    .line 2112
    .end local v3    # "i":I
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2113
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2114
    nop

    .line 2115
    const-string v3, "Length mismatch."

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    .line 2114
    const-string v4, "Attachment filters."

    invoke-virtual {p0, v4, v3, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2117
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Filter;
    goto :goto_2

    .line 2100
    .restart local v1    # "names":[Ljava/lang/String;
    .restart local v2    # "a":[Ljava/util/logging/Filter;
    .restart local v3    # "i":I
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2101
    aget-object v4, v1, v3

    const-string v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2103
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    goto :goto_1

    .line 2106
    :catch_0
    move-exception v4

    .line 2107
    .local v4, "E":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 2104
    .end local v4    # "E":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2105
    .local v4, "SE":Ljava/lang/SecurityException;
    throw v4

    .line 2099
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2118
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Filter;
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2119
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    .line 2121
    :cond_3
    :goto_2
    return-void
.end method

.method private initAttachmentFormaters(Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;

    .line 2130
    nop

    .line 2131
    const-string v0, ".attachment.formatters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2132
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2134
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2135
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 2136
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v2

    .line 2137
    .local v2, "a":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 2138
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    :cond_0
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Formatter;

    .line 2141
    .restart local v2    # "a":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 2164
    .end local v3    # "i":I
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 2165
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    goto :goto_3

    .line 2142
    .restart local v1    # "names":[Ljava/lang/String;
    .restart local v2    # "a":[Ljava/util/logging/Formatter;
    .restart local v3    # "i":I
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2143
    aget-object v4, v1, v3

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Attachment formatter."

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 2145
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2146
    aget-object v4, v2, v3

    instance-of v4, v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v4, :cond_3

    .line 2147
    new-instance v4, Ljava/lang/ClassNotFoundException;

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2148
    .local v4, "CNFE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2149
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v5, v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    .end local v4    # "CNFE":Ljava/lang/Exception;
    goto :goto_2

    .line 2153
    :catch_0
    move-exception v4

    .line 2154
    .local v4, "E":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2155
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v5, v2, v3

    .line 2157
    .end local v4    # "E":Ljava/lang/Exception;
    goto :goto_2

    .line 2151
    :catch_1
    move-exception v4

    .line 2152
    .local v4, "SE":Ljava/lang/SecurityException;
    throw v4

    .line 2158
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2159
    .local v4, "NPE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2160
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    aput-object v5, v2, v3

    .line 2141
    .end local v4    # "NPE":Ljava/lang/Exception;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2166
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    .end local v3    # "i":I
    :cond_4
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 2168
    :goto_3
    return-void
.end method

.method private initAttachmentNames(Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;

    .line 2177
    nop

    .line 2178
    nop

    .line 2180
    const-string v0, ".attachment.names"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2182
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Formatter;

    .line 2184
    .local v2, "a":[Ljava/util/logging/Formatter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const-string v5, "Attachment names."

    const/4 v6, 0x4

    if-lt v3, v4, :cond_0

    .line 2206
    .end local v3    # "i":I
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2207
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2208
    nop

    .line 2209
    const-string v3, "Length mismatch."

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    .line 2208
    invoke-virtual {p0, v5, v3, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2211
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    goto :goto_4

    .line 2185
    .restart local v1    # "names":[Ljava/lang/String;
    .restart local v2    # "a":[Ljava/util/logging/Formatter;
    .restart local v3    # "i":I
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2186
    aget-object v4, v1, v3

    const-string v7, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2189
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2190
    goto :goto_3

    .line 2197
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2195
    :catch_1
    move-exception v4

    goto :goto_2

    .line 2192
    :catch_2
    move-exception v4

    .line 2193
    .local v4, "literal":Ljava/lang/ClassCastException;
    :try_start_1
    new-instance v5, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    aget-object v7, v1, v3

    invoke-direct {v5, v7}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v3

    .line 2195
    .end local v4    # "literal":Ljava/lang/ClassCastException;
    goto :goto_3

    .line 2190
    :catch_3
    move-exception v4

    .line 2191
    .local v4, "literal":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    aget-object v7, v1, v3

    invoke-direct {v5, v7}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "literal":Ljava/lang/ClassNotFoundException;
    goto :goto_3

    .line 2198
    .local v4, "E":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2200
    .end local v4    # "E":Ljava/lang/Exception;
    goto :goto_3

    .line 2196
    .local v4, "SE":Ljava/lang/SecurityException;
    :goto_2
    throw v4

    .line 2201
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v4, "NPE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2184
    .end local v4    # "NPE":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2212
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2213
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    .line 2215
    :cond_3
    :goto_4
    return-void
.end method

.method private initAuthenticator(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2224
    nop

    .line 2225
    const-string v0, ".authenticator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2228
    nop

    .line 2229
    :try_start_0
    const-class v1, Ljavax/mail/Authenticator;

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Authenticator;

    .line 2228
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    goto :goto_0

    .line 2236
    :catch_0
    move-exception v1

    .line 2237
    .local v1, "E":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2234
    .end local v1    # "E":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2235
    .local v1, "literalAuth":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    invoke-direct {v2, v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .end local v1    # "literalAuth":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2232
    :catch_2
    move-exception v1

    .line 2233
    .local v1, "literalAuth":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    invoke-direct {v2, v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .end local v1    # "literalAuth":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 2230
    :catch_3
    move-exception v1

    .line 2231
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2240
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.method private initCapacity(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 2292
    nop

    .line 2293
    const/16 v0, 0x3e8

    .line 2295
    .local v0, "DEFAULT_CAPACITY":I
    const/16 v1, 0x3e8

    :try_start_0
    const-string v2, ".capacity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2296
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2297
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    .line 2298
    goto :goto_0

    .line 2299
    :cond_0
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2303
    :catch_0
    move-exception v2

    .line 2304
    .local v2, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2307
    .end local v2    # "RE":Ljava/lang/RuntimeException;
    :goto_0
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gtz v2, :cond_1

    .line 2308
    iput v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 2311
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2312
    return-void

    .line 2301
    :catch_1
    move-exception v1

    .line 2302
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1
.end method

.method private initComparator(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2413
    nop

    .line 2415
    :try_start_0
    const-string v0, ".comparator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".comparator.reverse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2417
    .local v1, "reverse":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2418
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2419
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2420
    nop

    .line 2421
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2423
    goto :goto_0

    .line 2424
    :cond_0
    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2425
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2426
    const-string v3, "No comparator to reverse."

    .line 2425
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "p":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .restart local p1    # "p":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2434
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void

    .line 2429
    :catch_1
    move-exception v0

    .line 2430
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2321
    nop

    .line 2323
    const/4 v0, 0x4

    :try_start_0
    const-string v1, ".encoding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2324
    .local v1, "e":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2325
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    .end local v1    # "e":Ljava/lang/String;
    goto :goto_0

    .line 2331
    :catch_0
    move-exception v1

    .line 2332
    .local v1, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2329
    .end local v1    # "RE":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 2330
    .local v1, "UEE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2334
    .end local v1    # "UEE":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    return-void

    .line 2327
    :catch_2
    move-exception v0

    .line 2328
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initErrorManager(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2363
    nop

    .line 2365
    :try_start_0
    const-string v0, ".errorManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2366
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2367
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2374
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2369
    :catch_1
    move-exception v0

    .line 2370
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2272
    nop

    .line 2274
    :try_start_0
    const-string v0, ".filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2276
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2278
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2283
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2278
    :catch_1
    move-exception v0

    .line 2279
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initFormatter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2383
    nop

    .line 2385
    :try_start_0
    const-string v0, ".formatter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2386
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2388
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    .line 2387
    nop

    .line 2389
    .local v1, "f":Ljava/util/logging/Formatter;
    nop

    .line 2390
    instance-of v2, v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-nez v2, :cond_0

    .line 2391
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2392
    goto :goto_0

    .line 2393
    :cond_0
    new-instance v2, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v2}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2395
    .end local v1    # "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 2396
    :cond_1
    new-instance v1, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v1}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2400
    :catch_0
    move-exception v0

    .line 2401
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2402
    new-instance v1, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v1}, Ljava/util/logging/SimpleFormatter;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2404
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2398
    :catch_1
    move-exception v0

    .line 2399
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2249
    nop

    .line 2251
    :try_start_0
    const-string v0, ".level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2252
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2253
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 2254
    goto :goto_0

    .line 2255
    :cond_0
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    .end local v0    # "val":Ljava/lang/String;
    goto :goto_0

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2261
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 2263
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 2257
    :catch_1
    move-exception v0

    .line 2258
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initPushFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2465
    nop

    .line 2467
    :try_start_0
    const-string v0, ".pushFilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2468
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2469
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2476
    .end local v0    # "E":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2471
    :catch_1
    move-exception v0

    .line 2472
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0
.end method

.method private initPushLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2443
    nop

    .line 2445
    :try_start_0
    const-string v0, ".pushLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2446
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2447
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    .end local v0    # "val":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 2450
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2453
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    if-nez v0, :cond_1

    .line 2454
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    .line 2456
    :cond_1
    return-void
.end method

.method private initSession()Ljavax/mail/Session;
    .locals 3

    .line 3169
    nop

    .line 3170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

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
    return-object v2
.end method

.method private initSubject(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2485
    nop

    .line 2486
    const-string v0, ".subject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2487
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    :try_start_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2490
    goto :goto_0

    .line 2496
    :catch_0
    move-exception v1

    .line 2497
    .local v1, "E":Ljava/lang/Exception;
    new-instance v2, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v2, v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2498
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2500
    .end local v1    # "E":Ljava/lang/Exception;
    goto :goto_0

    .line 2494
    :catch_1
    move-exception v1

    .line 2495
    .local v1, "literalSubject":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v2, v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .end local v1    # "literalSubject":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2492
    :catch_2
    move-exception v1

    .line 2493
    .local v1, "literalSubject":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v2, v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .end local v1    # "literalSubject":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 2490
    :catch_3
    move-exception v1

    .line 2491
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2501
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :cond_0
    if-eqz v0, :cond_1

    .line 2502
    new-instance v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2506
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    if-nez v1, :cond_2

    .line 2507
    new-instance v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2509
    :cond_2
    return-void
.end method

.method private intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
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

    .line 2000
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 2001
    const/4 v0, 0x0

    return-object v0

    .line 2020
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2021
    move-object v0, p2

    .line 2022
    .local v0, "key":Ljava/lang/Object;
    goto :goto_0

    .line 2025
    .end local v0    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2030
    .restart local v0    # "key":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 2031
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2032
    .local v1, "found":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 2034
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2035
    .local v2, "right":Z
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2036
    .local v3, "left":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2038
    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2039
    if-eqz v1, :cond_3

    .line 2040
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2041
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2042
    if-eq v1, p2, :cond_3

    .line 2043
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2044
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2047
    goto :goto_1

    .line 2048
    :cond_2
    if-eq v2, v3, :cond_3

    .line 2049
    invoke-direct {p0, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2052
    :cond_3
    :goto_1
    move-object v2, p2

    .line 2053
    .end local v3    # "left":Z
    .local v2, "use":Ljava/lang/Object;
    goto :goto_2

    .line 2055
    .end local v2    # "use":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 2056
    move-object v2, v1

    .line 2057
    .restart local v2    # "use":Ljava/lang/Object;
    goto :goto_2

    .line 2058
    .end local v2    # "use":Ljava/lang/Object;
    :cond_5
    invoke-direct {p0, p2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2059
    move-object v2, p2

    .line 2062
    .end local v1    # "found":Ljava/lang/Object;
    .restart local v2    # "use":Ljava/lang/Object;
    goto :goto_2

    .line 2063
    .end local v2    # "use":Ljava/lang/Object;
    :cond_6
    move-object v2, p2

    .line 2065
    .restart local v2    # "use":Ljava/lang/Object;
    :goto_2
    return-object v2
.end method

.method private intern()V
    .locals 7

    .line 1922
    nop

    .line 1926
    const/4 v0, 0x4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1928
    .local v1, "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1929
    goto :goto_0

    :catch_0
    move-exception v2

    .line 1930
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1934
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1935
    .local v2, "canidate":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1936
    .local v3, "result":Ljava/lang/Object;
    if-eq v3, v2, :cond_0

    instance-of v4, v3, Ljava/util/logging/Filter;

    if-eqz v4, :cond_0

    .line 1937
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Filter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1940
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    move-object v2, v4

    .line 1941
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1942
    if-eq v3, v2, :cond_1

    instance-of v4, v3, Ljava/util/logging/Formatter;

    if-eqz v4, :cond_1

    .line 1943
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Formatter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1945
    goto :goto_1

    .end local v2    # "canidate":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1946
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1949
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1950
    .local v2, "canidate":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1951
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v2, :cond_2

    instance-of v4, v3, Ljava/util/logging/Formatter;

    if-eqz v4, :cond_2

    .line 1952
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Formatter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1955
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    move-object v2, v4

    .line 1956
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1957
    if-eq v3, v2, :cond_3

    instance-of v4, v3, Ljava/util/logging/Filter;

    if-eqz v4, :cond_3

    .line 1958
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Filter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    .line 1961
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 1980
    .end local v1    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "canidate":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "i":I
    goto :goto_3

    .line 1962
    .restart local v1    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v2    # "canidate":Ljava/lang/Object;
    .restart local v3    # "result":Ljava/lang/Object;
    .restart local v4    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v5, v5, v4

    move-object v2, v5

    .line 1963
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1964
    if-eq v3, v2, :cond_5

    instance-of v5, v3, Ljava/util/logging/Formatter;

    if-eqz v5, :cond_5

    .line 1965
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Formatter;

    aput-object v6, v5, v4

    .line 1968
    :cond_5
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v5, v5, v4

    move-object v2, v5

    .line 1969
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1970
    if-eq v3, v2, :cond_6

    instance-of v5, v3, Ljava/util/logging/Filter;

    if-eqz v5, :cond_6

    .line 1971
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Filter;

    aput-object v6, v5, v4

    .line 1974
    :cond_6
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v5, v5, v4

    move-object v2, v5

    .line 1975
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1976
    if-eq v3, v2, :cond_7

    instance-of v5, v3, Ljava/util/logging/Formatter;

    if-eqz v5, :cond_7

    .line 1977
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Formatter;

    aput-object v6, v5, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_2

    .line 1961
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1982
    .end local v1    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "canidate":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "i":I
    :catch_2
    move-exception v1

    .line 1983
    .local v1, "skip":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v3, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    .line 1984
    nop

    .line 1983
    invoke-virtual {p0, v2, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3

    .line 1980
    .end local v1    # "skip":Ljava/lang/LinkageError;
    :catch_3
    move-exception v1

    .line 1981
    .local v1, "skip":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1986
    .end local v1    # "skip":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 2519
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    .line 2520
    .local v0, "filters":[Ljava/util/logging/Filter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 2526
    .end local v1    # "i":I
    const/4 v1, 0x0

    return v1

    .line 2521
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v0, v1

    .line 2522
    .local v2, "f":Ljava/util/logging/Filter;
    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2520
    .end local v2    # "f":Ljava/util/logging/Filter;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2523
    .restart local v2    # "f":Ljava/util/logging/Filter;
    :cond_2
    :goto_1
    const/4 v3, 0x1

    return v3
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2074
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isPushable(Ljava/util/logging/LogRecord;)Z
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 2536
    nop

    .line 2537
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 2538
    .local v0, "value":I
    sget v1, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 2542
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushFilter()Ljava/util/logging/Filter;

    move-result-object v1

    .line 2543
    .local v1, "push":Ljava/util/logging/Filter;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2539
    .end local v1    # "push":Ljava/util/logging/Filter;
    :cond_2
    :goto_0
    return v2
.end method

.method private localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;
    .locals 3
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .line 3382
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 3383
    .local v0, "rb":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_1

    .line 3384
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3385
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3391
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3393
    goto :goto_0

    .line 3394
    .end local v1    # "l":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    .line 3396
    .restart local v1    # "l":Ljava/util/Locale;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private publish0(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-ge v0, v1, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->grow()V

    .line 636
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 637
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    aput-object p1, v0, v1

    .line 638
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 639
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isPushable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    .line 640
    .local v0, "priority":Z
    if-nez v0, :cond_2

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x0

    .line 645
    .local v1, "msg":Ljavax/mail/Message;
    goto :goto_1

    .line 641
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v1

    .line 642
    .restart local v1    # "msg":Ljavax/mail/Message;
    goto :goto_1

    .line 646
    .end local v0    # "priority":Z
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_3
    const/4 v0, 0x0

    .line 647
    .restart local v0    # "priority":Z
    const/4 v1, 0x0

    .line 631
    .restart local v1    # "msg":Ljavax/mail/Message;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    if-eqz v1, :cond_4

    .line 652
    invoke-direct {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    .line 654
    :cond_4
    return-void

    .line 631
    .end local v0    # "priority":Z
    .end local v1    # "msg":Ljavax/mail/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private push(ZI)V
    .locals 1
    .param p1, "priority"    # Z
    .param p2, "code"    # I

    .line 2552
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_1

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
    .end local v0    # "msg":Ljavax/mail/Message;
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2561
    goto :goto_0

    .line 2558
    :catchall_0
    move-exception v0

    .line 2559
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2560
    throw v0

    .line 2562
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    .line 2564
    :goto_0
    return-void
.end method

.method private readOnlyAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private releaseMutex()V
    .locals 1

    .line 709
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 710
    return-void
.end method

.method private reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toRawString(Ljavax/mail/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, "GLASSFISH_21258":Ljava/lang/LinkageError;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 1557
    .end local v0    # "GLASSFISH_21258":Ljava/lang/LinkageError;
    :catch_1
    move-exception v0

    .line 1558
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1555
    :catch_2
    move-exception v0

    .line 1556
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1562
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private reportFilterError(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 3477
    nop

    .line 3478
    new-instance v0, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v0}, Ljava/util/logging/SimpleFormatter;-><init>()V

    .line 3479
    .local v0, "f":Ljava/util/logging/SimpleFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3480
    const-string v2, " was filtered from all message parts.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3482
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3482
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 1584
    if-eqz p1, :cond_9

    .line 1588
    const/4 v0, 0x1

    .line 1589
    .local v0, "reThrow":Z
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1590
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 1591
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 1609
    .end local v2    # "i":I
    goto :goto_1

    .line 1592
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v1, v2

    .line 1593
    .local v3, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1594
    nop

    .line 1595
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.util.logging.ErrorManager"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1596
    const/4 v0, 0x0

    .line 1597
    goto :goto_1

    .line 1598
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reportError"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1599
    nop

    .line 1600
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.util.logging.Handler"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1601
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    .line 1602
    .local v4, "p":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "println"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1603
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "printStackTrace"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1604
    :cond_2
    const/4 v0, 0x0

    .line 1605
    goto :goto_1

    .line 1591
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    .end local v4    # "p":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1611
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    .line 1612
    const/4 v0, 0x0

    .line 1616
    :cond_5
    :goto_1
    if-eqz v0, :cond_8

    .line 1617
    instance-of v2, p1, Ljava/lang/Error;

    if-nez v2, :cond_7

    .line 1619
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_6

    .line 1622
    goto :goto_2

    .line 1620
    :cond_6
    move-object v2, p1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1618
    :cond_7
    move-object v2, p1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1625
    :cond_8
    :goto_2
    return-void

    .line 1585
    .end local v0    # "reThrow":Z
    .end local v1    # "stack":[Ljava/lang/StackTraceElement;
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .line 3511
    nop

    .line 3512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3513
    const-string v2, " should not be equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3512
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3514
    nop

    .line 3511
    const-string v1, "Non discriminating equals implementation."

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3515
    return-void
.end method

.method private reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .line 3496
    nop

    .line 3497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3498
    const-string v2, " is not equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3497
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3499
    nop

    .line 3496
    const-string v1, "Non symmetric equals implementation."

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3500
    return-void
.end method

.method private reportNullError(I)V
    .locals 2
    .param p1, "code"    # I

    .line 3523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-string v1, "null"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3524
    return-void
.end method

.method private reportUnPublishedError(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 665
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 669
    if-eqz p1, :cond_0

    .line 670
    :try_start_0
    new-instance v0, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v0}, Ljava/util/logging/SimpleFormatter;-><init>()V

    .line 671
    .local v0, "f":Ljava/util/logging/SimpleFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 672
    const-string v2, " was not published. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 674
    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 681
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 675
    :cond_0
    const/4 v0, 0x0

    .line 677
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recursive publish detected by thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 682
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 683
    throw v0

    .line 685
    :cond_1
    :goto_2
    return-void
.end method

.method private reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .line 3101
    new-instance v0, Ljavax/mail/MessagingException;

    .line 3102
    nop

    .line 3101
    const-string v1, "An empty message was sent."

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
    .locals 5

    .line 1847
    nop

    .line 1848
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    .line 1849
    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1850
    goto :goto_0

    .line 1851
    :cond_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1853
    :goto_0
    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 1854
    return-void
.end method

.method private send(Ljavax/mail/Message;ZI)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z
    .param p3, "code"    # I

    .line 2578
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2579
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    nop

    .line 2583
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    nop

    .end local v0    # "ccl":Ljava/lang/Object;
    goto :goto_0

    .line 2582
    .restart local v0    # "ccl":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 2583
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    nop

    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "priority":Z
    .end local p3    # "code":I
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2587
    .end local v0    # "ccl":Ljava/lang/Object;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "priority":Z
    .restart local p3    # "code":I
    :catch_0
    move-exception v0

    .line 2588
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2585
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2586
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2590
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private setAcceptLang(Ljavax/mail/Part;)V
    .locals 3
    .param p1, "p"    # Ljavax/mail/Part;

    .line 3459
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3458
    nop

    .line 3460
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3461
    const-string v1, "Accept-Language"

    invoke-interface {p1, v1, v0}, Ljavax/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3463
    .end local v0    # "lang":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3464
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3466
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-void
.end method

.method private setAuthenticator0(Ljavax/mail/Authenticator;)V
    .locals 1
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .line 1128
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1135
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 1136
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1131
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1139
    return-void

    .line 1133
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "auth":Ljavax/mail/Authenticator;
    throw v0

    .line 1131
    .restart local p1    # "auth":Ljavax/mail/Authenticator;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setAutoSubmitted(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3636
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->allowRestrictedHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3638
    :try_start_0
    const-string v0, "auto-submitted"

    const-string v1, "auto-generated"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3639
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3640
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3643
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized setCapacity0(I)V
    .locals 2
    .param p1, "newCapacity"    # I

    monitor-enter p0

    .line 1710
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1711
    if-lez p1, :cond_2

    .line 1715
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_1

    .line 1719
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gez v0, :cond_0

    .line 1720
    neg-int v0, p1

    iput v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 1721
    goto :goto_0

    .line 1722
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    iput p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    :goto_0
    monitor-exit p0

    return-void

    .line 1716
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1712
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1709
    .end local p1    # "newCapacity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1, "part"    # Ljavax/mail/internet/MimeBodyPart;
    .param p2, "buf"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1663
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "charset":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, "text/plain"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1665
    invoke-direct {p0, p3, v0}, Lcom/sun/mail/util/logging/MailHandler;->contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1667
    :try_start_0
    new-instance v1, Ljavax/mail/util/ByteArrayDataSource;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    .local v1, "source":Ljavax/activation/DataSource;
    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v1    # "source":Ljavax/activation/DataSource;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1670
    .local v1, "IOE":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1671
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .end local v1    # "IOE":Ljava/io/IOException;
    goto :goto_0

    .line 1674
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :goto_0
    return-void
.end method

.method private setDefaultFrom(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3680
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3681
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3682
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3684
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "type"    # Ljavax/mail/Message$RecipientType;

    .line 3696
    const-string v0, "Unable to compute a default recipient."

    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 3697
    .local v2, "a":Ljavax/mail/Address;
    if-eqz v2, :cond_0

    .line 3698
    invoke-virtual {p1, p2, v2}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 3699
    goto :goto_0

    .line 3700
    :cond_0
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 3701
    .local v3, "m":Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->setFrom()V

    .line 3702
    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v4

    .line 3703
    .local v4, "from":[Ljavax/mail/Address;
    array-length v5, v4

    if-lez v5, :cond_1

    .line 3704
    invoke-virtual {p1, p2, v4}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 3705
    goto :goto_0

    .line 3706
    :cond_1
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "No local address."

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "type":Ljavax/mail/Message$RecipientType;
    throw v5
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3712
    .end local v2    # "a":Ljavax/mail/Address;
    .end local v3    # "m":Ljavax/mail/internet/MimeMessage;
    .end local v4    # "from":[Ljavax/mail/Address;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "type":Ljavax/mail/Message$RecipientType;
    :catch_0
    move-exception v2

    .line 3713
    .local v2, "RE":Ljava/lang/RuntimeException;
    nop

    .line 3714
    nop

    .line 3713
    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 3709
    .end local v2    # "RE":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 3710
    .local v2, "ME":Ljavax/mail/MessagingException;
    nop

    .line 3711
    nop

    .line 3710
    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3716
    .end local v2    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setEncoding0(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 943
    if-eqz p1, :cond_1

    .line 945
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "e":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .restart local p1    # "e":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 949
    .local v0, "icne":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    .end local v0    # "icne":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_1
    :goto_0
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
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setFrom(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3650
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.from"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3651
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3653
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 3654
    .local v2, "address":[Ljavax/mail/Address;
    array-length v3, v2

    if-lez v3, :cond_2

    .line 3655
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3656
    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 3657
    goto :goto_0

    .line 3658
    :cond_0
    invoke-virtual {p1, v2}, Ljavax/mail/Message;->addFrom([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    .end local v2    # "address":[Ljavax/mail/Address;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3666
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3667
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    .line 3669
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    goto :goto_0

    .line 3670
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    .line 3672
    :cond_2
    :goto_0
    return-void
.end method

.method private setIncompleteCopy(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3623
    :try_start_0
    const-string v0, "Incomplete-Copy"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3624
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3625
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3627
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setMailProperties0(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 1162
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1163
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Properties;

    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1169
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1170
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1165
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1173
    return-void

    .line 1167
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "props":Ljava/util/Properties;
    throw v0

    .line 1165
    .restart local p1    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setMailer(Ljavax/mail/Message;)V
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3576
    const/4 v0, 0x5

    :try_start_0
    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    .line 3577
    .local v1, "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3579
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, v1, :cond_0

    .line 3580
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3581
    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 3583
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3584
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3585
    .local v3, "E":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3586
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[^\\x00-\\x7F]"

    const-string v6, "\u001a"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3588
    .local v3, "value":Ljava/lang/String;
    :goto_0
    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " using the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " extension."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3588
    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3591
    :goto_1
    const-string v4, "X-Mailer"

    invoke-virtual {p1, v4, v3}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3592
    .end local v1    # "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_2

    :catch_1
    move-exception v1

    .line 3593
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3595
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :goto_2
    return-void
.end method

.method private setPriority(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3603
    :try_start_0
    const-string v0, "Importance"

    const-string v1, "High"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const-string v0, "Priority"

    const-string v1, "urgent"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    const-string v0, "X-Priority"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3606
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3607
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3609
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/mail/Message$RecipientType;

    .line 3782
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3783
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3784
    .local v2, "containsKey":Z
    :goto_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3786
    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3787
    .local v1, "address":[Ljavax/mail/Address;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 3788
    invoke-virtual {p1, p3, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3790
    .end local v1    # "address":[Ljavax/mail/Address;
    goto :goto_1

    :catch_0
    move-exception v1

    .line 3791
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3794
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :cond_1
    :goto_1
    return v2
.end method

.method private setReplyTo(Ljavax/mail/Message;)V
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3723
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.reply.to"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3724
    .local v0, "reply":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3726
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 3727
    .local v1, "address":[Ljavax/mail/Address;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 3728
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3730
    .end local v1    # "address":[Ljavax/mail/Address;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3731
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3734
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-void
.end method

.method private setSender(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3741
    nop

    .line 3742
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.sender"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3743
    .local v0, "sender":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3746
    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 3745
    nop

    .line 3747
    .local v3, "address":[Ljavax/mail/internet/InternetAddress;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 3748
    move-object v4, p1

    check-cast v4, Ljavax/mail/internet/MimeMessage;

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    .line 3749
    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 3750
    const-string v2, "Ignoring other senders."

    .line 3751
    invoke-direct {p0, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;

    move-result-object v4

    .line 3752
    nop

    .line 3750
    invoke-virtual {p0, v2, v4, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3755
    .end local v3    # "address":[Ljavax/mail/internet/InternetAddress;
    goto :goto_0

    :catch_0
    move-exception v2

    .line 3756
    .local v2, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v2}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3759
    .end local v2    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-void
.end method

.method private sort()V
    .locals 4

    .line 2597
    nop

    .line 2598
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2600
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 2601
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    invoke-static {v1, v3, v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 2602
    goto :goto_0

    .line 2603
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2604
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2605
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2604
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 2612
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method private tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "def"    # Ljava/lang/String;

    .line 3563
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3564
    :catch_0
    move-exception v0

    .line 3565
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3566
    return-object p2
.end method

.method private toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 3828
    if-nez p1, :cond_0

    .line 3829
    const-string v0, "null"

    return-object v0

    .line 3832
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 3835
    .local v0, "charset":Ljava/lang/String;
    const/16 v1, 0x20

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3834
    nop

    .line 3839
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3838
    nop

    .line 3840
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3842
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 3843
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3844
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3847
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v2

    .line 3848
    .local v2, "badMimeCharset":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3845
    .end local v2    # "badMimeCharset":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 3846
    .local v2, "unexpected":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toRawString(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3807
    if-eqz p1, :cond_0

    .line 3808
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3810
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v1

    const/16 v2, 0x400

    add-int/2addr v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

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

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    return-object v3

    .line 3814
    .end local v1    # "nbytes":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v1

    .line 3815
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    throw v1

    .line 3818
    .end local v0    # "ccl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private toString(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3297
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3298
    return-object v0

    .line 3300
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;
    .locals 3
    .param p1, "address"    # [Ljavax/mail/Address;
    .param p2, "offset"    # I

    .line 3768
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 3769
    .local v0, "l":Ljava/lang/Object;
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private tryMutex()Z
    .locals 2

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

    return v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static verifyAddresses([Ljavax/mail/Address;)V
    .locals 3
    .param p0, "all"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 3083
    if-eqz p0, :cond_2

    .line 3084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 3085
    :cond_0
    aget-object v1, p0, v0

    .line 3086
    .local v1, "a":Ljavax/mail/Address;
    instance-of v2, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v2, :cond_1

    .line 3087
    move-object v2, v1

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3084
    .end local v1    # "a":Ljavax/mail/Address;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3091
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private static verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3063
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 3065
    .local v0, "a":Ljava/net/InetAddress;
    goto :goto_0

    .line 3066
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3068
    .restart local v0    # "a":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3071
    return-object v0

    .line 3069
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
.end method

.method private verifySettings(Ljavax/mail/Session;)V
    .locals 4
    .param p1, "session"    # Ljavax/mail/Session;

    .line 2795
    if-eqz p1, :cond_1

    .line 2796
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 2797
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "verify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2798
    .local v1, "check":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2799
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 2801
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2802
    invoke-direct {p0, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 2804
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 2805
    :cond_0
    if-eqz v1, :cond_1

    .line 2806
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 2810
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "check":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void
.end method

.method private verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 12
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "verify"    # Ljava/lang/String;

    .line 2824
    nop

    .line 2825
    const-string v0, "local"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    const-string v0, "limited"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resolve"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2827
    const-string v0, "Verify must be \'limited\', local\', \'resolve\' or \'remote\'."

    .line 2829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2830
    nop

    .line 2827
    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2831
    return-void

    .line 2834
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2836
    .local v0, "abort":Ljavax/mail/internet/MimeMessage;
    const-string v2, "limited"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_1

    .line 2837
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Local address is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2838
    invoke-static {p1}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2837
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2841
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2842
    goto :goto_0

    :catch_0
    move-exception v4

    .line 2844
    .local v4, "RE":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 2843
    nop

    .line 2845
    .local v5, "UEE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5, v4}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2846
    invoke-virtual {p0, v2, v5, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2848
    .end local v4    # "RE":Ljava/lang/RuntimeException;
    .end local v5    # "UEE":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 2849
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const-string v2, "Skipping local address check."

    .line 2853
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_0
    monitor-enter p0

    .line 2854
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2855
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2853
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2858
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 2859
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2861
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2862
    goto :goto_1

    :catch_1
    move-exception v4

    .line 2863
    .local v4, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {p0, v2, v4, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2868
    .end local v4    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v4

    .line 2869
    .local v4, "all":[Ljavax/mail/Address;
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 2870
    new-array v6, v5, [Ljavax/mail/internet/InternetAddress;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    move-object v4, v6

    .line 2874
    :cond_2
    :try_start_4
    array-length v6, v4

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v6

    .line 2875
    .local v6, "any":[Ljavax/mail/Address;
    :goto_2
    if-eqz v6, :cond_4

    array-length v7, v6

    if-eqz v7, :cond_4

    .line 2876
    aget-object v5, v6, v5

    invoke-virtual {p1, v5}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v5

    .line 2877
    .local v5, "t":Ljavax/mail/Transport;
    const-string v7, "mail.transport.protocol"

    invoke-virtual {p1, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2878
    goto :goto_3

    .line 2879
    .end local v5    # "t":Ljavax/mail/Transport;
    :cond_4
    new-instance v5, Ljavax/mail/MessagingException;

    .line 2880
    const-string v7, "No recipient or from address."

    .line 2879
    invoke-direct {v5, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 2881
    .local v5, "me":Ljavax/mail/MessagingException;
    invoke-virtual {p0, v2, v5, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2882
    nop

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v5
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    .line 2884
    .end local v5    # "me":Ljavax/mail/MessagingException;
    .end local v6    # "any":[Ljavax/mail/Address;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "all":[Ljavax/mail/Address;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 2886
    .local v5, "protocol":Ljavax/mail/MessagingException;
    :try_start_5
    sget-object v6, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 2888
    .local v6, "ccl":Ljava/lang/Object;
    :try_start_6
    invoke-virtual {p1}, Ljavax/mail/Session;->getTransport()Ljavax/mail/Transport;

    move-result-object v7
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2889
    .local v7, "t":Ljavax/mail/Transport;
    nop

    .line 2892
    :try_start_7
    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 2896
    .end local v6    # "ccl":Ljava/lang/Object;
    .end local v7    # "t":Ljavax/mail/Transport;
    .local v5, "t":Ljavax/mail/Transport;
    :goto_3
    const/4 v6, 0x0

    .line 2897
    .local v6, "local":Ljava/lang/String;
    const-string v7, "remote"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2898
    const/4 v7, 0x0

    .line 2899
    .local v7, "closed":Ljavax/mail/MessagingException;
    invoke-virtual {v5}, Ljavax/mail/Transport;->connect()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 2903
    :try_start_8
    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 2908
    invoke-virtual {v5, v0, v4}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2909
    nop

    .line 2911
    :try_start_9
    invoke-virtual {v5}, Ljavax/mail/Transport;->close()V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljavax/mail/SendFailedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 2912
    goto :goto_4

    :catch_3
    move-exception v8

    .line 2913
    .local v8, "ME":Ljavax/mail/MessagingException;
    move-object v7, v8

    .line 2916
    .end local v8    # "ME":Ljavax/mail/MessagingException;
    :goto_4
    const/4 v8, 0x0

    :try_start_a
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljavax/mail/SendFailedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 2917
    goto :goto_7

    .line 2909
    :catchall_0
    move-exception v8

    .line 2911
    :try_start_b
    invoke-virtual {v5}, Ljavax/mail/Transport;->close()V
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljavax/mail/SendFailedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 2912
    goto :goto_5

    .line 2917
    :catch_4
    move-exception v8

    goto :goto_6

    .line 2912
    :catch_5
    move-exception v9

    .line 2913
    .local v9, "ME":Ljavax/mail/MessagingException;
    move-object v7, v9

    .line 2915
    .end local v9    # "ME":Ljavax/mail/MessagingException;
    :goto_5
    nop

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local v5    # "t":Ljavax/mail/Transport;
    .end local v6    # "local":Ljava/lang/String;
    .end local v7    # "closed":Ljavax/mail/MessagingException;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    :try_start_c
    throw v8
    :try_end_c
    .catch Ljavax/mail/SendFailedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 2928
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "all":[Ljavax/mail/Address;
    .restart local v5    # "t":Ljavax/mail/Transport;
    .restart local v6    # "local":Ljava/lang/String;
    .restart local v7    # "closed":Ljavax/mail/MessagingException;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_6
    move-exception v8

    .line 2929
    .restart local v8    # "ME":Ljavax/mail/MessagingException;
    :try_start_d
    invoke-virtual {p0, v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2930
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2931
    invoke-direct {p0, v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_7

    .line 2918
    .local v8, "sfe":Ljavax/mail/SendFailedException;
    :goto_6
    invoke-virtual {v8}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v9

    .line 2919
    .local v9, "recip":[Ljavax/mail/Address;
    if-eqz v9, :cond_5

    array-length v10, v9

    if-eqz v10, :cond_5

    .line 2920
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2921
    invoke-direct {p0, v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2924
    :cond_5
    invoke-virtual {v8}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v10

    move-object v9, v10

    .line 2925
    if-eqz v9, :cond_6

    array-length v10, v9

    if-eqz v10, :cond_6

    .line 2926
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2935
    .end local v8    # "sfe":Ljavax/mail/SendFailedException;
    .end local v9    # "recip":[Ljavax/mail/Address;
    :cond_6
    :goto_7
    if-eqz v7, :cond_9

    .line 2936
    invoke-direct {p0, v0, p2, v7}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2937
    const/4 v8, 0x3

    invoke-direct {p0, v0, v7, v8}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2939
    .end local v7    # "closed":Ljavax/mail/MessagingException;
    goto/16 :goto_8

    .line 2941
    :cond_7
    invoke-virtual {v5}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 2942
    .local v7, "protocol":Ljava/lang/String;
    const-string v8, "mail.host"

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    const-string v8, "mail.user"

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2944
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".host"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2945
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2946
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".user"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2947
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".localhost"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 2948
    invoke-static {v6}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2949
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mail."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".localaddress"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2949
    invoke-virtual {p1, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 2953
    :cond_8
    const-string v8, "resolve"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    if-eqz v8, :cond_9

    .line 2955
    :try_start_e
    invoke-virtual {v5}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 2956
    goto :goto_8

    .line 2961
    :catch_7
    move-exception v8

    .line 2963
    .local v8, "RE":Ljava/lang/RuntimeException;
    :try_start_f
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-direct {v9, v2, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2962
    nop

    .line 2964
    .local v9, "ME":Ljavax/mail/MessagingException;
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2965
    invoke-direct {p0, v0, v9, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_8

    .line 2956
    .end local v8    # "RE":Ljava/lang/RuntimeException;
    .end local v9    # "ME":Ljavax/mail/MessagingException;
    :catch_8
    move-exception v8

    .line 2958
    .local v8, "IOE":Ljava/io/IOException;
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-direct {v9, v2, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2957
    nop

    .line 2959
    .restart local v9    # "ME":Ljavax/mail/MessagingException;
    invoke-direct {p0, v0, p2, v9}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2960
    invoke-direct {p0, v0, v9, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2970
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "IOE":Ljava/io/IOException;
    .end local v9    # "ME":Ljavax/mail/MessagingException;
    :cond_9
    :goto_8
    const-string v7, "limited"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    if-nez v7, :cond_b

    .line 2972
    :try_start_10
    const-string v7, "remote"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2973
    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 2975
    :cond_a
    invoke-static {v6}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 2976
    goto :goto_9

    .line 2980
    :catch_9
    move-exception v7

    .line 2981
    .local v7, "RE":Ljava/lang/RuntimeException;
    :try_start_11
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-direct {v8, v2, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2982
    .local v8, "ME":Ljavax/mail/MessagingException;
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2983
    invoke-direct {p0, v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_9

    .line 2976
    .end local v7    # "RE":Ljava/lang/RuntimeException;
    .end local v8    # "ME":Ljavax/mail/MessagingException;
    :catch_a
    move-exception v7

    .line 2977
    .local v7, "IOE":Ljava/io/IOException;
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-direct {v8, v2, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2978
    .restart local v8    # "ME":Ljavax/mail/MessagingException;
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2979
    invoke-direct {p0, v0, v8, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 2988
    .end local v7    # "IOE":Ljava/io/IOException;
    .end local v8    # "ME":Ljavax/mail/MessagingException;
    :goto_9
    :try_start_12
    sget-object v7, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v7}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 2990
    .local v7, "ccl":Ljava/lang/Object;
    :try_start_13
    new-instance v8, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v8}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 2991
    .local v8, "multipart":Ljavax/mail/internet/MimeMultipart;
    new-instance v9, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v9}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 2992
    .local v9, "body":Ljavax/mail/internet/MimeBodyPart;
    const-string v10, "inline"

    invoke-virtual {v9, v10}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v9, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 2994
    invoke-direct {p0, v9}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 2995
    const-string v10, ""

    const-string v11, "text/plain"

    invoke-direct {p0, v9, v10, v11}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2996
    invoke-virtual {v8, v9}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2997
    invoke-virtual {v0, v8}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 2998
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 2999
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x400

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0, v10}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3000
    .end local v8    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .end local v9    # "body":Ljavax/mail/internet/MimeBodyPart;
    nop

    .line 3001
    :try_start_14
    invoke-direct {p0, v7}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    .end local v7    # "ccl":Ljava/lang/Object;
    goto :goto_a

    .line 3000
    .restart local v7    # "ccl":Ljava/lang/Object;
    :catchall_1
    move-exception v8

    .line 3001
    invoke-direct {p0, v7}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    nop

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local v5    # "t":Ljavax/mail/Transport;
    .end local v6    # "local":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v8
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 3003
    .end local v7    # "ccl":Ljava/lang/Object;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "all":[Ljavax/mail/Address;
    .restart local v5    # "t":Ljavax/mail/Transport;
    .restart local v6    # "local":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_b
    move-exception v7

    .line 3004
    .local v7, "IOE":Ljava/io/IOException;
    :try_start_15
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-direct {v8, v2, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3005
    .local v8, "ME":Ljavax/mail/MessagingException;
    invoke-direct {p0, v0, p2, v8}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3006
    invoke-direct {p0, v0, v8, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3011
    .end local v7    # "IOE":Ljava/io/IOException;
    .end local v8    # "ME":Ljavax/mail/MessagingException;
    :cond_b
    :goto_a
    array-length v3, v4

    if-eqz v3, :cond_11

    .line 3012
    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3013
    nop

    .line 3018
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v3

    .line 3019
    .local v3, "from":[Ljavax/mail/Address;
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getSender()Ljavax/mail/Address;

    move-result-object v7

    .line 3020
    .local v7, "sender":Ljavax/mail/Address;
    instance-of v8, v7, Ljavax/mail/internet/InternetAddress;

    if-eqz v8, :cond_c

    .line 3021
    move-object v8, v7

    check-cast v8, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v8}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3025
    :cond_c
    const-string v8, "From"

    const-string v9, ","

    invoke-virtual {v0, v8, v9}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    array-length v8, v3

    if-eqz v8, :cond_f

    .line 3026
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3027
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b
    array-length v9, v3

    if-lt v8, v9, :cond_d

    .line 3035
    .end local v8    # "i":I
    goto :goto_c

    .line 3028
    .restart local v8    # "i":I
    :cond_d
    aget-object v9, v3, v8

    invoke-virtual {v9, v7}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 3027
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 3029
    :cond_e
    new-instance v9, Ljavax/mail/MessagingException;

    .line 3030
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sender address \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3031
    const-string v11, "\' equals from address."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3029
    invoke-direct {v9, v10}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3032
    .local v9, "ME":Ljavax/mail/MessagingException;
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-direct {v10, v2, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v10

    .line 3036
    .end local v8    # "i":I
    .end local v9    # "ME":Ljavax/mail/MessagingException;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :cond_f
    if-eqz v7, :cond_10

    .line 3044
    :goto_c
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3045
    .end local v3    # "from":[Ljavax/mail/Address;
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local v5    # "t":Ljavax/mail/Transport;
    .end local v6    # "local":Ljava/lang/String;
    .end local v7    # "sender":Ljavax/mail/Address;
    goto :goto_e

    .line 3037
    .restart local v3    # "from":[Ljavax/mail/Address;
    .restart local v4    # "all":[Ljavax/mail/Address;
    .restart local v5    # "t":Ljavax/mail/Transport;
    .restart local v6    # "local":Ljava/lang/String;
    .restart local v7    # "sender":Ljavax/mail/Address;
    :cond_10
    new-instance v8, Ljavax/mail/MessagingException;

    .line 3038
    const-string v9, "No from or sender address."

    .line 3037
    invoke-direct {v8, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3039
    .local v8, "ME":Ljavax/mail/MessagingException;
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-direct {v9, v2, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v9

    .line 3014
    .end local v3    # "from":[Ljavax/mail/Address;
    .end local v7    # "sender":Ljavax/mail/Address;
    .end local v8    # "ME":Ljavax/mail/MessagingException;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :cond_11
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v7, "No recipient addresses."

    invoke-direct {v3, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v3
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    .line 2891
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .local v5, "protocol":Ljavax/mail/MessagingException;
    .local v6, "ccl":Ljava/lang/Object;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catchall_2
    move-exception v3

    goto :goto_d

    .line 2889
    :catch_c
    move-exception v3

    .line 2890
    .local v3, "fail":Ljavax/mail/MessagingException;
    :try_start_16
    invoke-static {v5, v3}, Lcom/sun/mail/util/logging/MailHandler;->attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;

    move-result-object v7

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local v5    # "protocol":Ljavax/mail/MessagingException;
    .end local v6    # "ccl":Ljava/lang/Object;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2892
    .end local v3    # "fail":Ljavax/mail/MessagingException;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "all":[Ljavax/mail/Address;
    .restart local v5    # "protocol":Ljavax/mail/MessagingException;
    .restart local v6    # "ccl":Ljava/lang/Object;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :goto_d
    :try_start_17
    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    nop

    .end local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "msg":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v3
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    .line 3048
    .end local v4    # "all":[Ljavax/mail/Address;
    .end local v5    # "protocol":Ljavax/mail/MessagingException;
    .end local v6    # "ccl":Ljava/lang/Object;
    .restart local v0    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_d
    move-exception v3

    .line 3049
    .local v3, "ME":Ljava/lang/Exception;
    invoke-direct {p0, v0, p2, v3}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3050
    invoke-direct {p0, v0, v3, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_e

    .line 3045
    .end local v3    # "ME":Ljava/lang/Exception;
    :catch_e
    move-exception v3

    .line 3046
    .local v3, "RE":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0, p2, v3}, Lcom/sun/mail/util/logging/MailHandler;->fixUpContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3047
    invoke-direct {p0, v0, v3, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3052
    .end local v3    # "RE":Ljava/lang/RuntimeException;
    :goto_e
    return-void

    .line 2853
    :catchall_3
    move-exception v1

    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    throw v1
.end method

.method private writeLogRecords(I)Ljavax/mail/Message;
    .locals 2
    .param p1, "code"    # I

    .line 2625
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2626
    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_2

    .line 2627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2629
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords0()Ljavax/mail/Message;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2631
    :try_start_3
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2632
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_0

    .line 2633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2629
    :cond_0
    monitor-exit p0

    return-object v1

    .line 2630
    :catchall_0
    move-exception v1

    .line 2631
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2632
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_1

    .line 2633
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2635
    :cond_1
    nop

    .end local p1    # "code":I
    throw v1

    .line 2625
    .restart local p1    # "code":I
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "code":I
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2640
    .restart local p1    # "code":I
    :catch_0
    move-exception v0

    .line 2641
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2638
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2639
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2643
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeLogRecords0()Ljavax/mail/Message;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2659
    move-object/from16 v0, p0

    .line 2660
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->sort()V

    .line 2661
    iget-object v1, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    if-nez v1, :cond_0

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    .line 2664
    :cond_0
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2665
    .local v1, "msg":Ljavax/mail/internet/MimeMessage;
    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v3, v0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v4, v0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {v0, v2, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 2672
    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v2

    new-array v2, v2, [Ljavax/mail/internet/MimeBodyPart;

    .line 2677
    .local v2, "parts":[Ljavax/mail/internet/MimeBodyPart;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/StringBuilder;

    .line 2679
    .local v3, "buffers":[Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2680
    .local v4, "contentType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2682
    .local v5, "buf":Ljava/lang/StringBuilder;
    iget-object v6, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    .line 2685
    .local v6, "body":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v7

    .line 2686
    .local v7, "bodyFormat":Ljava/util/logging/Formatter;
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v8

    .line 2688
    .local v8, "bodyFilter":Ljava/util/logging/Filter;
    const/4 v9, 0x0

    .line 2689
    .local v9, "lastLocale":Ljava/util/Locale;
    const/4 v10, 0x0

    .local v10, "ix":I
    :goto_0
    iget v11, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v12, 0x0

    if-lt v10, v11, :cond_9

    .line 2738
    .end local v10    # "ix":I
    const/4 v11, 0x0

    iput v11, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 2740
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    .local v10, "i":I
    :goto_1
    const-string v13, ""

    if-gez v10, :cond_5

    .line 2760
    .end local v10    # "i":I
    if-eqz v5, :cond_1

    .line 2761
    invoke-direct {v0, v7, v13}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    move-object v14, v5

    goto :goto_2

    .line 2765
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v10

    move-object v14, v5

    .line 2768
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_2
    iget-object v5, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v5, v13}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2770
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    move-object v15, v5

    .line 2771
    .local v15, "multipart":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2772
    .local v16, "altType":Ljava/lang/String;
    if-nez v16, :cond_2

    move-object v5, v4

    goto :goto_3

    :cond_2
    move-object/from16 v5, v16

    :goto_3
    invoke-direct {v0, v6, v14, v5}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v15, v6}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2775
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v10, v2

    if-lt v5, v10, :cond_3

    .line 2781
    .end local v5    # "i":I
    invoke-virtual {v1, v15}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 2782
    return-object v1

    .line 2776
    .restart local v5    # "i":I
    :cond_3
    aget-object v10, v2, v5

    if-eqz v10, :cond_4

    .line 2777
    aget-object v10, v2, v5

    invoke-virtual {v15, v10}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2775
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2741
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    .end local v15    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .end local v16    # "altType":Ljava/lang/String;
    .local v5, "buf":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    :cond_5
    aget-object v14, v2, v10

    if-eqz v14, :cond_8

    .line 2742
    aget-object v14, v2, v10

    iget-object v15, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v15, v15, v10

    const-string v11, "err"

    invoke-direct {v0, v15, v11}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v14, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2743
    aget-object v11, v3, v10

    iget-object v14, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v14, v14, v10

    invoke-direct {v0, v14, v13}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    aget-object v11, v3, v10

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 2746
    aget-object v11, v2, v10

    invoke-virtual {v11}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 2747
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2748
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v13, v13, v10

    invoke-direct {v0, v13}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v11

    .line 2749
    aget-object v13, v2, v10

    invoke-virtual {v13, v11}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 2751
    :cond_6
    aget-object v13, v2, v10

    aget-object v14, v3, v10

    invoke-direct {v0, v11}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v13, v14, v15}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2752
    .end local v11    # "name":Ljava/lang/String;
    goto :goto_5

    .line 2753
    :cond_7
    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 2754
    aput-object v12, v2, v10

    .line 2756
    :goto_5
    aput-object v12, v3, v10

    .line 2740
    :cond_8
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2690
    .local v10, "ix":I
    :cond_9
    const/4 v11, 0x0

    .line 2691
    .local v11, "formatted":Z
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v14, v13, v10

    .line 2692
    .local v14, "r":Ljava/util/logging/LogRecord;
    aput-object v12, v13, v10

    .line 2694
    invoke-direct {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;

    move-result-object v12

    .line 2695
    .local v12, "locale":Ljava/util/Locale;
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v13, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2697
    if-eqz v8, :cond_a

    invoke-interface {v8, v14}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2698
    :cond_a
    if-nez v5, :cond_b

    .line 2699
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v13

    .line 2700
    invoke-direct {v0, v7}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v13

    .line 2701
    .local v13, "head":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v0, v13}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2704
    .end local v13    # "head":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x1

    .line 2705
    invoke-direct {v0, v7, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    if-eqz v12, :cond_c

    invoke-virtual {v12, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 2707
    invoke-direct {v0, v6, v12}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2711
    :cond_c
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    array-length v15, v2

    if-lt v13, v15, :cond_f

    .line 2729
    .end local v13    # "i":I
    if-eqz v11, :cond_d

    .line 2730
    if-eqz v12, :cond_e

    invoke-virtual {v12, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 2731
    invoke-direct {v0, v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2733
    goto :goto_7

    .line 2734
    :cond_d
    invoke-direct {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->reportFilterError(Ljava/util/logging/LogRecord;)V

    .line 2736
    :cond_e
    :goto_7
    move-object v9, v12

    .line 2689
    .end local v11    # "formatted":Z
    .end local v12    # "locale":Ljava/util/Locale;
    .end local v14    # "r":Ljava/util/logging/LogRecord;
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2712
    .restart local v11    # "formatted":Z
    .restart local v12    # "locale":Ljava/util/Locale;
    .restart local v13    # "i":I
    .restart local v14    # "r":Ljava/util/logging/LogRecord;
    :cond_f
    iget-object v15, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v15, v15, v13

    .line 2713
    .local v15, "af":Ljava/util/logging/Filter;
    if-eqz v15, :cond_11

    invoke-interface {v15, v14}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v16

    if-eqz v16, :cond_10

    goto :goto_8

    :cond_10
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    goto :goto_a

    .line 2714
    :cond_11
    :goto_8
    aget-object v16, v2, v13

    if-nez v16, :cond_12

    .line 2715
    invoke-direct {v0, v13}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v16

    aput-object v16, v2, v13

    .line 2716
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v16, v3, v13

    .line 2717
    move-object/from16 v16, v1

    .end local v1    # "msg":Ljavax/mail/internet/MimeMessage;
    .local v16, "msg":Ljavax/mail/internet/MimeMessage;
    aget-object v1, v3, v13

    move-object/from16 v17, v4

    .end local v4    # "contentType":Ljava/lang/String;
    .local v17, "contentType":Ljava/lang/String;
    iget-object v4, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v4, v4, v13

    invoke-direct {v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    aget-object v1, v2, v13

    iget-object v4, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v4, v4, v13

    invoke-direct {v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    goto :goto_9

    .line 2714
    .end local v16    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local v17    # "contentType":Ljava/lang/String;
    .restart local v1    # "msg":Ljavax/mail/internet/MimeMessage;
    .restart local v4    # "contentType":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .line 2720
    .end local v1    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local v4    # "contentType":Ljava/lang/String;
    .restart local v16    # "msg":Ljavax/mail/internet/MimeMessage;
    .restart local v17    # "contentType":Ljava/lang/String;
    :goto_9
    const/4 v1, 0x1

    .line 2721
    .end local v11    # "formatted":Z
    .local v1, "formatted":Z
    aget-object v4, v2, v13

    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v13

    invoke-direct {v0, v11, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v4, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2722
    aget-object v4, v3, v13

    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v13

    invoke-direct {v0, v11, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2723
    if-eqz v12, :cond_13

    invoke-virtual {v12, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2724
    aget-object v4, v2, v13

    invoke-direct {v0, v4, v12}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2711
    .end local v15    # "af":Ljava/util/logging/Filter;
    :cond_13
    move v11, v1

    .end local v1    # "formatted":Z
    .restart local v11    # "formatted":Z
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v4, v17

    goto/16 :goto_6
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 776
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "msg":Ljavax/mail/Message;
    monitor-enter p0

    .line 780
    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 781
    nop

    .line 782
    :try_start_1
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 789
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v3, :cond_0

    .line 790
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v3, v3

    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 794
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 795
    new-array v2, v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 778
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    if-eqz v0, :cond_2

    .line 801
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    .line 803
    :cond_2
    return-void

    .line 781
    :catchall_0
    move-exception v1

    .line 782
    :try_start_2
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 789
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v3, :cond_3

    .line 790
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v3, v3

    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 794
    :cond_3
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-eq v3, v2, :cond_4

    .line 795
    new-array v2, v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 797
    :cond_4
    nop

    .end local v0    # "msg":Ljavax/mail/Message;
    throw v1

    .line 778
    .restart local v0    # "msg":Ljavax/mail/Message;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method final contentTypeOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "head"    # Ljava/lang/String;

    .line 1494
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1495
    const/16 v0, 0x19

    .line 1496
    .local v0, "MAX_CHARS":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 1497
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1500
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    .line 1502
    .local v1, "charset":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1501
    nop

    .line 1504
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    nop

    .line 1505
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1506
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    .line 1507
    .local v1, "IOE":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1510
    .end local v0    # "MAX_CHARS":I
    .end local v1    # "IOE":Ljava/io/IOException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 759
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 760
    return-void
.end method

.method public final getAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

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
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getAttachmentNames()[Ljava/util/logging/Formatter;
    .locals 2

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
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getAuthenticator()Ljavax/mail/Authenticator;
    .locals 1

    monitor-enter p0

    .line 1091
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1092
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1090
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 1080
    nop

    .line 1081
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1079
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1054
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoding()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 913
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .line 850
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 851
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public declared-synchronized getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 965
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final getMailProperties()Ljava/util/Properties;
    .locals 2

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
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getPushFilter()Ljava/util/logging/Filter;
    .locals 1

    monitor-enter p0

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1026
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    monitor-enter p0

    .line 995
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 995
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSubject()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1393
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 574
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 575
    .local v0, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_3

    sget v1, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v1

    .line 580
    .local v1, "body":Ljava/util/logging/Filter;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2

    .line 581
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 576
    .end local v1    # "body":Ljava/util/logging/Filter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method final isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1523
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_1

    .line 1528
    .end local v0    # "cause":Ljava/lang/Throwable;
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1530
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    nop

    .line 1539
    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1538
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1533
    :catch_0
    move-exception v1

    .line 1534
    .local v1, "noContent":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1535
    .local v2, "txt":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1536
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    return v3

    .line 1541
    .end local v1    # "noContent":Ljava/lang/Exception;
    .end local v2    # "txt":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 1531
    :catch_1
    move-exception v1

    .line 1532
    .local v1, "RE":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "ccl":Ljava/lang/Object;
    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "t":Ljava/lang/Throwable;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1539
    .end local v1    # "RE":Ljava/lang/RuntimeException;
    .restart local v0    # "ccl":Ljava/lang/Object;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    throw v1

    .line 1524
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_1
    move-object p2, v0

    .line 1525
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public postConstruct()V
    .locals 0

    .line 723
    return-void
.end method

.method public preDestroy()V
    .locals 2

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

    .line 618
    goto :goto_0

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

    .line 621
    :goto_0
    return-void
.end method

.method public push()V
    .locals 2

    .line 749
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 750
    return-void
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1464
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1465
    goto :goto_0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "GLASSFISH_21258":Ljava/lang/LinkageError;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 1468
    .end local v0    # "GLASSFISH_21258":Ljava/lang/LinkageError;
    :catch_1
    move-exception v0

    .line 1469
    .local v0, "GLASSFISH_21258":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    .line 1473
    .end local v0    # "GLASSFISH_21258":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public final varargs setAttachmentFilters([Ljava/util/logging/Filter;)V
    .locals 2
    .param p1, "filters"    # [Ljava/util/logging/Filter;

    .line 1213
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1214
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Filter;

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Filter;

    .line 1215
    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1220
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1223
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1215
    monitor-exit p0

    .line 1225
    return-void

    .line 1221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "filters":[Ljava/util/logging/Filter;
    throw v0

    .line 1217
    .restart local p1    # "filters":[Ljava/util/logging/Filter;
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "filters":[Ljava/util/logging/Filter;
    throw v0

    .line 1215
    .restart local p1    # "filters":[Ljava/util/logging/Filter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs setAttachmentFormatters([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .line 1253
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1254
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1255
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    .line 1256
    move-object v1, p1

    goto :goto_1

    .line 1257
    :cond_0
    nop

    .line 1258
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    .line 1257
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    move-object v1, p1

    .line 1266
    .end local v0    # "i":I
    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    .local v1, "formatters":[Ljava/util/logging/Formatter;
    :goto_1
    monitor-enter p0

    .line 1267
    :try_start_0
    iget-boolean p1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez p1, :cond_1

    .line 1271
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1272
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentFilters()Z

    .line 1273
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->fixUpAttachmentNames()Z

    .line 1266
    monitor-exit p0

    .line 1275
    return-void

    .line 1268
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v1    # "formatters":[Ljava/util/logging/Formatter;
    throw p1

    .line 1266
    .restart local v1    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1260
    .end local v1    # "formatters":[Ljava/util/logging/Formatter;
    .restart local v0    # "i":I
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :cond_2
    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1261
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs setAttachmentNames([Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .line 1308
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1311
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1312
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    .line 1313
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 1314
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/logging/Formatter;

    .line 1317
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_3

    .line 1330
    .end local v1    # "i":I
    monitor-enter p0

    .line 1331
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_2

    .line 1335
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v1, :cond_1

    .line 1338
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1330
    monitor-exit p0

    .line 1340
    return-void

    .line 1336
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    .end local p1    # "names":[Ljava/lang/String;
    throw v1

    .line 1332
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    .restart local p1    # "names":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    .end local p1    # "names":[Ljava/lang/String;
    throw v1

    .line 1330
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    .restart local p1    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1318
    .restart local v1    # "i":I
    :cond_3
    aget-object v2, p1, v1

    .line 1319
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1320
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1321
    new-instance v3, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v3, v2}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 1322
    nop

    .line 1317
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1323
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1326
    :cond_5
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final varargs setAttachmentNames([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .line 1364
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1366
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 1373
    .end local v0    # "i":I
    monitor-enter p0

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1378
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1382
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1373
    monitor-exit p0

    .line 1384
    return-void

    .line 1379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    throw v0

    .line 1375
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    throw v0

    .line 1373
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1368
    .restart local v0    # "i":I
    :cond_2
    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 1367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1369
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setAuthenticator(Ljavax/mail/Authenticator;)V
    .locals 0
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .line 1103
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1104
    return-void
.end method

.method public final varargs setAuthenticator([C)V
    .locals 2
    .param p1, "password"    # [C

    .line 1116
    if-nez p1, :cond_0

    .line 1117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1118
    goto :goto_0

    .line 1119
    :cond_0
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1121
    :goto_0
    return-void
.end method

.method public final declared-synchronized setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    monitor-enter p0

    .line 1066
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1067
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1070
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    monitor-exit p0

    return-void

    .line 1068
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

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

    .line 867
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 868
    if-eqz p1, :cond_0

    .line 871
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

    .line 869
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

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

    monitor-enter p0

    .line 982
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 983
    if-eqz p1, :cond_0

    .line 986
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit p0

    return-void

    .line 984
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    .end local p1    # "newFormatter":Ljava/util/logging/Formatter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .line 816
    if-eqz p1, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v0, :cond_0

    .line 824
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 822
    :cond_0
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

    .line 817
    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method public final setMailProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Properties;

    .line 1153
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 1154
    return-void
.end method

.method public final declared-synchronized setPushFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/logging/Filter;

    monitor-enter p0

    .line 1041
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1042
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1045
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    monitor-exit p0

    return-void

    .line 1043
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    .end local p1    # "filter":Ljava/util/logging/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPushLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    monitor-enter p0

    .line 1010
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1011
    if-eqz p1, :cond_1

    .line 1015
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1018
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    monitor-exit p0

    return-void

    .line 1016
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    .end local p1    # "level":Ljava/util/logging/Level;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 1408
    if-eqz p1, :cond_0

    .line 1409
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setSubject(Ljava/util/logging/Formatter;)V

    .line 1410
    nop

    .line 1414
    return-void

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1412
    const/4 v0, 0x0

    throw v0
.end method

.method public final setSubject(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "format"    # Ljava/util/logging/Formatter;

    .line 1436
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1437
    if-eqz p1, :cond_1

    .line 1441
    monitor-enter p0

    .line 1442
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1445
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1441
    monitor-exit p0

    .line 1447
    return-void

    .line 1443
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "format":Ljava/util/logging/Formatter;
    throw v0

    .line 1441
    .restart local p1    # "format":Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1438
    :cond_1
    const/4 v0, 0x0

    throw v0
.end method
