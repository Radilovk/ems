.class Lcom/isaigu/gymapp/train/utils/MusicSync$2;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applied:I

.field final synthetic val$ceiling:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 368
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;->val$applied:I

    iput p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;->val$ceiling:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 371
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_b

    .line 372
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;->val$applied:I

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;->val$ceiling:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 374
    :cond_b
    return-void
.end method
