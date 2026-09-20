.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;
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
    name = "PlaylistMoveListener"
.end annotation


# instance fields
.field private final delta:I

.field private final index:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;->index:I

    .line 819
    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;->delta:I

    .line 820
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 824
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;->index:I

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;->delta:I

    add-int/2addr v0, p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000(II)V

    .line 825
    return-void
.end method
