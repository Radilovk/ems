.class final Lcom/isaigu/gymapp/ai/WakeSetup$Meter;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Meter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 138
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_c

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$100()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    .line 161
    :cond_c
    :goto_c
    return-void

    .line 141
    :cond_d
    const v0, 0x3ca3d70a    # 0.02f

    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 142
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$100()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->meterRest:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$200()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_52

    .line 145
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 147
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$100()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->meterRest:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$200()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_52
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 151
    if-eqz v0, :cond_81

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$300()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_81

    .line 152
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$300()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u0437\u0432\u0443\u043a \u043e\u0442 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430. \u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0433\u043b\u0430\u0441\u043e\u0432\u0438\u044f \u0430\u0441\u0438\u0441\u0442\u0435\u043d\u0442 (\u043f\u0440\u0438 Huawei: \u201eCelia\u201c / \u201e\u0417\u0434\u0440\u0430\u0432\u0435\u0439, Celia\u201c) \u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f\u0442\u0430, \u043a\u043e\u0438\u0442\u043e \u0441\u043b\u0443\u0448\u0430\u0442, \u043f\u043e\u0441\u043b\u0435 \u201e\u041e\u0442\u043d\u0430\u0447\u0430\u043b\u043e\u201c."

    const-string v2, "The tablet gets no sound from the microphone. Turn off the voice assistant (Huawei: \u201cCelia\u201d) and apps that listen, then \u201cStart over\u201d."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$300()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_77
    :goto_77
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 157
    :cond_81
    if-nez v0, :cond_77

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$300()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_77

    .line 158
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->micNote:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$300()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_77
.end method
