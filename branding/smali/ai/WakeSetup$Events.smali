.class final Lcom/isaigu/gymapp/ai/WakeSetup$Events;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/WakeSetup$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Events"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public event(I)V
    .registers 6

    .prologue
    const/4 v3, 0x3

    .line 223
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_e

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 239
    :cond_e
    :goto_e
    return-void

    .line 226
    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 227
    # operator++ for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$508()I

    .line 228
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 229
    # invokes: Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$600()V

    goto :goto_e

    .line 230
    :cond_1e
    if-ne p1, v3, :cond_e

    .line 231
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$700()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u041d\u0435 \u0442\u0435 \u0447\u0443\u0445 \u044f\u0441\u043d\u043e \u2014 \u043a\u0430\u0436\u0438 \u043f\u0430\u043a, \u0441\u043b\u0435\u0434 \u043a\u0440\u0430\u0442\u043a\u0430 \u043f\u0430\u0443\u0437\u0430, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e."

    const-string v2, "Did not hear it clearly \u2014 say it again after a short pause, a little louder."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()I

    move-result v0

    if-ge v0, v3, :cond_3b

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->record()V

    goto :goto_e

    .line 236
    :cond_3b
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->recordContrast()V

    goto :goto_e
.end method
