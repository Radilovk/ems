.class Lcom/isaigu/gymapp/beta/MusicReactiveController$TickRunnable;
.super Ljava/lang/Object;
.source "MusicReactiveController.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->access$000()Z

    move-result v0

    if-nez v0, :cond_running

    return-void

    :cond_running
    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->access$200()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->access$300(I)V

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->access$100()V

    return-void
.end method
