.class final Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;
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
    name = "UiUpdateRunnable"
.end annotation


# instance fields
.field private final display:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;->display:I

    .line 412
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 416
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 417
    return-void

    .line 419
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;->display:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 420
    return-void
.end method
