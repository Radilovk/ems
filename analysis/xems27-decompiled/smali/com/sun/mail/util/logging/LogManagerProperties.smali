.class final Lcom/sun/mail/util/logging/LogManagerProperties;
.super Ljava/util/Properties;
.source "LogManagerProperties.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_MANAGER:Ljava/lang/Object;

.field private static volatile REFLECT_NAMES:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x1f1604fcef521d6cL


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    nop

    .line 92
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->loadLogManager()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 726
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 727
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 730
    iput-object p2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    .line 731
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method static checkLogManagerAccess()V
    .locals 3

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "checked":Z
    sget-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 190
    .local v1, "m":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    instance-of v2, v1, Ljava/util/logging/LogManager;

    if-eqz v2, :cond_1

    .line 193
    const/4 v0, 0x1

    .line 194
    move-object v2, v1

    check-cast v2, Ljava/util/logging/LogManager;

    invoke-virtual {v2}, Ljava/util/logging/LogManager;->checkAccess()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    goto :goto_0

    .line 200
    :catch_1
    move-exception v2

    goto :goto_0

    .line 196
    :catch_2
    move-exception v2

    .line 197
    .local v2, "notAllowed":Ljava/lang/SecurityException;
    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    throw v2

    .line 205
    .end local v2    # "notAllowed":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 206
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLoggingAccess()V

    .line 208
    :cond_2
    return-void
.end method

.method private static checkLoggingAccess()V
    .locals 6

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "checked":Z
    const-string v1, "global"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 230
    .local v1, "global":Ljava/util/logging/Logger;
    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 231
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 237
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 239
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    .line 240
    new-instance v4, Ljava/util/logging/LoggingPermission;

    const-string v5, "control"

    invoke-direct {v4, v5, v2}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 243
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    return-void
.end method

.method private exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;

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
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 656
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    .line 657
    .local v0, "loaders":[Ljava/lang/ClassLoader;
    nop

    .line 659
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 661
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 663
    .local v1, "tryContext":Ljava/lang/ClassNotFoundException;
    aget-object v2, v0, v3

    invoke-static {p0, v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 665
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 666
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 668
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1
.end method

.method static fromLogManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 161
    sget-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 163
    .local v1, "m":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/util/Properties;

    if-eqz v2, :cond_0

    .line 164
    move-object v2, v1

    check-cast v2, Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    move-exception v2

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    .line 171
    :try_start_1
    instance-of v2, v1, Ljava/util/logging/LogManager;

    if-eqz v2, :cond_1

    .line 172
    move-object v2, v1

    check-cast v2, Ljava/util/logging/LogManager;

    invoke-virtual {v2, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 175
    :catch_1
    move-exception v2

    goto :goto_0

    .line 174
    :catch_2
    move-exception v2

    .line 178
    :cond_1
    :goto_0
    return-object v0

    .line 158
    .end local v1    # "m":Ljava/lang/Object;
    :cond_2
    throw v0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1

    .line 693
    new-instance v0, Lcom/sun/mail/util/logging/LogManagerProperties$1;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getLocalHost(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLocalHost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 276
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_0

    .line 278
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local p0    # "s":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 282
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1
.end method

.method static hasLogManager()Z
    .locals 2

    .line 253
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 254
    .local v0, "m":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isReflectionClass(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 505
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->reflectionClassNames()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 509
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    .line 515
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 516
    return v2

    .line 509
    :cond_1
    aget-object v4, v0, v3

    .line 510
    .local v4, "rf":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    const/4 v1, 0x1

    return v1

    .line 509
    .end local v4    # "rf":Ljava/lang/String;
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

    .line 470
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    .line 474
    .local v1, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v2

    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v2

    if-eqz v2, :cond_2

    .line 475
    const/4 v2, 0x1

    .line 476
    .local v2, "util":Z
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 483
    goto :goto_1

    .line 476
    :cond_0
    aget-object v6, v3, v5

    .line 477
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v1, :cond_1

    .line 478
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 479
    const/4 v2, 0x0

    .line 480
    goto :goto_1

    .line 476
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 484
    .end local v2    # "util":Z
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    .line 486
    .restart local v2    # "util":Z
    :goto_1
    return v2
.end method

.method private static loadLogManager()Ljava/lang/Object;
    .locals 2

    .line 103
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v0, "m":Ljava/lang/Object;
    goto :goto_0

    .line 106
    .end local v0    # "m":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "unexpected":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v1

    move-object v0, v1

    .local v1, "m":Ljava/lang/Object;
    goto :goto_0

    .line 104
    .end local v0    # "unexpected":Ljava/lang/RuntimeException;
    .end local v1    # "m":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "restricted":Ljava/lang/LinkageError;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    .line 109
    .local v0, "m":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method

.method static newComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    .line 359
    const-class v0, Ljava/util/logging/Formatter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 580
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "ITE":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v2

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v2

    .line 587
    .end local v1    # "ITE":Ljava/lang/reflect/InvocationTargetException;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    const-string v3, " cannot be cast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_1

    .line 597
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v0

    .line 598
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1

    .line 590
    .end local v0    # "EIIE":Ljava/lang/ExceptionInInitializerError;
    :catch_2
    move-exception v0

    .line 596
    .local v0, "NCDFE":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;
    .locals 2
    .param p0, "ite"    # Ljava/lang/reflect/InvocationTargetException;

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

    if-nez v1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 619
    :cond_1
    :goto_0
    return-object p0
.end method

.method private preWrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 944
    nop

    .line 945
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static readConfiguration()Ljava/util/Properties;
    .locals 5

    .line 128
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 130
    .local v0, "props":Ljava/util/Properties;
    :try_start_0
    const-string v1, "java.util.logging.config.file"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "n":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 132
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 133
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    nop

    .line 137
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 136
    .restart local v1    # "n":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 137
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 138
    nop

    .end local v0    # "props":Ljava/util/Properties;
    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    goto :goto_1

    .line 140
    :catch_2
    move-exception v1

    :goto_0
    nop

    .line 144
    :cond_0
    :goto_1
    return-object v0
.end method

.method private static reflectionClassNames()[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    const-class v0, Lcom/sun/mail/util/logging/LogManagerProperties;

    .line 530
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 532
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 533
    .local v1, "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 534
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v4, v6

    .line 535
    .local v7, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 536
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    nop

    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 542
    :cond_1
    :goto_1
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "fillInStackTrace"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-lt v3, v5, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, v4, v3

    .line 544
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 545
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    nop

    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 550
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 551
    .end local v1    # "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 552
    .local v1, "ITE":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v2

    throw v2
.end method

.method static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 402
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-eqz p0, :cond_2

    .line 406
    const/4 v0, 0x0

    .line 413
    .local v0, "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reversed"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 414
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    const-class v2, Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 417
    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 418
    goto :goto_0

    :catch_0
    move-exception v2

    .line 419
    .local v2, "eiie":Ljava/lang/ExceptionInInitializerError;
    :try_start_2
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v3

    .end local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .end local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    throw v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 425
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "eiie":Ljava/lang/ExceptionInInitializerError;
    .restart local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .restart local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :catch_1
    move-exception v1

    .line 426
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    goto :goto_0

    .line 424
    .end local v1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    goto :goto_0

    .line 423
    :catch_3
    move-exception v1

    goto :goto_0

    .line 422
    :catch_4
    move-exception v1

    .line 429
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 430
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 432
    :cond_1
    return-object v0

    .line 403
    .end local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    .line 298
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "v":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 302
    .local v3, "b":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 303
    .local v4, "count":I
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2d

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    :cond_0
    aput-char v7, v3, v4

    .line 306
    add-int/lit8 v4, v4, 0x1

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 311
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    :cond_2
    aput-char v7, v3, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    .line 314
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 317
    :cond_3
    invoke-static {v3, v5, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 680
    if-eqz p1, :cond_0

    .line 681
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 683
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;
    .locals 1
    .param p0, "eiie"    # Ljava/lang/ExceptionInInitializerError;

    .line 634
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 635
    :cond_0
    throw p0
.end method

.method private declared-synchronized writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    monitor-enter p0

    .line 971
    nop

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 970
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 744
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 866
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 867
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    const/4 v0, 0x0

    .line 868
    .local v0, "found":Z
    :goto_0
    if-nez v0, :cond_2

    .line 869
    iget-object v3, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v3, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    move v0, v1

    .line 871
    :cond_2
    monitor-exit p0

    return v0

    .line 865
    .end local v0    # "found":Z
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 910
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 911
    return v0

    .line 913
    :cond_0
    if-ne p1, p0, :cond_1

    .line 914
    const/4 v0, 0x1

    return v0

    .line 916
    :cond_1
    instance-of v1, p1, Ljava/util/Properties;

    if-nez v1, :cond_2

    .line 917
    return v0

    .line 919
    :cond_2
    nop

    .line 920
    invoke-super {p0, p1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 809
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 810
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 812
    .end local v0    # "value":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    const/4 v0, 0x0

    .line 816
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 817
    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 818
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 819
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 822
    :cond_1
    monitor-exit p0

    return-object v0

    .line 808
    .end local v0    # "value":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 762
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    if-nez v0, :cond_1

    .line 763
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 772
    :cond_1
    if-eqz v0, :cond_2

    .line 773
    invoke-super {p0, p1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    goto :goto_1

    .line 775
    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 776
    .local v1, "v":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 779
    .end local v1    # "v":Ljava/lang/Object;
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    .line 755
    .end local v0    # "value":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 793
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 930
    nop

    .line 931
    invoke-super {p0}, Ljava/util/Properties;->hashCode()I

    move-result v0

    return v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .line 897
    nop

    .line 898
    invoke-super {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 835
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 836
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit p0

    return-object v2

    .line 840
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 834
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 884
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit p0

    return-object v2

    .line 883
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
