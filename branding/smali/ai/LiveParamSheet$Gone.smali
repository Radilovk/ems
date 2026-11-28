.class final Lcom/isaigu/gymapp/ai/LiveParamSheet$Gone;
.super Ljava/lang/Object;
.source "LiveParamSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/LiveParamSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gone"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 86
    # getter for: Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$100()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/LiveParamSheet;->REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$000()Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$202(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 88
    return-void
.end method
