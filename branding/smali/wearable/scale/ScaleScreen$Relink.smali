.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Relink"
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
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1815
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->session:Lcom/isaigu/gymapp/wearable/scale/ScaleSession;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1820
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relink;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->startLink()V

    .line 1822
    :cond_17
    return-void
.end method
