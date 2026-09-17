.class Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StopListener;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showIdle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method
