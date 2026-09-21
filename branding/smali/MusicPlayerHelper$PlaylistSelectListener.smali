.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaylistSelectListener"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    .line 1462
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1466
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(I)I

    .line 1467
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600(Z)Z

    .line 1468
    return-void
.end method
