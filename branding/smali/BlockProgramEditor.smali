.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# static fields
.field private static final STR_TITLE:I = 0x7f0d0140


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
    .registers 6

    .line 21
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->set(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I
    .registers 2

    .line 21
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I

    move-result p0

    return p0
.end method

.method private static blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;I[I",
            "Ljava/lang/Runnable;",
            "Lcom/isaigu/gymapp/widget/XemsUi$Shell;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 113
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 116
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v10, 0x1

    invoke-static {v6, v3, v9, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 117
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-static {v4, v11, v12, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41e00000    # 28.0f

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v4, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v4, ""

    invoke-static {v6, v4, v9, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 121
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v4, v12, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v14, "\u29c9"

    const/16 v15, 0x24

    invoke-static {v6, v14, v4, v13, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v4

    .line 124
    new-instance v13, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;

    invoke-direct {v13, v5, v0, v7, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;-><init>(Ljava/util/ArrayList;ILcom/isaigu/gymapp/dialog/ProgramSegment;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v10, :cond_b3

    .line 133
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const-string v13, "\u2715"

    invoke-static {v6, v13, v4, v10, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v4

    .line 134
    new-instance v10, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;

    invoke-direct {v10, v5, v0, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$5;-><init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_b3
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v10, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;

    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;[ILandroid/widget/TextView;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;)V

    .line 156
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 159
    const-string v0, "\u0426\u0438\u043a\u043b\u0438"

    const-string v1, "Cycles"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v2, ""

    move-object/from16 v0, p0

    move-object v3, v7

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v0, "\u0421\u0438\u043b\u0430"

    const-string v1, "Strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const-string v2, "%"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    .line 162
    const/16 v14, 0xc

    invoke-static {v11, v14, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 161
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-static {v6, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 165
    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v1, "Frequency"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const-string v2, "Hz"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430"

    const-string v1, "Width"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    const-string v2, "\u00b5s"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-static {v11, v14, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 167
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/16 v0, 0xa

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v8
.end method

.method private static clamp(III)I
    .registers 3

    .line 220
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private static field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 15

    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 177
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-static {p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x41b00000    # 22.0f

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object p0

    .line 179
    new-instance p1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p0

    move-object v7, p2

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;ILcom/isaigu/gymapp/widget/XemsUi$Stepper;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 187
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, -0x1

    invoke-static {p2, p1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 188
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 189
    iget-object p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    return-object v0
.end method

.method private static get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I
    .registers 3

    .line 194
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    .line 198
    iget p0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    return p0

    .line 197
    :cond_b
    iget p0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    return p0

    .line 196
    :cond_e
    iget p0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    return p0

    .line 195
    :cond_11
    iget p0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    return p0
.end method

.method private static onOff(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 4

    .line 228
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    .line 229
    const/4 v0, 0x4

    if-eqz p0, :cond_e

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v1, :cond_e

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_f

    :cond_e
    const/4 v1, 0x4

    .line 230
    :goto_f
    if-eqz p0, :cond_17

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v2, :cond_17

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 231
    :cond_17
    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v2, 0x0

    aput v1, p0, v2

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method private static seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .line 224
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private static set(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V
    .registers 7

    .line 203
    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq p1, v0, :cond_33

    const/4 v3, 0x2

    if-eq p1, v3, :cond_19

    .line 214
    iget p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    const/16 p2, 0x1f4

    invoke-static {p1, v2, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    goto :goto_49

    .line 211
    :cond_19
    iget p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iget v3, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    if-lez p2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, -0x1

    :goto_21
    add-int/2addr v3, v2

    const/16 v2, 0x14

    if-lt v3, v2, :cond_28

    const/4 v2, 0x5

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :goto_29
    mul-int p2, p2, v2

    add-int/2addr p1, p2

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 212
    goto :goto_49

    .line 208
    :cond_33
    iget p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    add-int/2addr p1, p2

    invoke-static {p1, v2, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 209
    goto :goto_49

    .line 205
    :cond_3d
    iget p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    add-int/2addr p1, p2

    const/16 p2, 0x1e

    invoke-static {p1, v0, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 206
    nop

    .line 217
    :goto_49
    return-void
.end method

.method static show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 28
    if-nez p0, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    if-eqz p1, :cond_6

    goto :goto_b

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :goto_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 34
    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_14

    .line 36
    :cond_2c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 37
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_3d
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->onOff(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    .line 40
    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "\u0421\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043f\u043e \u0431\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v2, "Strength, frequency and width change automatically per block"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    .line 40
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v8

    .line 43
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    .line 46
    new-instance v11, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    move-object v0, v11

    move-object v1, v8

    move-object v2, v7

    move-object v3, p0

    move-object v5, v10

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;Landroid/app/Activity;[I[Ljava/lang/Runnable;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    aput-object v11, v10, v9

    .line 77
    aget-object p2, v10, v9

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 79
    const-string p2, "\u041e\u0442\u043a\u0430\u0436\u0438"

    const-string v0, "Cancel"

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    .line 80
    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$2;

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$2;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;

    invoke-direct {v1, p1, v7, v8, p3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, v8, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, v8, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object p1, v8, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object p1, v8, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 102
    const p1, 0x3f666666    # 0.9f

    invoke-static {p0, v8, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 103
    return-void
.end method

.method private static updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/widget/XemsUi$Shell;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;[I)V"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-static {p1, v1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result p2

    .line 107
    iget-object p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u0431\u043b. \u00b7 "

    const-string v3, " bl. \u00b7 "

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    div-int/lit8 v3, p2, 0x3c

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 107
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 109
    return-void
.end method
