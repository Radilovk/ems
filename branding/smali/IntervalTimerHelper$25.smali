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

    .line 1257
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$cb:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1260
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_17
    const-string p1, ""

    .line 1261
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1262
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$input:Landroid/widget/EditText;

    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v1, "Enter a name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1263
    return-void

    .line 1265
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1266
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;->val$cb:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;->onName(Ljava/lang/String;)V

    .line 1267
    return-void
.end method
