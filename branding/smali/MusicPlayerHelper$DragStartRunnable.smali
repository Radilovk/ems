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


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;)V
    .registers 3

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 945
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->handle:Landroid/view/View;

    .line 946
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 950
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1100()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->listener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    if-ne v0, v1, :cond_d

    .line 951
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;->handle:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->beginDrag(Landroid/view/View;)V

    .line 953
    :cond_d
    return-void
.end method
