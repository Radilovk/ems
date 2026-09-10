.class Landroid/support/transition/ViewGroupUtilsApi18;
.super Landroid/support/transition/ViewGroupUtilsApi14;
.source "ViewGroupUtilsApi18.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi18"

.field private static sSuppressLayoutMethod:Ljava/lang/reflect/Method;

.field private static sSuppressLayoutMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewGroupUtilsApi14;-><init>()V

    return-void
.end method

.method private fetchSuppressLayoutMethod()V
    .locals 6

    .line 55
    sget-boolean v0, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ViewUtilsApi18"

    const-string v3, "Failed to retrieve suppressLayout method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v0, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .locals 1
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 37
    new-instance v0, Landroid/support/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p1}, Landroid/support/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "suppress"    # Z

    .line 42
    const-string v0, "ViewUtilsApi18"

    invoke-direct {p0}, Landroid/support/transition/ViewGroupUtilsApi18;->fetchSuppressLayoutMethod()V

    .line 43
    sget-object v1, Landroid/support/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Error invoking suppressLayout method"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Failed to invoke suppressLayout method"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    return-void
.end method
