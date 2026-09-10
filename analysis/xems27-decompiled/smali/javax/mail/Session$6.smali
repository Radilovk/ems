.class Ljavax/mail/Session$6;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .line 1261
    const/4 v0, 0x0

    .line 1263
    .local v0, "ret":[Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1264
    .local v1, "v":Ljava/util/Vector;
    iget-object v2, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1265
    .local v2, "e":Ljava/util/Enumeration;
    nop

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1266
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 1267
    .local v3, "url":Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 1268
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1270
    .end local v3    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1271
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/URL;

    move-object v0, v3

    .line 1272
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "v":Ljava/util/Vector;
    .end local v2    # "e":Ljava/util/Enumeration;
    goto :goto_2

    .line 1275
    :catch_0
    move-exception v1

    goto :goto_3

    .line 1274
    :catch_1
    move-exception v1

    :goto_2
    nop

    .line 1276
    :cond_3
    :goto_3
    return-object v0
.end method
