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
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public event(I)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 329
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$700()I

    move-result v0

    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->STEPS:I

    if-lt v0, v2, :cond_12

    .line 360
    :cond_11
    :goto_11
    return-void

    .line 332
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_69

    .line 333
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->lastClip:[F

    .line 334
    if-eqz v2, :cond_42

    array-length v0, v2

    .line 335
    :goto_1a
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$700()I

    move-result v3

    if-ge v3, v4, :cond_21

    const/4 v1, 0x1

    .line 337
    :cond_21
    if-eqz v1, :cond_44

    const/16 v3, 0xfa0

    if-lt v0, v3, :cond_2b

    const/16 v3, 0x5140

    if-le v0, v3, :cond_4d

    .line 338
    :cond_2b
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$600()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u041d\u0435 \u0433\u043e \u0447\u0443\u0445 \u044f\u0441\u043d\u043e \u2014 \u043a\u0430\u0436\u0438 \u043f\u0430\u043a, \u0441\u043b\u0435\u0434 \u043a\u0440\u0430\u0442\u043a\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v3, "Did not hear it clearly \u2014 say it again after a short pause."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    if-eqz v1, :cond_60

    .line 341
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->record()V

    goto :goto_11

    :cond_42
    move v0, v1

    .line 334
    goto :goto_1a

    .line 337
    :cond_44
    const/16 v3, 0x1900

    if-lt v0, v3, :cond_2b

    const v3, 0x9c40

    if-gt v0, v3, :cond_2b

    .line 347
    :cond_4d
    if-eqz v1, :cond_66

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->CUTS:Ljava/util/List;

    :goto_51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    # operator++ for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$708()I

    .line 349
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 350
    # invokes: Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$800()V

    goto :goto_11

    .line 343
    :cond_60
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->recordContrast()V

    goto :goto_11

    .line 347
    :cond_66
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MINE:Ljava/util/List;

    goto :goto_51

    .line 351
    :cond_69
    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 352
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$600()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u041d\u0435 \u0442\u0435 \u0447\u0443\u0445 \u044f\u0441\u043d\u043e \u2014 \u043a\u0430\u0436\u0438 \u043f\u0430\u043a, \u0441\u043b\u0435\u0434 \u043a\u0440\u0430\u0442\u043a\u0430 \u043f\u0430\u0443\u0437\u0430, \u043c\u0430\u043b\u043a\u043e \u043f\u043e-\u0441\u0438\u043b\u043d\u043e."

    const-string v2, "Did not hear it clearly \u2014 say it again after a short pause, a little louder."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$700()I

    move-result v0

    if-ge v0, v4, :cond_87

    .line 355
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->record()V

    goto :goto_11

    .line 357
    :cond_87
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->recordContrast()V

    goto :goto_11
.end method
