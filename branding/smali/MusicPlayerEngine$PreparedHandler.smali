.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreparedHandler"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .registers 2

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 716
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 720
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PreparedHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchPrepared()V

    .line 721
    return-void
.end method
