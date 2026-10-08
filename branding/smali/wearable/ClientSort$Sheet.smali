.class final Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;
.super Ljava/lang/Object;
.source "ClientSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sheet"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final et:Landroid/widget/EditText;

.field groups:Landroid/widget/LinearLayout;

.field final owner:Ljava/lang/Object;

.field final pill:Landroid/widget/TextView;

.field final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    .line 484
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 485
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->et:Landroid/widget/EditText;

    .line 486
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->owner:Ljava/lang/Object;

    .line 487
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->pill:Landroid/widget/TextView;

    .line 488
    return-void
.end method

.method private group(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 517
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 519
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    const/high16 v6, 0x42dc0000    # 110.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    new-array v5, v3, [Landroid/widget/LinearLayout;

    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v0, v1

    .line 522
    :goto_2d
    array-length v2, p4

    if-ge v0, v2, :cond_51

    .line 523
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    aget-object v8, p4, v0

    if-ne v0, p3, :cond_4f

    move v2, v3

    :goto_37
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v7, v8, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 524
    new-instance v7, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;

    invoke-direct {v7, p0, p2, v0}, Lcom/isaigu/gymapp/wearable/ClientSort$Pick;-><init>(Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    aget-object v8, v5, v1

    invoke-static {v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_4f
    move v2, v1

    .line 523
    goto :goto_37

    .line 527
    :cond_51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->groups:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    return-void
.end method


# virtual methods
.method build()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->groups:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1a

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->groups:Landroid/widget/LinearLayout;

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->groups:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->groups:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 500
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    const-string v1, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438"

    const-string v2, "Order"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sort"

    const-string v3, "sort"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "\u0410\u2013\u042f \u043f\u043e \u0438\u043c\u0435"

    const-string v6, "A\u2013Z by name"

    .line 502
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v6, "Last training"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\u041d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v6, "Most trainings"

    .line 503
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u041d\u043e\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0438"

    const-string v6, "Newest clients"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 501
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->group(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 504
    const-string v1, "\u041f\u043e\u043b"

    const-string v2, "Sex"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sex"

    const-string v3, "sex"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v6, "All"

    .line 505
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "\u0416\u0435\u043d\u0438"

    const-string v6, "Women"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\u041c\u044a\u0436\u0435"

    const-string v6, "Men"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 504
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->group(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 506
    const-string v1, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442"

    const-string v2, "Activity"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "act"

    const-string v3, "act"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v6, "All"

    .line 507
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "\u0418\u0434\u0432\u0430\u043b\u0438 \u0434\u043e 30 \u0434\u043d\u0438"

    const-string v6, "Came in 30 days"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\u041d\u0435 \u0441\u0430 \u0438\u0434\u0432\u0430\u043b\u0438 30+ \u0434\u043d\u0438"

    const-string v6, "Not seen 30+ days"

    .line 508
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\u0411\u0435\u0437 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v6, "No training yet"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 506
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->group(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 509
    const-string v1, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "goal"

    const-string v3, "goal"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v5, "All"

    .line 510
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 511
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x5

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 512
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 509
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->group(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method prefs()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->a:Landroid/app/Activity;

    const-string v1, "xems_client_view"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method set(Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 532
    if-nez p1, :cond_36

    .line 533
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sex"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "act"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "goal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->build()V

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->paint(Landroid/widget/TextView;)V

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->et:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->owner:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->refresh(Landroid/widget/EditText;Ljava/lang/Object;)V

    .line 540
    return-void

    .line 535
    :cond_36
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_26
.end method
