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


# instance fields
.field private final token:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;->token:I

    .line 1151
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1155
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;->token:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1156
    return-void

    .line 1158
    :cond_9
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1159
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$600()V

    .line 1160
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1161
    return-void
.end method
