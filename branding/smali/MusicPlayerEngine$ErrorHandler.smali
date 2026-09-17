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
    .registers 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 361
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 365
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$ErrorHandler;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchError()V

    .line 366
    const/4 p1, 0x1

    return p1
.end method
