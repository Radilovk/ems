.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$cb:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1221
    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 1222
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v2, "Enter a name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1227
    :goto_29
    return-void

    .line 1220
    :cond_2a
    const-string v0, ""

    goto :goto_16

    .line 1225
    :cond_2d
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1226
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$cb:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;->onName(Ljava/lang/String;)V

    goto :goto_29
.end method
