.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Go;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Go"
.end annotation


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field final field:Landroid/widget/EditText;

.field final live:Z


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    .line 283
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->live:Z

    .line 284
    return-void
.end method


# virtual methods
.method fire()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_13
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    # invokes: Lcom/isaigu/gymapp/ai/AiBriefUi;->hideKeyboard(Landroid/view/View;)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$000(Landroid/view/View;)V

    .line 295
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->live:Z

    if-eqz v1, :cond_32

    .line 296
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_25

    .line 297
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 299
    :cond_25
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/ai/AiBriefUi;->live(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    :cond_2e
    :goto_2e
    return-void

    .line 293
    :cond_2f
    const-string v0, ""

    goto :goto_13

    .line 300
    :cond_32
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$200()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/ai/AiBriefUi;->submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v2}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 288
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 289
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiBriefUi$Go;->fire()V

    .line 290
    return-void
.end method
