.class final Lcom/isaigu/gymapp/widget/XemsClientSync$Tick;
.super Ljava/lang/Object;
.source "XemsClientSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsClientSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 99
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->maybePoll(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_f

    .line 102
    :goto_4
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void

    .line 100
    :catch_f
    move-exception v0

    goto :goto_4
.end method
