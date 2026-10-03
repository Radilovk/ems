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
    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1815
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1819
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1820
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->showStage(Z)V

    .line 1821
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->render(Z)V

    .line 1822
    return-void
.end method
