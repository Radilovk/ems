.class Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;
.super Ljava/lang/Object;
.source "MusicSync.java"

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
    .locals 1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Z

    move-result v0

    if-nez v0, :cond_running

    return-void

    :cond_running
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300(I)V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()V

    return-void
.end method
