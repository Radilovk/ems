.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;
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
    name = "Metric"
.end annotation


# instance fields
.field final i:I

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V
    .registers 3

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 786
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;->i:I

    .line 787
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 791
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;->i:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setMetric(I)V

    .line 793
    return-void
.end method
