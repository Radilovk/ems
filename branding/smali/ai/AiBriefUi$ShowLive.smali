.class final Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShowLive"
.end annotation


# instance fields
.field final go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiBriefUi$Go;)V
    .registers 2

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;->go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    .line 329
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;->go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_10

    .line 335
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$ShowLive;->go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_10
    return-void
.end method
