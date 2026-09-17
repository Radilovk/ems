.class Lcom/isaigu/gymapp/train/utils/MusicSync$1;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$value:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 100
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_c

    .line 101
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;->val$value:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(I)V

    .line 102
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()V

    .line 104
    :cond_c
    return-void
.end method
