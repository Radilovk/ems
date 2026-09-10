.class public final Ljavax/mail/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static defaultSession:Ljavax/mail/Session;


# instance fields
.field private final addressMap:Ljava/util/Properties;

.field private final authTable:Ljava/util/Hashtable;

.field private final authenticator:Ljavax/mail/Authenticator;

.field private debug:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private out:Ljava/io/PrintStream;

.field private final props:Ljava/util/Properties;

.field private final providers:Ljava/util/Vector;

.field private final providersByClassName:Ljava/util/Hashtable;

.field private final providersByProtocol:Ljava/util/Hashtable;

.field private final q:Ljavax/mail/EventQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V
    .locals 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    .line 191
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    .line 192
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    .line 193
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    .line 194
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    .line 204
    iput-object p1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    .line 205
    iput-object p2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    .line 207
    const-string v1, "mail.debug"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/Session;->debug:Z

    .line 210
    :cond_0
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 211
    iget-object v1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v3, "JavaMail version {0}"

    const-string v4, "1.5.4"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    if-eqz p2, :cond_1

    .line 216
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "cl":Ljava/lang/Class;
    :goto_0
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V

    .line 221
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadAddressMap(Ljava/lang/Class;)V

    .line 222
    new-instance v2, Ljavax/mail/EventQueue;

    const-string v1, "mail.event.executor"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v1}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    .line 223
    return-void

    .line 218
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "cl":Ljava/lang/Class;
    goto :goto_0
.end method

.method static synthetic access$0(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-direct {p0, p1}, Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$1(Ljavax/mail/Session;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    return-object v0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Ljavax/mail/Session$3;

    invoke-direct {v0}, Ljavax/mail/Session$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 1207
    return-object v0
.end method

.method public static getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .locals 4
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 317
    const-class v2, Ljavax/mail/Session;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    if-nez v1, :cond_2

    .line 318
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 319
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 321
    :cond_0
    new-instance v1, Ljavax/mail/Session;

    invoke-direct {v1, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    sput-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    .line 336
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_1
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 324
    :cond_2
    :try_start_1
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v1, v1, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eq v1, p1, :cond_1

    .line 326
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v1, v1, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v1, :cond_3

    .line 327
    if-eqz p1, :cond_3

    .line 328
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    iget-object v1, v1, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 328
    if-eq v1, v3, :cond_1

    .line 333
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Access to default session denied"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 264
    new-instance v0, Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    .prologue
    .line 247
    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    :try_start_0
    new-instance v1, Ljavax/mail/Session$4;

    invoke-direct {v1, p0, p1}, Ljavax/mail/Session$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    return-object v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1235
    new-instance v0, Ljavax/mail/Session$5;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$5;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 1234
    return-object v0
.end method

.method private getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;
    .locals 18
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavax/mail/Service;",
            ">(",
            "Ljavax/mail/Provider;",
            "Ljavax/mail/URLName;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 757
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 758
    new-instance v2, Ljavax/mail/NoSuchProviderException;

    const-string v3, "null"

    invoke-direct {v2, v3}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_0
    if-nez p2, :cond_1

    .line 763
    new-instance p2, Ljavax/mail/URLName;

    .end local p2    # "url":Ljavax/mail/URLName;
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 764
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    .line 763
    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .restart local p2    # "url":Ljavax/mail/URLName;
    :cond_1
    const/16 v16, 0x0

    .line 771
    .local v16, "service":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v2, :cond_5

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 777
    .local v11, "cl":Ljava/lang/ClassLoader;
    :goto_0
    const/16 v17, 0x0

    .line 780
    .local v17, "serviceClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 781
    .local v10, "ccl":Ljava/lang/ClassLoader;
    if-eqz v10, :cond_2

    .line 784
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 788
    :cond_2
    :goto_1
    if-eqz v17, :cond_3

    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 790
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v17

    .line 792
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 793
    new-instance v2, Ljava/lang/ClassCastException;

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    .end local v10    # "ccl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v14

    .line 800
    .local v14, "ex1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 801
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 802
    new-instance v2, Ljava/lang/ClassCastException;

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 804
    :catch_1
    move-exception v13

    .line 806
    .local v13, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Exception loading provider"

    invoke-virtual {v2, v3, v4, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    new-instance v2, Ljavax/mail/NoSuchProviderException;

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    .end local v11    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v14    # "ex1":Ljava/lang/Exception;
    .end local v17    # "serviceClass":Ljava/lang/Class;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .restart local v11    # "cl":Ljava/lang/ClassLoader;
    goto/16 :goto_0

    .line 813
    .restart local v17    # "serviceClass":Ljava/lang/Class;
    :cond_6
    const/4 v2, 0x2

    :try_start_4
    new-array v9, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/mail/Session;

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-class v3, Ljavax/mail/URLName;

    aput-object v3, v9, v2

    .line 814
    .local v9, "c":[Ljava/lang/Class;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 816
    .local v12, "cons":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v15, v2

    const/4 v2, 0x1

    aput-object p2, v15, v2

    .line 817
    .local v15, "o":[Ljava/lang/Object;
    invoke-virtual {v12, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v16

    .line 824
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Service;

    return-object v2

    .line 819
    .end local v9    # "c":[Ljava/lang/Class;
    .end local v12    # "cons":Ljava/lang/reflect/Constructor;
    .end local v15    # "o":[Ljava/lang/Object;
    :catch_2
    move-exception v13

    .line 820
    .restart local v13    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Exception loading provider"

    invoke-virtual {v2, v3, v4, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    new-instance v2, Ljavax/mail/NoSuchProviderException;

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v10    # "ccl":Ljava/lang/ClassLoader;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 587
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-eq v0, v1, :cond_1

    .line 588
    :cond_0
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    const-class v0, Ljavax/mail/Store;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object v0

    check-cast v0, Ljavax/mail/Store;

    return-object v0
.end method

.method private static getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1259
    new-instance v0, Ljavax/mail/Session$6;

    invoke-direct {v0, p0}, Ljavax/mail/Session$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    .line 1258
    return-object v0
.end method

.method private getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-eq v0, v1, :cond_1

    .line 734
    :cond_0
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    const-class v0, Ljavax/mail/Transport;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object v0

    check-cast v0, Ljavax/mail/Transport;

    return-object v0
.end method

.method private final declared-synchronized initLogger()V
    .locals 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG"

    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAddressMap(Ljava/lang/Class;)V
    .locals 6
    .param p1, "cl"    # Ljava/lang/Class;

    .prologue
    .line 1041
    new-instance v0, Ljavax/mail/Session$2;

    invoke-direct {v0, p0}, Ljavax/mail/Session$2;-><init>(Ljavax/mail/Session;)V

    .line 1048
    .local v0, "loader":Ljavax/mail/StreamLoader;
    const-string v3, "/META-INF/javamail.default.address.map"

    invoke-direct {p0, v3, p1, v0}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1051
    const-string v3, "META-INF/javamail.address.map"

    invoke-direct {p0, v3, p1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1055
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "java.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1057
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "javamail.address.map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1055
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "res":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    .end local v1    # "res":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "failed to load address map, using defaults"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1065
    iget-object v3, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v4, "rfc822"

    const-string v5, "smtp"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_0
    return-void

    .line 1059
    :catch_0
    move-exception v2

    .line 1060
    .local v2, "sex":Ljava/lang/SecurityException;
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "can\'t get java.home"

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1145
    const/4 v0, 0x0

    .line 1148
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 1150
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1151
    if-nez v1, :cond_0

    .line 1152
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1153
    :cond_0
    if-eqz v1, :cond_3

    .line 1154
    invoke-static {v1, p1}, Ljavax/mail/Session;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    .line 1157
    .local v8, "urls":[Ljava/net/URL;
    :goto_0
    if-eqz v8, :cond_1

    .line 1158
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-lt v4, v9, :cond_4

    .line 1194
    .end local v4    # "i":I
    .end local v8    # "urls":[Ljava/net/URL;
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 1198
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p2, p3}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1200
    :cond_2
    return-void

    .line 1156
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v8

    .restart local v8    # "urls":[Ljava/net/URL;
    goto :goto_0

    .line 1159
    .restart local v4    # "i":I
    :cond_4
    aget-object v7, v8, v4

    .line 1160
    .local v7, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 1161
    .local v2, "clis":Ljava/io/InputStream;
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v11, "URL {0}"

    invoke-virtual {v9, v10, v11, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1163
    :try_start_2
    invoke-static {v7}, Ljavax/mail/Session;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 1164
    if-eqz v2, :cond_6

    .line 1165
    invoke-interface {p3, v2}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1166
    const/4 v0, 0x1

    .line 1167
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 1168
    const-string v11, "successfully loaded resource: {0}"

    .line 1167
    invoke-virtual {v9, v10, v11, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    :goto_3
    if-eqz v2, :cond_5

    .line 1184
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1158
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1170
    :cond_6
    :try_start_4
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 1171
    const-string v11, "not loading resource: {0}"

    .line 1170
    invoke-virtual {v9, v10, v11, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1173
    :catch_0
    move-exception v9

    .line 1183
    if-eqz v2, :cond_5

    .line 1184
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 1185
    :catch_1
    move-exception v9

    goto :goto_4

    .line 1175
    :catch_2
    move-exception v5

    .line 1176
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_6
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v11, "Exception loading resource"

    invoke-virtual {v9, v10, v11, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1183
    if-eqz v2, :cond_5

    .line 1184
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    .line 1185
    :catch_3
    move-exception v9

    goto :goto_4

    .line 1178
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 1179
    .local v6, "sex":Ljava/lang/SecurityException;
    :try_start_8
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v11, "Exception loading resource"

    invoke-virtual {v9, v10, v11, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1183
    if-eqz v2, :cond_5

    .line 1184
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    .line 1185
    :catch_5
    move-exception v9

    goto :goto_4

    .line 1181
    .end local v6    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v9

    .line 1183
    if-eqz v2, :cond_7

    .line 1184
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1186
    :cond_7
    :goto_5
    :try_start_b
    throw v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1189
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urls":[Ljava/net/URL;
    :catch_6
    move-exception v3

    .line 1190
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v9, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v11, "Exception loading resource"

    invoke-virtual {v9, v10, v11, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1185
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urls":[Ljava/net/URL;
    :catch_7
    move-exception v10

    goto :goto_5

    :catch_8
    move-exception v9

    goto :goto_4
.end method

.method private loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1094
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    .end local v0    # "clis":Ljava/io/InputStream;
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {p2, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1096
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v6, "successfully loaded file: {0}"

    invoke-virtual {v4, v5, v6, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1107
    if-eqz v1, :cond_4

    .line 1108
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v0, v1

    .line 1111
    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v4

    .line 1107
    :goto_1
    if-eqz v0, :cond_0

    .line 1108
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1109
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1099
    :catch_2
    move-exception v2

    .line 1100
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "not loading file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1107
    :cond_1
    if-eqz v0, :cond_0

    .line 1108
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1109
    :catch_3
    move-exception v4

    goto :goto_0

    .line 1102
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 1103
    .local v3, "sex":Ljava/lang/SecurityException;
    :goto_3
    :try_start_6
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1104
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "not loading file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1107
    :cond_2
    if-eqz v0, :cond_0

    .line 1108
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 1109
    :catch_5
    move-exception v4

    goto :goto_0

    .line 1105
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    .line 1107
    :goto_4
    if-eqz v0, :cond_3

    .line 1108
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1110
    :cond_3
    :goto_5
    throw v4

    .line 1109
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_0

    :catch_7
    move-exception v5

    goto :goto_5

    .line 1105
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_4

    .line 1102
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_3

    .line 1099
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_2

    .line 1097
    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :catch_a
    move-exception v4

    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_1

    .end local v0    # "clis":Ljava/io/InputStream;
    .restart local v1    # "clis":Ljava/io/InputStream;
    :cond_4
    move-object v0, v1

    .end local v1    # "clis":Ljava/io/InputStream;
    .restart local v0    # "clis":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private loadProviders(Ljava/lang/Class;)V
    .locals 9
    .param p1, "cl"    # Ljava/lang/Class;

    .prologue
    .line 913
    new-instance v6, Ljavax/mail/Session$1;

    invoke-direct {v6, p0}, Ljavax/mail/Session$1;-><init>(Ljavax/mail/Session;)V

    .line 921
    .local v6, "loader":Ljavax/mail/StreamLoader;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 923
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "javamail.providers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, "res":Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    .end local v7    # "res":Ljava/lang/String;
    :goto_0
    const-string v0, "META-INF/javamail.providers"

    invoke-direct {p0, v0, p1, v6}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 933
    const-string v0, "/META-INF/javamail.default.providers"

    invoke-direct {p0, v0, p1, v6}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 935
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "failed to load any providers, using defaults"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 938
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 939
    const-string v2, "imap"

    const-string v3, "com.sun.mail.imap.IMAPStore"

    .line 940
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 941
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 942
    const-string v2, "imaps"

    const-string v3, "com.sun.mail.imap.IMAPSSLStore"

    .line 943
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 944
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 945
    const-string v2, "pop3"

    const-string v3, "com.sun.mail.pop3.POP3Store"

    .line 946
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 947
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 948
    const-string v2, "pop3s"

    const-string v3, "com.sun.mail.pop3.POP3SSLStore"

    .line 949
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 950
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 951
    const-string v2, "smtp"

    const-string v3, "com.sun.mail.smtp.SMTPTransport"

    .line 952
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 953
    new-instance v0, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 954
    const-string v2, "smtps"

    const-string v3, "com.sun.mail.smtp.SMTPSSLTransport"

    .line 955
    const-string v4, "Oracle"

    const-string v5, "1.5.4"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 958
    :cond_0
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Tables of loaded providers"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Providers Listed By Class Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Providers Listed By Protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 966
    :cond_1
    return-void

    .line 925
    :catch_0
    move-exception v8

    .line 926
    .local v8, "sex":Ljava/lang/SecurityException;
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v2, "can\'t get java.home"

    invoke-virtual {v0, v1, v2, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private loadProvidersFromStream(Ljava/io/InputStream;)V
    .locals 16
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    if-eqz p1, :cond_1

    .line 971
    new-instance v9, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 975
    .local v9, "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "currLine":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1023
    .end local v7    # "currLine":Ljava/lang/String;
    .end local v9    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_1
    return-void

    .line 977
    .restart local v7    # "currLine":Ljava/lang/String;
    .restart local v9    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_2
    const-string v13, "#"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 979
    const/4 v2, 0x0

    .line 980
    .local v2, "type":Ljavax/mail/Provider$Type;
    const/4 v3, 0x0

    .local v3, "protocol":Ljava/lang/String;
    const/4 v4, 0x0

    .line 981
    .local v4, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "vendor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 984
    .local v6, "version":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v7, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .local v12, "tuples":Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_5

    .line 1009
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1010
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_b

    .line 1012
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v15, "Bad provider entry: {0}"

    invoke-virtual {v13, v14, v15, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 986
    :cond_5
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 989
    .local v8, "currTuple":Ljava/lang/String;
    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 990
    .local v10, "sep":I
    const-string v13, "protocol="

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 991
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 992
    goto :goto_1

    :cond_6
    const-string/jumbo v13, "type="

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 993
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 994
    .local v11, "strType":Ljava/lang/String;
    const-string v13, "store"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 995
    sget-object v2, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 996
    goto :goto_1

    :cond_7
    const-string/jumbo v13, "transport"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 997
    sget-object v2, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 999
    goto :goto_1

    .end local v11    # "strType":Ljava/lang/String;
    :cond_8
    const-string v13, "class="

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1000
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1001
    goto :goto_1

    :cond_9
    const-string/jumbo v13, "vendor="

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1002
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1003
    goto/16 :goto_1

    :cond_a
    const-string/jumbo v13, "version="

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1004
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1016
    .end local v8    # "currTuple":Ljava/lang/String;
    .end local v10    # "sep":I
    :cond_b
    new-instance v1, Ljavax/mail/Provider;

    invoke-direct/range {v1 .. v6}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .local v1, "provider":Ljavax/mail/Provider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    goto/16 :goto_0
.end method

.method private loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1119
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2, p1}, Ljavax/mail/Session;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_0

    .line 1121
    invoke-interface {p3, v0}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1122
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "successfully loaded resource: {0}"

    invoke-virtual {v3, v4, v5, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :cond_0
    if-eqz v0, :cond_1

    .line 1136
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1139
    :cond_1
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "Exception loading resource"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1137
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1131
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1132
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_4
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "Exception loading resource"

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1137
    :catch_3
    move-exception v3

    goto :goto_0

    .line 1133
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v3

    .line 1135
    if-eqz v0, :cond_2

    .line 1136
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1138
    :cond_2
    :goto_1
    throw v3

    .line 1137
    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v3

    goto :goto_0
.end method

.method private static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1284
    :try_start_0
    new-instance v1, Ljavax/mail/Session$7;

    invoke-direct {v1, p0}, Ljavax/mail/Session$7;-><init>(Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    return-object v1

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method


# virtual methods
.method public declared-synchronized addProvider(Ljavax/mail/Provider;)V
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :cond_0
    monitor-exit p0

    return-void

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebug()Z
    .locals 1

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugOut()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 419
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventQueue()Ljavax/mail/EventQueue;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    .line 622
    .local v0, "store":Ljavax/mail/Store;
    invoke-virtual {v0}, Ljavax/mail/Store;->connect()V

    .line 623
    invoke-virtual {v0, p1}, Ljavax/mail/Store;->getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method public getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
    .locals 1
    .param p1, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 854
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/PasswordAuthentication;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 906
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Ljavax/mail/Provider;
    .locals 7
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 454
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 455
    :cond_0
    new-instance v4, Ljavax/mail/NoSuchProviderException;

    const-string v5, "Invalid protocol: null"

    invoke-direct {v4, v5}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 458
    :cond_1
    const/4 v1, 0x0

    .line 461
    .local v1, "_provider":Ljavax/mail/Provider;
    :try_start_1
    iget-object v4, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "_className":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 463
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 465
    const-string v6, ".class property exists and points to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 466
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 468
    :cond_2
    iget-object v4, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    check-cast v1, Ljavax/mail/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    :cond_3
    if-eqz v1, :cond_4

    move-object v2, v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    .local v2, "_provider":Ljavax/mail/Provider;
    move-object v3, v1

    .line 484
    .end local v2    # "_provider":Ljavax/mail/Provider;
    .local v3, "_provider":Ljavax/mail/Provider;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 475
    .end local v3    # "_provider":Ljavax/mail/Provider;
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    check-cast v1, Ljavax/mail/Provider;

    .line 478
    .restart local v1    # "_provider":Ljavax/mail/Provider;
    if-nez v1, :cond_5

    .line 479
    new-instance v4, Ljavax/mail/NoSuchProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No provider for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :cond_5
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 482
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getProvider() returning "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/Provider;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v2, v1

    .end local v1    # "_provider":Ljavax/mail/Provider;
    .restart local v2    # "_provider":Ljavax/mail/Provider;
    move-object v3, v1

    .line 484
    .end local v2    # "_provider":Ljavax/mail/Provider;
    .restart local v3    # "_provider":Ljavax/mail/Provider;
    goto :goto_0
.end method

.method public declared-synchronized getProviders()[Ljavax/mail/Provider;
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljavax/mail/Provider;

    .line 433
    .local v0, "_providers":[Ljavax/mail/Provider;
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-object v0

    .line 432
    .end local v0    # "_providers":[Ljavax/mail/Provider;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getStore()Ljavax/mail/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 519
    const-string v0, "mail.store.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljava/lang/String;)Ljavax/mail/Store;
    .locals 7
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 533
    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/Provider;)Ljavax/mail/Store;
    .locals 1
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;
    .locals 3
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 554
    .local v0, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v2

    return-object v2
.end method

.method public getTransport()Ljavax/mail/Transport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 636
    const-string v1, "mail.transport.protocol"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "prot":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    .line 643
    :goto_0
    return-object v1

    .line 640
    :cond_0
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v2, "rfc822"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "prot":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 641
    .restart local v0    # "prot":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    goto :goto_0

    .line 643
    :cond_1
    const-string v1, "smtp"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    goto :goto_0
.end method

.method public getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
    .locals 7
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 658
    new-instance v0, Ljavax/mail/URLName;

    const/4 v3, -0x1

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;
    .locals 4
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail.transport.protocol."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "transportProtocol":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    .line 715
    :goto_0
    return-object v1

    .line 713
    :cond_0
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "transportProtocol":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 714
    .restart local v0    # "transportProtocol":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    goto :goto_0

    .line 716
    :cond_1
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No provider for Address type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransport(Ljavax/mail/Provider;)Ljavax/mail/Transport;
    .locals 1
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .locals 3
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 678
    .local v0, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v2

    return-object v2
.end method

.method public requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .locals 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "defaultUserName"    # Ljava/lang/String;

    .prologue
    .line 881
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setDebug(Z)V
    .locals 4
    .param p1, "debug"    # Z

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Session;->debug:Z

    .line 381
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 382
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v2, "setDebug: JavaMail version {0}"

    .line 383
    const-string v3, "1.5.4"

    .line 382
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugOut(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    .line 407
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
    .locals 1
    .param p1, "url"    # Ljavax/mail/URLName;
    .param p2, "pw"    # Ljavax/mail/PasswordAuthentication;

    .prologue
    .line 840
    if-nez p2, :cond_0

    .line 841
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "addresstype"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1082
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1083
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :goto_0
    monitor-exit p0

    return-void

    .line 1085
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProvider(Ljavax/mail/Provider;)V
    .locals 3
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 499
    monitor-enter p0

    if-nez p1, :cond_0

    .line 500
    :try_start_0
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Can\'t set null provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    monitor-exit p0

    return-void
.end method
