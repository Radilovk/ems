.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletionHandler"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 598
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$CompletionHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchEnded()V

    .line 603
    return-void
.end method
