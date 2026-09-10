.class public final Lcom/sun/mail/util/MailLogger;
.super Ljava/lang/Object;
.source "MailLogger.java"


# instance fields
.field private final debug:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final out:Ljava/io/PrintStream;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 2
    .param p2, "subname"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 132
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 136
    iput-object p3, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 137
    iput-boolean p4, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 138
    if-eqz p5, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljavax/mail/Session;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 112
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 116
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 117
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 118
    if-eqz p4, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/mail/Session;

    .line 151
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 97
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 98
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 99
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 100
    return-void
.end method

.method private debugOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void
.end method

.method private ifDebugOut(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 361
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private inferCaller()Ljava/lang/StackTraceElement;
    .locals 7

    .line 406
    const-class v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 408
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 409
    .local v2, "ix":I
    nop

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 418
    goto :goto_1

    .line 410
    :cond_0
    aget-object v3, v1, v2

    .line 411
    .local v3, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "cname":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 413
    nop

    .line 418
    .end local v3    # "frame":Ljava/lang/StackTraceElement;
    .end local v4    # "cname":Ljava/lang/String;
    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 429
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    .line 429
    const-string v6, "log"

    invoke-direct {v3, v4, v6, v0, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 419
    :cond_1
    aget-object v3, v1, v2

    .line 420
    .restart local v3    # "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 421
    .restart local v4    # "cname":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    return-object v3

    .line 425
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cname"    # Ljava/lang/String;

    .line 439
    const-class v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private packageOf(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 384
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 385
    .local v0, "p":Ljava/lang/Package;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "cname":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 389
    .local v2, "i":I
    if-lez v2, :cond_1

    .line 390
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 392
    :cond_1
    const-string v3, ""

    return-object v3
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 319
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 327
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 335
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 343
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/mail/util/MailLogger;"
        }
    .end annotation

    .line 192
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 4
    .param p1, "subname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-boolean v2, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v3, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 207
    invoke-direct {v0, v1, p2, v2, v3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p1, "subname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z

    .line 225
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 225
    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 353
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 235
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 238
    .local v0, "frame":Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .line 249
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 256
    .local v6, "frame":Ljava/lang/StackTraceElement;
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    .end local v6    # "frame":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .line 299
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_1

    .line 300
    if-eqz p3, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", THROW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 303
    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 308
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 310
    .local v0, "frame":Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 267
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 274
    .local v6, "frame":Ljava/lang/StackTraceElement;
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .end local v6    # "frame":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public varargs logf(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 287
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 290
    return-void
.end method
