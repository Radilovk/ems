.class public final Lcom/isaigu/gymapp/wearable/XemsAccess;
.super Ljava/lang/Object;
.source "XemsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/XemsAccess$Step;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final MAX_POLLS:I = 0x258

.field private static final POLL_MS:J = 0x2bcL

.field static final REQUEST:I = 0x5753

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 22
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static missingRuntime(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1f

    .line 46
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2f

    .line 50
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_38

    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 59
    :cond_4e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static start(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 33
    if-eqz p0, :cond_c

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    if-nez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_d

    .line 38
    :cond_c
    :goto_c
    return-void

    .line 36
    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method
