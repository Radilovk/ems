.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDropListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaylistDropListener"
.end annotation


# instance fields
.field private final targetIndex:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDropListener;->targetIndex:I

    .line 810
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5

    .line 814
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    .line 830
    return v0

    .line 818
    :cond_9
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    .line 819
    instance-of p2, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-nez p2, :cond_13

    .line 820
    return v1

    .line 822
    :cond_13
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 823
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_1e

    .line 824
    return v1

    .line 826
    :cond_1e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDropListener;->targetIndex:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000(II)V

    .line 827
    return v0
.end method
