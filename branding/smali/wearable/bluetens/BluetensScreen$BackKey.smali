.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BackKey"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1606
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1610
    const/4 v1, 0x4

    if-ne p2, v1, :cond_14

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1611
    :cond_14
    const/4 v0, 0x0

    .line 1616
    :cond_15
    :goto_15
    return v0

    .line 1613
    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_15

    .line 1614
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimize()V

    goto :goto_15
.end method
