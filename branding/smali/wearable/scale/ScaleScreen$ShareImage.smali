.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShareImage"
.end annotation


# instance fields
.field final full:Z

.field final name:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 2599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2600
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2601
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->name:Ljava/lang/String;

    .line 2602
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->full:Z

    .line 2603
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 2607
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2608
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    .line 2609
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2610
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    .line 2612
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->full:Z

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportImage(ZLjava/lang/String;)V

    .line 2613
    return-void
.end method
