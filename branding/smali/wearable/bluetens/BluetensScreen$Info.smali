.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1697
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1698
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1702
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v3

    .line 1703
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_71

    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u043d\u0430 Bluetens"

    const-string v1, "The Bluetens programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    :goto_1b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v1, :cond_98

    const-string v1, "\u0412\u0441\u0438\u0447\u043a\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e Bluetens, \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u043e \u043d\u0430 \u0442\u043e\u0437\u0438 \u0442\u0430\u0431\u043b\u0435\u0442 \u2014 \u0447\u0435\u0442\u0430\u0442 \u0441\u0435 \u043e\u0442 \u043d\u0435\u0433\u043e \u0438 \u0432\u044a\u0440\u0432\u044f\u0442 \u0442\u043e\u0447\u043d\u043e \u043a\u0430\u043a\u0442\u043e \u0442\u0430\u043c. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v5, "Every program of the Bluetens app installed on this tablet \u2014 read from it and played exactly as there. Strength starts at 1."

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1721
    :goto_29
    const/16 v5, 0x26c

    .line 1703
    invoke-static {v4, v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v4

    .line 1722
    if-eqz v3, :cond_c1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2022 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u2014 \u043d\u0430 \u0447\u0438\u0441\u0442\u0430, \u0441\u0443\u0445\u0430 \u043a\u043e\u0436\u0430, \u0432\u044a\u0440\u0445\u0443 \u043c\u0443\u0441\u043a\u0443\u043b\u0430, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0441\u0442\u0430\u0432\u0430 \u0438\u043b\u0438 \u043a\u043e\u0441\u0442."

    aput-object v1, v0, v2

    const-string v1, "\u2022 \u0417\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 \u0441\u0438\u043b\u0430 1. \u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    aput-object v1, v0, v6

    const-string v1, "\u2022 \u041d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u043f\u0440\u0438 \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u043d\u0435 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0440\u0430\u043d\u0438."

    aput-object v1, v0, v7

    const-string v1, "\u2022 Duo: \u0434\u0432\u0435\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e, \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 \u043e\u0442\u0434\u0435\u043b\u043d\u0430 \u0437\u0430 \u0432\u0441\u044f\u043a\u043e."

    aput-object v1, v0, v8

    const-string v1, "\u2022 \u201e\u2014\u201c \u0441\u0432\u0438\u0432\u0430 \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446\u0430: \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u0442, \u0430 \u0442\u0438 \u0440\u0430\u0431\u043e\u0442\u0438\u0448 \u0432 XEMS. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0431\u0430\u043b\u043e\u043d\u0447\u0435\u0442\u043e, \u0437\u0430 \u0434\u0430 \u0433\u043e \u043e\u0442\u0432\u043e\u0440\u0438\u0448."

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "\u2022 \u2715 \u0437\u0430\u0442\u0432\u0430\u0440\u044f \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446\u0430 \u0438 \u0441\u043f\u0438\u0440\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430\u0442\u0430."

    aput-object v3, v0, v1

    .line 1736
    :goto_4d
    array-length v3, v0

    move v1, v2

    :goto_4f
    if-ge v1, v3, :cond_df

    aget-object v5, v0, v1

    .line 1737
    iget-object v6, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v7, v5, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1736
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1704
    :cond_71
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_80

    const-string v0, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v1, "Live"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_8f

    const-string v0, "\u0420\u044a\u0447\u0435\u043d \u0440\u0435\u0436\u0438\u043c"

    const-string v1, "Manual mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 1705
    :cond_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 1709
    :cond_98
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v1, :cond_a7

    const-string v1, "\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438: \u0442\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u043d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u043a\u043e\u043b\u043e \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0431\u0435\u0448\u0435. \u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a \u2014 \u043f\u0430\u043a\u0435\u0442\u0438 \u043f\u043e 1\u20135 \u043c\u0441 \u043e\u0442 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0441 1 kHz (\u043d\u0430\u0439-\u0432\u0438\u0441\u043e\u043a\u043e\u0442\u043e, \u043a\u043e\u0435\u0442\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043c\u043e\u0436\u0435, \u0435 1,2 kHz \u2014 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u044a\u0442 \u0441 4 kHz \u043d\u0435 \u0441\u0442\u0430\u0432\u0430); \u043a\u043b\u0430\u0441\u0438\u043a\u0430\u0442\u0430 \u0435 4 \u043c\u0441 \u043f\u0430\u043a\u0435\u0442\u0438, 50 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430. \u0412\u0441\u0438\u0447\u043a\u043e \u0441\u0442\u043e\u0438 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v5, "The values change while the pad runs: it gets a new program in about a second and the strength comes back to where it was. Australian current \u2014 1\u20135 ms bursts of 1 kHz pulses (the pad tops out at 1.2 kHz \u2014 the 4 kHz kind is out of reach); the classic is 4 ms bursts, 50 a second. Everything stays inside the suit\'s safety limits."

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 1717
    :cond_a7
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v1, :cond_b7

    const-string v1, "\u0422\u0438 \u0437\u0430\u0434\u0430\u0432\u0430\u0448 \u0432\u0441\u044f\u043a\u0430 \u0441\u0442\u044a\u043f\u043a\u0430: \u0432\u0440\u0435\u043c\u0435, \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u043f\u0430\u0443\u0437\u0430, \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430, \u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435. \u0412\u0441\u0438\u0447\u043a\u043e \u0441\u0442\u043e\u0438 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v5, "You set every step: time, frequency, pulse width, impulse and pause, pulses in the pause, soft rise. Everything stays inside the suit\'s safety limits."

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 1721
    :cond_b7
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->detail(IZ)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 1729
    :cond_c1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2022 Electrodes on clean, dry skin over the muscle \u2014 not on a joint or bone."

    aput-object v1, v0, v2

    const-string v1, "\u2022 It starts at strength 1. Raise it until it feels good \u2014 never to pain."

    aput-object v1, v0, v6

    const-string v1, "\u2022 Not on the chest with a pacemaker, not in pregnancy, not on wounds."

    aput-object v1, v0, v7

    const-string v1, "\u2022 Duo: both pads start together; each has its own strength."

    aput-object v1, v0, v8

    const-string v1, "\u2022 \u201c\u2014\u201d folds the window: the pads keep going while you work in XEMS. Tap the pill to open it again."

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v3, "\u2022 \u2715 closes the window and stops the pads."

    aput-object v3, v0, v1

    goto/16 :goto_4d

    .line 1739
    :cond_df
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1740
    return-void
.end method
