.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;
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
    name = "PrefetchFailed"
.end annotation


# instance fields
.field private final gen:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;->gen:I

    .line 1225
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1229
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;->gen:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1233
    :goto_8
    return-void

    .line 1232
    :cond_9
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->handlePrefetchFailure()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$900()V

    goto :goto_8
.end method
