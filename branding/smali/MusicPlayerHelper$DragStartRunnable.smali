.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragStartRunnable"
.end annotation


# instance fields
.field private final handle:Landroid/view/View;

.field private final listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

.field private final rawX:F

.field private final rawY:F


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 2089
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->handle:Landroid/view/View;

    .line 2090
    iput p3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->rawX:F

    .line 2091
    iput p4, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->rawY:F

    .line 2092
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2096
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    if-ne v0, v1, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->handle:Landroid/view/View;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->rawX:F

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->rawY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->beginDrag(Landroid/view/View;FF)V

    .line 2099
    :cond_0
    return-void
.end method
