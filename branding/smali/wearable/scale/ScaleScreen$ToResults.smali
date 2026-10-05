.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;
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
    name = "ToResults"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2308
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2312
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2313
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 2314
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 2315
    return-void
.end method
