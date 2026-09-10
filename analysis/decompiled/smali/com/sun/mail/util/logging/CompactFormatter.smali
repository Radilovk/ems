.class public Lcom/sun/mail/util/logging/CompactFormatter;
.super Ljava/util/logging/Formatter;
.source "CompactFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/logging/CompactFormatter$Alternate;
    }
.end annotation


# instance fields
.field private final fmt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "format":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private defaultIgnore(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isSynthetic(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isStaticUtility(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isReflection(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v2, 0x0

    .line 430
    const-string v1, ""

    .line 431
    .local v1, "site":Ljava/lang/String;
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 439
    :goto_1
    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    array-length v3, p1

    :goto_2
    if-lt v2, v3, :cond_3

    .line 447
    :cond_0
    :goto_3
    return-object v1

    .line 431
    :cond_1
    aget-object v0, p1, v3

    .line 432
    .local v0, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->ignore(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 433
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 434
    goto :goto_1

    .line 431
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "s":Ljava/lang/StackTraceElement;
    :cond_3
    aget-object v0, p1, v2

    .line 441
    .restart local v0    # "s":Ljava/lang/StackTraceElement;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->defaultIgnore(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 442
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 443
    goto :goto_3

    .line 440
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    return-object v0

    .line 464
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private formatToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v1, ".format"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    const-string v0, "%7$#.160s%n"

    .line 594
    :cond_0
    return-object v0
.end method

.method private static isNullOrSpaces(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 695
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReflection(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->isReflectionClass(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 578
    :goto_0
    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 578
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.reflect."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.reflect."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    :catch_1
    move-exception v0

    goto :goto_1

    .line 574
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private isStaticUtility(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 531
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->isStaticUtilityClass(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v1

    .line 536
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "cn":Ljava/lang/String;
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    :cond_0
    const-string v1, "Util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Throwables"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "cn":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 532
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private isSynthetic(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 549
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnknown(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 561
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 607
    invoke-static {p0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    const/4 v2, 0x0

    .line 609
    .local v2, "limit":I
    move-object v0, p1

    .local v0, "c":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_1

    .line 619
    .end local v0    # "c":Ljava/lang/Throwable;
    .end local v2    # "limit":I
    :cond_0
    return-object p0

    .line 610
    .restart local v0    # "c":Ljava/lang/Throwable;
    .restart local v2    # "limit":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 611
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 614
    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method private static replaceClassName(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "p"    # [Ljava/lang/Object;

    .prologue
    .line 632
    invoke-static {p0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 633
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 640
    :cond_0
    return-object p0

    .line 633
    :cond_1
    aget-object v1, p1, v2

    .line 634
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 635
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 636
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 633
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    .line 654
    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static simpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 666
    if-eqz p0, :cond_0

    .line 667
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 668
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 670
    .end local v0    # "index":I
    :cond_0
    return-object p0
.end method

.method private static simpleFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 681
    if-eqz p0, :cond_0

    .line 682
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 683
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 685
    .end local v0    # "index":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 10
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v4

    .line 211
    .local v4, "rb":Ljava/util/ResourceBundle;
    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 213
    .local v1, "l":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatThrown(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "thrown":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatError(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "err":Ljava/lang/String;
    const/16 v6, 0x10

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 217
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 218
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    .line 219
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatLoggerName(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    .line 220
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatLevel(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x4

    .line 221
    aput-object v2, v3, v6

    const/4 v6, 0x5

    .line 222
    aput-object v5, v3, v6

    const/4 v6, 0x6

    .line 223
    new-instance v7, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v7, p0, v2, v5}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/4 v6, 0x7

    .line 224
    new-instance v7, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v7, p0, v5, v2}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/16 v6, 0x8

    .line 225
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0x9

    .line 226
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatThreadID(Ljava/util/logging/LogRecord;)Ljava/lang/Number;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xa

    .line 227
    aput-object v0, v3, v6

    const/16 v6, 0xb

    .line 228
    new-instance v7, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v7, p0, v2, v0}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/16 v6, 0xc

    .line 229
    new-instance v7, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v7, p0, v0, v2}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/16 v6, 0xd

    .line 230
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xe

    .line 231
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xf

    .line 232
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 234
    .local v3, "params":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 235
    iget-object v6, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 237
    :goto_1
    return-object v6

    .line 211
    .end local v0    # "err":Ljava/lang/String;
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v5    # "thrown":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    goto/16 :goto_0

    .line 237
    .restart local v0    # "err":Ljava/lang/String;
    .restart local v1    # "l":Ljava/util/Locale;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/Object;
    .restart local v5    # "thrown":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 398
    const-string v3, ""

    .line 399
    .local v3, "site":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    .line 400
    .local v4, "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    .line 401
    invoke-virtual {p0, v4}, Lcom/sun/mail/util/logging/CompactFormatter;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 402
    .local v2, "root":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/CompactFormatter;->findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v3}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "limit":I
    move-object v0, v4

    .local v0, "c":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_1

    .line 419
    .end local v0    # "c":Ljava/lang/Throwable;
    .end local v1    # "limit":I
    .end local v2    # "root":Ljava/lang/Throwable;
    :cond_0
    return-object v3

    .line 406
    .restart local v0    # "c":Ljava/lang/Throwable;
    .restart local v1    # "limit":I
    .restart local v2    # "root":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/CompactFormatter;->findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v3}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    add-int/lit8 v1, v1, 0x1

    const/high16 v5, 0x10000

    if-eq v1, v5, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public formatError(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 367
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->formatToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public formatLevel(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatLoggerName(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 250
    invoke-super {p0, p1}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public formatSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "source":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    .line 294
    :cond_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatThreadID(Ljava/util/logging/LogRecord;)Ljava/lang/Number;
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public formatThrown(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    .line 344
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "site":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/CompactFormatter;->formatToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .end local v1    # "site":Ljava/lang/String;
    .local v0, "msg":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 346
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "site":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 348
    .end local v1    # "site":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method protected ignore(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isUnknown(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->defaultIgnore(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected toAlternate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 508
    if-eqz p1, :cond_0

    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
