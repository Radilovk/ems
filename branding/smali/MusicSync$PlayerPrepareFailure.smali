.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerPrepareFailure"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$402(Z)Z

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$500()V

    .line 704
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 705
    return-void
.end method
