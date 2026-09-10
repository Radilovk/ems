.class final Lcom/sun/mail/util/logging/LogManagerProperties;
.super Ljava/util/Properties;
.source "LogManagerProperties.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_MANAGER:Ljava/lang/Object;

.field private static volatile REFLECT_NAMES:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x1f1604fcef521d6cL


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/sun/mail/util/logging/LogManagerProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    .line 92
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->loadLogManager()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 727
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 730
    :cond_1
    iput-object p2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    .line 731
    return-void
.end method

.method static checkLogManagerAccess()V
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "checked":Z
    sget-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 190
    .local v1, "m":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    instance-of v3, v1, Ljava/util/logging/LogManager;

    if-eqz v3, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 194
    check-cast v1, Ljava/util/logging/LogManager;

    .end local v1    # "m":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/logging/LogManager;->checkAccess()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 206
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLoggingAccess()V

    .line 208
    :cond_1
    return-void

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "notAllowed":Ljava/lang/SecurityException;
    if-eqz v0, :cond_0

    .line 198
    throw v2

    .line 201
    .end local v2    # "notAllowed":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 200
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private static checkLoggingAccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "checked":Z
    const-string v3, "global"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 230
    .local v1, "global":Ljava/util/logging/Logger;
    :try_start_0
    const-class v3, Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v0, 0x1

    .line 237
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 239
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    .line 240
    new-instance v3, Ljava/util/logging/LoggingPermission;

    const-string v4, "control"

    invoke-direct {v3, v4, v5}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 243
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    return-void

    .line 234
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;

    .prologue
    .line 956
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 957
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 958
    .local v0, "child":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 959
    return-object v0
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 656
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 657
    .local v1, "loaders":[Ljava/lang/ClassLoader;
    sget-boolean v3, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 659
    :cond_0
    aget-object v3, v1, v5

    if-eqz v3, :cond_1

    .line 661
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {p0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 668
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 662
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 663
    .local v2, "tryContext":Ljava/lang/ClassNotFoundException;
    aget-object v3, v1, v6

    invoke-static {p0, v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 665
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 666
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "tryContext":Ljava/lang/ClassNotFoundException;
    :cond_1
    aget-object v3, v1, v6

    invoke-static {p0, v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method static fromLogManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 161
    :cond_0
    sget-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 163
    .local v1, "m":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/util/Properties;

    if-eqz v2, :cond_1

    .line 164
    move-object v0, v1

    check-cast v0, Ljava/util/Properties;

    move-object v2, v0

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    .end local v1    # "m":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 166
    .restart local v1    # "m":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 169
    :cond_1
    if-eqz v1, :cond_2

    .line 171
    :try_start_1
    instance-of v2, v1, Ljava/util/logging/LogManager;

    if-eqz v2, :cond_2

    .line 172
    check-cast v1, Ljava/util/logging/LogManager;

    .end local v1    # "m":Ljava/lang/Object;
    invoke-virtual {v1, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 175
    :catch_1
    move-exception v2

    .line 178
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 693
    new-instance v0, Lcom/sun/mail/util/logging/LogManagerProperties$1;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getLocalHost(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getLocalHost"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 276
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 278
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 280
    :cond_0
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v3

    throw v3

    .line 284
    .end local v0    # "EIIE":Ljava/lang/ExceptionInInitializerError;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v3

    throw v3
.end method

.method static hasLogManager()Z
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 254
    .local v0, "m":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isReflectionClass(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 504
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 505
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->reflectionClassNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 509
    :cond_0
    array-length v4, v0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 515
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 516
    :goto_1
    return v2

    .line 509
    :cond_1
    aget-object v1, v0, v3

    .line 510
    .local v1, "rf":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    const/4 v2, 0x1

    goto :goto_1

    .line 509
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static isStaticUtilityClass(Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Object;

    .line 474
    .local v3, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v2

    if-eqz v5, :cond_2

    .line 475
    const/4 v4, 0x1

    .line 476
    .local v4, "util":Z
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 486
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :goto_1
    return v4

    .line 476
    .restart local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    aget-object v1, v2, v5

    .line 477
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v3, :cond_1

    .line 478
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 479
    const/4 v4, 0x0

    .line 480
    goto :goto_1

    .line 476
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    .end local v4    # "util":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "util":Z
    goto :goto_1
.end method

.method private static loadLogManager()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 109
    .local v0, "m":Ljava/util/Properties;
    .local v2, "unexpected":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 104
    .end local v0    # "m":Ljava/util/Properties;
    .end local v2    # "unexpected":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "restricted":Ljava/lang/LinkageError;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    .restart local v0    # "m":Ljava/util/Properties;
    goto :goto_0

    .line 106
    .end local v0    # "m":Ljava/util/Properties;
    .end local v1    # "restricted":Ljava/lang/LinkageError;
    :catch_1
    move-exception v2

    .line 107
    .restart local v2    # "unexpected":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    .restart local v0    # "m":Ljava/util/Properties;
    goto :goto_0
.end method

.method static newComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    const-class v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method static newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 453
    const-class v0, Ljava/util/logging/ErrorManager;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method static newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    const-class v0, Ljava/util/logging/Filter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Filter;

    return-object v0
.end method

.method static newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    const-class v0, Ljava/util/logging/Formatter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 580
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    return-object v4

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "ITE":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v4

    throw v4
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2

    .line 590
    .end local v1    # "ITE":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 596
    .local v2, "NCDFE":Ljava/lang/NoClassDefFoundError;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 587
    .end local v2    # "NCDFE":Ljava/lang/NoClassDefFoundError;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    const-string v6, " cannot be cast to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v0

    .line 598
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v4

    throw v4
.end method

.method private static paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;
    .locals 2
    .param p0, "ite"    # Ljava/lang/reflect/InvocationTargetException;

    .prologue
    .line 612
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 613
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 614
    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    if-nez v1, :cond_0

    .line 615
    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 619
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    return-object p0
.end method

.method private preWrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 944
    sget-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 945
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static readConfiguration()Ljava/util/Properties;
    .locals 5

    .prologue
    .line 128
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 130
    .local v3, "props":Ljava/util/Properties;
    :try_start_0
    const-string v4, "java.util.logging.config.file"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "n":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 132
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 144
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "n":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 136
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "n":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 137
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "n":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 142
    :catch_1
    move-exception v4

    goto :goto_0

    .line 141
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private static reflectionClassNames()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 529
    const-class v3, Lcom/sun/mail/util/logging/LogManagerProperties;

    .line 530
    .local v3, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v6, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 532
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 533
    .local v4, "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 534
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_3

    .line 542
    :cond_1
    const-class v6, Ljava/lang/Throwable;

    const-string v7, "fillInStackTrace"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-lt v5, v7, :cond_4

    .line 550
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 534
    :cond_3
    aget-object v1, v7, v6

    .line 535
    .local v1, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 536
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "ste":Ljava/lang/StackTraceElement;
    :cond_4
    aget-object v1, v6, v5

    .line 544
    .restart local v1    # "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 545
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 551
    .end local v1    # "ste":Ljava/lang/StackTraceElement;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v4    # "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ITE":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v5

    throw v5
.end method

.method static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_0

    .line 403
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 406
    :cond_0
    const/4 v4, 0x0

    .line 413
    .local v4, "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "reversed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 414
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 415
    const-class v5, Ljava/util/Comparator;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Comparator;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 429
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 430
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    .line 432
    :cond_2
    return-object v4

    .line 418
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "eiie":Ljava/lang/ExceptionInInitializerError;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v5

    throw v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 422
    .end local v1    # "eiie":Ljava/lang/ExceptionInInitializerError;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 425
    :catch_2
    move-exception v2

    .line 426
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    goto :goto_0

    .line 424
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    goto :goto_0

    .line 423
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v8, 0x2d

    const/4 v7, 0x0

    .line 298
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "l":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 302
    .local v0, "b":[C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 303
    .local v2, "count":I
    invoke-virtual {v3, v7, v2, v0, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    :cond_0
    aput-char v8, v0, v2

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v7, v5, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 311
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    :cond_2
    aput-char v8, v0, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    .line 314
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 317
    :cond_3
    invoke-static {v0, v7, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "l"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 681
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private static wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;
    .locals 1
    .param p0, "eiie"    # Ljava/lang/ExceptionInInitializerError;

    .prologue
    .line 634
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 635
    throw p0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 972
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 866
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 867
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move v1, v4

    .line 868
    .local v1, "found":Z
    :goto_0
    if-nez v1, :cond_0

    .line 869
    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    .line 871
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .end local v1    # "found":Z
    :cond_1
    move v1, v3

    .line 866
    goto :goto_0

    .restart local v1    # "found":Z
    :cond_2
    move v1, v4

    .line 869
    goto :goto_1

    .line 866
    .end local v1    # "found":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 910
    if-nez p1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return v0

    .line 913
    :cond_1
    if-ne p1, p0, :cond_2

    .line 914
    const/4 v0, 0x1

    goto :goto_0

    .line 916
    :cond_2
    instance-of v1, p1, Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 919
    sget-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 920
    :cond_3
    invoke-super {p0, p1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 810
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    :goto_0
    if-nez v1, :cond_0

    .line 817
    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 818
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 822
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 812
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 809
    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    :cond_0
    if-nez v1, :cond_1

    .line 763
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_1
    if-eqz v1, :cond_3

    .line 773
    invoke-super {p0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 775
    :cond_3
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "v":Ljava/lang/Object;
    move-object v1, v0

    :goto_1
    goto :goto_0

    .restart local v0    # "v":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 756
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 930
    sget-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 931
    :cond_0
    invoke-super {p0}, Ljava/util/Properties;->hashCode()I

    move-result v0

    return v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 897
    sget-boolean v0, Lcom/sun/mail/util/logging/LogManagerProperties;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 898
    :cond_0
    invoke-super {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 836
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 838
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 840
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "def":Ljava/lang/Object;
    .restart local v1    # "man":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 838
    goto :goto_0

    .line 840
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 886
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    .end local v0    # "def":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "def":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 884
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
