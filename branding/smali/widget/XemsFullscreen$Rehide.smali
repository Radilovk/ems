.class final Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;
.super Ljava/lang/Object;
.source "XemsFullscreen.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rehide"
.end annotation


# instance fields
.field private final decor:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;->decor:Landroid/view/View;

    .line 83
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 4

    .line 87
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_14

    .line 88
    # getter for: Lcom/isaigu/gymapp/widget/XemsFullscreen;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->access$000()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    # getter for: Lcom/isaigu/gymapp/widget/XemsFullscreen;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->access$000()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_14
    return-void
.end method

.method public run()V
    .registers 3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsFullscreen$Rehide;->decor:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 98
    goto :goto_9

    .line 97
    :catchall_8
    move-exception v0

    .line 99
    :goto_9
    return-void
.end method
