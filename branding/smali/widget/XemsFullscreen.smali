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

    .prologue
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

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsFullscreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static apply(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 29
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    .line 38
    :cond_8
    :goto_8
    return-void

    .line 32
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_8

    .line 35
    :catch_21
    move-exception v0

    .line 36
    const-string v1, "XemsFullscreen.apply"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static applyTo(Landroid/view/Window;)V
    .registers 3

    .prologue
    .line 41
    if-nez p0, :cond_3

    .line 46
    :goto_2
    return-void

    .line 44
    :cond_3
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2
.end method

.method public static showDialog(Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 53
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    :goto_6
    if-nez v0, :cond_10

    .line 55
    if-eqz p0, :cond_d

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 75
    :cond_d
    :goto_d
    return-void

    .line 53
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 61
    :cond_10
    const/16 v1, 0x8

    const/16 v2, 0x8

    :try_start_14
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 64
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_22} :catch_23

    goto :goto_d

    .line 66
    :catch_23
    move-exception v1

    .line 68
    const/16 v1, 0x8

    :try_start_26
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_d

    .line 72
    :catch_33
    move-exception v0

    goto :goto_d
.end method
