.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorHandler"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 611
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchError()V

    .line 616
    const/4 v0, 0x1

    return v0
.end method
