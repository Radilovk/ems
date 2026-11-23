.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Done;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Done"
.end annotation


# instance fields
.field final go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    invoke-direct {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;->go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    .line 311
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 315
    const/4 v0, 0x6

    if-eq p2, v0, :cond_13

    if-eqz p3, :cond_1a

    .line 316
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 317
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Done;->go:Lcom/isaigu/gymapp/ai/AiBriefUi$Go;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->fire()V

    .line 318
    const/4 v0, 0x1

    .line 320
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
