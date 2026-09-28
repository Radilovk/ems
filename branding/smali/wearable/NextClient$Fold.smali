.class final Lcom/isaigu/gymapp/wearable/NextClient$Fold;
.super Ljava/lang/Object;
.source "NextClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fold"
.end annotation


# instance fields
.field final target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/NextClient$Fold;->target:Landroid/view/View;

    .line 504
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NextClient$Fold;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 509
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/NextClient$Fold;->target:Landroid/view/View;

    if-eqz v0, :cond_1e

    :goto_e
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    if-eqz v0, :cond_18

    .line 511
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NextClient$Fold;->target:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 513
    :cond_18
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 514
    return-void

    :cond_1c
    move v0, v1

    .line 508
    goto :goto_a

    .line 509
    :cond_1e
    const/16 v1, 0x8

    goto :goto_e
.end method
