.class public final Lcom/isaigu/gymapp/widget/XemsFullscreen;
.super Ljava/lang/Object;
.source "XemsFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;
    }
.end annotation


# static fields
.field private static final FLAGS:I = 0x1706

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsFullscreen;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsFullscreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static apply(Landroid/app/Activity;)V
    .registers 2

    .line 29
    if-eqz p0, :cond_28

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 32
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 34
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    .line 37
    goto :goto_27

    .line 35
    :catchall_21
    move-exception p0

    .line 36
    const-string v0, "XemsFullscreen.apply"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_27
    return-void

    .line 30
    :cond_28
    :goto_28
    return-void
.end method

.method static applyTo(Landroid/view/Window;)V
    .registers 2

    .line 41
    if-nez p0, :cond_3

    .line 42
    return-void

    .line 44
    :cond_3
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 46
    return-void
.end method

.method public static showDialog(Landroid/app/Dialog;)V
    .registers 4

    .line 53
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 54
    :goto_8
    if-nez v0, :cond_10

    .line 55
    if-eqz p0, :cond_f

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 58
    :cond_f
    return-void

    .line 61
    :cond_10
    const/16 v1, 0x8

    :try_start_12
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 64
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1f

    .line 74
    goto :goto_2e

    .line 66
    :catchall_1f
    move-exception v2

    .line 68
    :try_start_20
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2d

    .line 73
    :cond_2c
    goto :goto_2e

    .line 72
    :catchall_2d
    move-exception p0

    .line 75
    :goto_2e
    return-void
.end method
