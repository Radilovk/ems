.class public final Lcom/isaigu/gymapp/wearable/ClientRow;
.super Ljava/lang/Object;
.source "ClientRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ClientRow$Act;,
        Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;,
        Lcom/isaigu/gymapp/wearable/ClientRow$Upload;,
        Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;,
        Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;,
        Lcom/isaigu/gymapp/wearable/ClientRow$Opened;,
        Lcom/isaigu/gymapp/wearable/ClientRow$FindCard;
    }
.end annotation


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "xems_row_actions"

.field private static final GOAL:Ljava/lang/String; = "xems_row_goal"

.field private static final NAME_COL:Ljava/lang/String; = "xems_row_name"

.field private static final NOTES:Ljava/lang/String; = "xems_client_notes"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appStatus(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 12

    .prologue
    const/16 v5, 0x8

    .line 280
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->body(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v2, "The client\'s app"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-static {p0, p2, p3, p4}, Lcom/isaigu/gymapp/wearable/CardPublisher;->state(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;J)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string v0, "\u2713"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 283
    :goto_29
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->body(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-static {p0, v1, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_74

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_74

    const-string v0, "\u2713"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 285
    const-string v0, "\u041a\u0430\u0447\u0438 \u0441\u0435\u0433\u0430"

    const-string v1, "Upload now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/isaigu/gymapp/wearable/ClientRow$Upload;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/ClientRow$Upload;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->body(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_74
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9e

    .line 291
    const-string v0, "\u041a\u0430\u0440\u0442\u043e\u043d \u0438 \u0432\u0441\u0438\u0447\u043a\u0438 \u043e\u0442\u0447\u0435\u0442\u0438  \u2197"

    const-string v1, "Card and all reports  \u2197"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/wearable/ClientRow$OpenCard;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->body(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_9e
    return-void

    .line 282
    :cond_9f
    const-string v0, "\u2717"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_29

    :cond_aa
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_29
.end method

.method private static body(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static day(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 551
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fitnessName(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 440
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientRow$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Fitness:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 443
    const-string v0, "\u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v1, "Intermediate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 441
    :pswitch_14
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449"

    const-string v1, "Beginner"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 442
    :pswitch_1d
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b"

    const-string v1, "Advanced"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 440
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
    .end packed-switch
.end method

.method static goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientRow$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 157
    const-string v0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v1, "Tone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 153
    :pswitch_14
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 154
    :pswitch_1d
    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v1, "Massage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 155
    :pswitch_26
    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Drainage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 156
    :pswitch_2f
    const-string v0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v1, "Cellulite"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 152
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method static goalOf(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalName(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method static hm(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 555
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static icon(Landroid/content/Context;IILjava/lang/String;)Landroid/widget/TextView;
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/high16 v8, 0x42380000    # 46.0f

    .line 124
    const-string v0, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v3, 0x2e

    invoke-static {p0, v0, v2, p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v6

    .line 125
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {v3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 126
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 127
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    .line 128
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 129
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 130
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 134
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-object v6
.end method

.method static last(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 492
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->sessions(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONArray;

    move-result-object v4

    .line 493
    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v2, "Last trainings"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->twoNames(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x208

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v5

    .line 494
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_36

    .line 495
    iget-object v0, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v2, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v3, "No trainings recorded yet."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    :cond_36
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_3e
    if-ltz v2, :cond_15d

    const/4 v0, 0x5

    if-ge v3, v0, :cond_15d

    .line 500
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 501
    if-nez v6, :cond_4f

    .line 499
    :goto_49
    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_3e

    .line 504
    :cond_4f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 505
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 506
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 507
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->day(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "  \u00b7  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "start"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->hm(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v9, 0x41800000    # 16.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x1

    invoke-static {p0, v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    const-string v0, "activeS"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 510
    const-string v9, "program"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 511
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " \u043c\u0438\u043d"

    const-string v11, " min"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_154

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  \u00b7  "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_db
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 512
    const-string v0, "hrAvg"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_157

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  \u00b7  \u2665 "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "hrAvg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_100
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    const/high16 v9, 0x41500000    # 13.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {p0, v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    const-string v0, "\u203a"

    const/high16 v8, 0x41b00000    # 22.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x1

    invoke-static {p0, v0, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    new-instance v0, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v0, v5, p1, v8, v9}, Lcom/isaigu/gymapp/wearable/ClientRow$OpenReport;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;J)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 518
    iget-object v6, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    if-nez v3, :cond_15a

    move v0, v1

    :goto_144
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14b} :catch_14d

    goto/16 :goto_49

    .line 521
    :catch_14d
    move-exception v0

    .line 522
    const-string v1, "ClientRow.last"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    :goto_153
    return-void

    .line 511
    :cond_154
    :try_start_154
    const-string v0, ""

    goto :goto_db

    .line 512
    :cond_157
    const-string v0, ""

    goto :goto_100

    .line 518
    :cond_15a
    const/16 v0, 0x8

    goto :goto_144

    .line 520
    :cond_15d
    iget-object v0, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_154 .. :try_end_162} :catch_14d

    goto :goto_153
.end method

.method static notes(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 452
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ClientRow;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_client_notes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static restyle(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 16

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 53
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "username"

    const-string v5, "id"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "userIcon"

    const-string v6, "id"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 56
    const-string v0, "xems_row_name"

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    if-nez v0, :cond_137

    .line 58
    if-eqz v5, :cond_46

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 59
    :goto_3d
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_49

    .line 121
    :cond_45
    :goto_45
    return-void

    .line 58
    :cond_46
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_3d

    .line 62
    :cond_49
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 63
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 64
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 65
    const-string v8, "xems_row_name"

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 66
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const-string v8, ""

    const/high16 v9, 0x41600000    # 14.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v4, v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 70
    const-string v9, "xems_row_goal"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 71
    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 74
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 75
    invoke-virtual {p0, v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 77
    :goto_9c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_b8

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 79
    if-eq v8, v7, :cond_b5

    if-eq v8, p1, :cond_b5

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v6, :cond_b5

    .line 80
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 83
    :cond_b8
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 84
    const-string v6, "xems_row_actions"

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 85
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    const/16 v6, 0xc

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const-string v8, "\u041f\u0440\u043e\u0433\u0440\u0435\u0441"

    const-string v9, "Progress"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/ClientRow;->icon(Landroid/content/Context;IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    const/16 v6, 0xd

    const v7, -0x9b4a0a

    const-string v8, "\u0420\u0435\u0437\u044e\u043c\u0435"

    const-string v9, "Summary"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/ClientRow;->icon(Landroid/content/Context;IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const/16 v6, 0xe

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const-string v8, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v9, "Last trainings"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/ClientRow;->icon(Landroid/content/Context;IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    const/16 v6, 0x12

    const v7, -0x459738

    const-string v8, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v9, "Scale"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/ClientRow;->icon(Landroid/content/Context;IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 92
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_137
    if-eqz v5, :cond_18f

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    :goto_13f
    if-eqz v0, :cond_155

    .line 100
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 101
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ClientRow;->twoNames(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/ClientSort;->mark(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 106
    :cond_155
    const-string v0, "xems_row_goal"

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    if-eqz v0, :cond_170

    .line 108
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalOf(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16d

    move v2, v1

    :cond_16d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_170
    const-string v0, "xems_row_actions"

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    if-eqz v0, :cond_45

    .line 114
    :goto_17a
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/ClientRow$Act;

    invoke-direct {v3, p2, v1}, Lcom/isaigu/gymapp/wearable/ClientRow$Act;-><init>(Lcom/isaigu/gymapp/bean/TrainUser;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18c} :catch_191

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    .line 98
    :cond_18f
    const/4 v0, 0x0

    goto :goto_13f

    .line 118
    :catch_191
    move-exception v0

    .line 119
    const-string v1, "ClientRow.restyle"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45
.end method

.method static sessions(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONArray;
    .registers 6

    .prologue
    .line 483
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 485
    :goto_b
    return-object v0

    .line 484
    :catch_c
    move-exception v0

    .line 485
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_b
.end method

.method static summary(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 22

    .prologue
    .line 193
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v8

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->twoNames(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->goalOf(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x230

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v9

    .line 196
    iget-object v10, v9, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 198
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 199
    if-eqz v8, :cond_2c8

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_2c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 200
    :goto_39
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v2, :cond_2cd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0441\u043c"

    const-string v4, " cm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 201
    :goto_5d
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2ea

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-nez v2, :cond_2d2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043a\u0433"

    const-string v7, " kg"

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 203
    :goto_9d
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v2, :cond_2ef

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2ef

    .line 204
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    float-to-double v14, v13

    move-object/from16 v0, p1

    iget v13, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_d6
    const-string v7, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v11, "Age"

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v5, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    const-string v5, "\u0420\u044a\u0441\u0442"

    const-string v7, "Height"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v6, v5, v4, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    const-string v4, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4, v3, v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    const-string v3, "\u0418\u0422\u041c"

    const-string v4, "BMI"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v6, v3, v2, v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->sessions(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONArray;

    move-result-object v11

    .line 212
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 213
    if-eqz v8, :cond_2fe

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v2, :cond_2fe

    .line 214
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v3, :cond_2f3

    const-string v2, "\u0416\u0435\u043d\u0430"

    const-string v3, "Female"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 215
    :goto_138
    if-eqz v8, :cond_303

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v2, :cond_303

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->fitnessName(Lcom/isaigu/gymapp/ai/AiModel$Fitness;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 216
    :goto_145
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_308

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 217
    :goto_15c
    const-string v2, "\u041f\u043e\u043b"

    const-string v3, "Sex"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v7, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    const-string v2, "\u0424\u043e\u0440\u043c\u0430"

    const-string v3, "Fitness"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v6, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v3, "Trainings"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430"

    const-string v3, "Last"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_30d

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->day(J)Ljava/lang/String;

    move-result-object v2

    :goto_1a2
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v2, v6}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_27d

    const-string v3, "fat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27d

    .line 224
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 225
    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v7, "Body fat"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f %%"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "fat"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    const-string v6, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v7, "Muscle"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%.1f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "muscle"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " \u043a\u0433"

    const-string v12, " kg"

    .line 227
    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x8

    .line 226
    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    const-string v6, "\u0412\u043e\u0434\u0430"

    const-string v7, "Water"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f %%"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "water"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    const-string v6, "\u041a\u0430\u043d\u0442\u0430\u0440"

    const-string v7, "Scale"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/ClientRow;->day(J)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v2, v7}, Lcom/isaigu/gymapp/wearable/ClientRow;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :cond_27d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v9, v1, v4, v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->appStatus(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/bean/TrainUser;J)V

    .line 234
    if-eqz v8, :cond_36f

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_296

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36f

    .line 235
    :cond_296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_314

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_311

    const-string v3, " \u00b7 "

    :goto_2b5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c0} :catch_2c1

    goto :goto_2a1

    .line 270
    :catch_2c1
    move-exception v2

    .line 271
    const-string v3, "ClientRow.summary"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :goto_2c7
    return-void

    .line 199
    :cond_2c8
    :try_start_2c8
    const-string v2, "\u2014"

    move-object v5, v2

    goto/16 :goto_39

    .line 200
    :cond_2cd
    const-string v2, "\u2014"

    move-object v4, v2

    goto/16 :goto_5d

    .line 202
    :cond_2d2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_88

    :cond_2ea
    const-string v2, "\u2014"

    move-object v3, v2

    goto/16 :goto_9d

    .line 204
    :cond_2ef
    const-string v2, "\u2014"

    goto/16 :goto_d6

    .line 214
    :cond_2f3
    const-string v2, "\u041c\u044a\u0436"

    const-string v3, "Male"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_138

    :cond_2fe
    const-string v2, "\u2014"

    move-object v7, v2

    goto/16 :goto_138

    .line 215
    :cond_303
    const-string v2, "\u2014"

    move-object v6, v2

    goto/16 :goto_145

    .line 216
    :cond_308
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto/16 :goto_15c

    .line 220
    :cond_30d
    const-string v2, "\u2014"

    goto/16 :goto_1a2

    .line 237
    :cond_311
    const-string v3, ""

    goto :goto_2b5

    .line 239
    :cond_314
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_33a

    const-string v3, " \u00b7 "

    :goto_32e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextClient;->condName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31a

    :cond_33a
    const-string v3, ""

    goto :goto_32e

    .line 242
    :cond_33d
    const-string v2, "\u0417\u043e\u043d\u0438 \u0438 \u0441\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435"

    const-string v3, "Zones and state"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_36f
    if-eqz v8, :cond_397

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_397

    .line 246
    const-string v2, "\u26a0 \u0418\u043c\u0430 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435 \u2014 \u0432\u0438\u0436 \u043a\u0430\u0440\u0442\u043e\u043d\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "\u26a0 A contraindication \u2014 see the client form."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0xc

    .line 247
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 246
    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_397
    const-string v2, "\u0411\u0435\u043b\u0435\u0436\u043a\u0438"

    const-string v3, "Notes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 252
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/ClientRow;->notes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const-string v3, "\u041a\u0440\u0430\u0442\u043a\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430: \u043f\u0440\u0435\u0434\u043f\u043e\u0447\u0438\u0442\u0430\u043d\u0438\u044f, \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435, \u043d\u0430\u043f\u043e\u043c\u043d\u044f\u043d\u0438\u044f\u2026"

    const-string v4, "A few words: preferences, cautions, reminders\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 256
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 257
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 258
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 259
    const v3, 0x800033

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 260
    const v3, 0x24001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 262
    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 263
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 264
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    const-string v3, "\u0417\u0430\u043f\u0430\u0437\u0438 \u0431\u0435\u043b\u0435\u0436\u043a\u0430\u0442\u0430"

    const-string v4, "Save the note"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 267
    new-instance v4, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-direct {v4, v9, v2, v6, v7}, Lcom/isaigu/gymapp/wearable/ClientRow$SaveNote;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/EditText;J)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v2, v9, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_44a
    .catch Ljava/lang/Throwable; {:try_start_2c8 .. :try_end_44a} :catch_2c1

    goto/16 :goto_2c7
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .prologue
    const/16 v5, 0x11

    .line 428
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 430
    const/high16 v1, 0x41900000    # 18.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, p3, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 432
    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {p0, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 433
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static twoNames(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_16
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0

    .line 141
    :cond_40
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_4b
    const-string v0, ""

    goto :goto_16
.end method
