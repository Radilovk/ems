.class final Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;
.super Ljava/lang/Object;
.source "ScaleAnalysis.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PathTap"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V
    .registers 2

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    .line 598
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 602
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 603
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$PathTap;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusMetric(I)V

    .line 604
    return-void
.end method
