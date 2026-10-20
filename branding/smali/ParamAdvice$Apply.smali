.class final Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;
.super Ljava/lang/Object;
.source "ParamAdvice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ParamAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Apply"
.end annotation


# instance fields
.field private final button:Landroid/widget/TextView;

.field private final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field private final r:Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 218
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->r:Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    .line 219
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->button:Landroid/widget/TextView;

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 224
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->r:Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->same(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->r:Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->put(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)Z

    .line 228
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->show()V

    .line 229
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->r:Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->same(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)Z

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->button:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    const-string v0, "\u2713 \u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u043e"

    const-string v3, "\u2713 Applied"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->button:Landroid/widget/TextView;

    if-eqz v1, :cond_2a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_1d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    return-void

    .line 234
    :cond_21
    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0438"

    const-string v3, "Apply"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 235
    :cond_2a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1d
.end method
