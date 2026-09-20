.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaylistDragStarter"
.end annotation


# instance fields
.field private final index:I

.field private final row:Landroid/view/View;


# direct methods
.method constructor <init>(ILandroid/view/View;)V
    .registers 3

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;->index:I

    .line 793
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;->row:Landroid/view/View;

    .line 794
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 798
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;->index:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "track"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 799
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;->row:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 800
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragStarter;->row:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 801
    const/4 p1, 0x1

    return p1
.end method
