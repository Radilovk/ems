.class final Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;
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
    name = "Info"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;)V
    .registers 2

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    .line 567
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 571
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis$Info;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleAnalysis;->info(Landroid/view/View;)V

    .line 573
    return-void
.end method
