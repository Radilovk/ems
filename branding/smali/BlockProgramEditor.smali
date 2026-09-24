.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# static fields
.field private static final STR_TITLE:I = 0x7f0d0140


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
    .registers 7

    .prologue
    .line 21
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    .registers 3

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V
    .registers 3

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->set(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I
    .registers 3

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I

    move-result v0

    return v0
.end method

.method private static blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;I[I",
            "Ljava/lang/Runnable;",
            "Lcom/isaigu/gymapp/widget/XemsUi$Shell;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 114
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 116
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 117
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const-string v2, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 121
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const-string v2, "\u29c9"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x24

    invoke-static {p0, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 124
    new-instance v4, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;

    invoke-direct {v4, p1, p2, v1, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;-><init>(Ljava/util/ArrayList;ILcom/isaigu/gymapp/dialog/ProgramSegment;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_b9

    .line 133
    const-string v2, "\u2715"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/16 v6, 0x24

    invoke-static {p0, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 134
    new-instance v4, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;

    invoke-direct {v4, p1, p2, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;-><init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_b9
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;

    move-object v2, p3

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;[ILandroid/widget/TextView;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;)V

    .line 156
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 158
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 159
    const-string v2, "\u0426\u0438\u043a\u043b\u0438"

    const-string v3, "Cycles"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, v1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v2, "\u0421\u0438\u043b\u0430"

    const-string v3, "Strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v5, v1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc

    .line 162
    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 161
    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 165
    const-string v2, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v3, "Frequency"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hz"

    const/4 v6, 0x2

    move-object v2, p0

    move-object v5, v1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const-string v2, "\u0428\u0438\u0440\u0438\u043d\u0430"

    const-string v3, "Width"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u00b5s"

    const/4 v6, 0x3

    move-object v2, p0

    move-object v5, v1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc

    .line 168
    invoke-static {v1, v2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 167
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v8
.end method

.method private static clamp(III)I
    .registers 3

    .prologue
    .line 220
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 13

    .prologue
    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 177
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-static {p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, p2, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v3

    .line 179
    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;

    move-object v1, p3

    move v2, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;ILcom/isaigu/gymapp/widget/XemsUi$Stepper;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 187
    iget-object v1, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 188
    iget-object v1, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 189
    iget-object v0, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    return-object v6
.end method

.method private static get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I
    .registers 3

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_10

    .line 198
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    :goto_5
    return v0

    .line 195
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    goto :goto_5

    .line 196
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    goto :goto_5

    .line 197
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    goto :goto_5

    .line 194
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static onOff(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 5

    .prologue
    const/4 v0, 0x4

    .line 228
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_1f

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v1, :cond_1f

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 230
    :goto_d
    if-eqz v2, :cond_15

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_15

    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 231
    :cond_15
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_1f
    move v1, v0

    .line 229
    goto :goto_d
.end method

.method private static seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .prologue
    .line 224
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static set(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V
    .registers 8

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    packed-switch p1, :pswitch_data_44

    .line 214
    iget v1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    mul-int/lit8 v2, p2, 0xa

    add-int/2addr v1, v2

    const/16 v2, 0x1f4

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 217
    :goto_14
    return-void

    .line 205
    :pswitch_15
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    add-int/2addr v0, p2

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    goto :goto_14

    .line 208
    :pswitch_21
    iget v1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    add-int/2addr v1, p2

    invoke-static {v1, v0, v4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    goto :goto_14

    .line 211
    :pswitch_2b
    iget v2, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iget v3, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    if-lez p2, :cond_40

    :goto_31
    add-int/2addr v0, v3

    const/16 v3, 0x14

    if-lt v0, v3, :cond_42

    const/4 v0, 0x5

    :goto_37
    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    goto :goto_14

    :cond_40
    const/4 v0, -0x1

    goto :goto_31

    :cond_42
    move v0, v1

    goto :goto_37

    .line 203
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_15
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method static show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 103
    :goto_3
    return-void

    .line 31
    :cond_4
    if-eqz p1, :cond_27

    .line 32
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 34
    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 31
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    .line 36
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 37
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_3e
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->onOff(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    .line 40
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0421\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043f\u043e \u0431\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v3, "Strength, frequency and width change automatically per block"

    .line 41
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x258

    .line 40
    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 43
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;Landroid/app/Activity;[I[Ljava/lang/Runnable;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    aput-object v0, v5, v7

    .line 77
    aget-object v0, v5, v7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    const-string v0, "\u041e\u0442\u043a\u0430\u0436\u0438"

    const-string v3, "Cancel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 80
    new-instance v3, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$2;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$2;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v4, "Done"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 87
    new-instance v4, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;

    invoke-direct {v4, p1, v2, v1, p3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    goto/16 :goto_3
.end method

.method private static updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/widget/XemsUi$Shell;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    aget v0, p2, v6

    aget v1, p2, v7

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0431\u043b. \u00b7 "

    const-string v4, " bl. \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 107
    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 109
    return-void
.end method
