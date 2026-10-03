.class final Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;
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
    name = "Pick"
.end annotation


# instance fields
.field final i:I

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;I)V
    .registers 3

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    .line 569
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;->i:I

    .line 570
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 574
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Pick;->i:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->focusMetric(I)V

    .line 576
    return-void
.end method
