.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;
    }
.end annotation


# static fields
.field private static final STR_ADD:I = 0x7f0d014b

.field private static final STR_BLOCK:I = 0x7f0d0144

.field private static final STR_CYCLES:I = 0x7f0d0145

.field private static final STR_DONE:I = 0x7f0d014d

.field private static final STR_HZ:I = 0x7f0d0147

.field private static final STR_MA:I = 0x7f0d0146

.field private static final STR_REMOVE:I = 0x7f0d014c

.field private static final STR_TITLE:I = 0x7f0d0140

.field private static final STR_WIDTH:I = 0x7f0d0148


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(III)I
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 2

    .line 21
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->collect(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 5

    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->buildRow(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static buildRow(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 84
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 85
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0, v8, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    new-array v1, v7, [Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f0d0144

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v9, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;-><init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V

    .line 96
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 97
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    const v2, 0x7f0d0145

    const/4 v4, 0x1

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->sliderField(Landroid/content/Context;Landroid/widget/LinearLayout;IIII)Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    move-result-object v0

    iput-object v0, v9, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->cycles:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    .line 98
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    const v2, 0x7f0d0146

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->sliderField(Landroid/content/Context;Landroid/widget/LinearLayout;IIII)Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    move-result-object v0

    iput-object v0, v9, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->strenth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    .line 99
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    const v2, 0x7f0d0147

    const/4 v4, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->sliderField(Landroid/content/Context;Landroid/widget/LinearLayout;IIII)Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    move-result-object v0

    iput-object v0, v9, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->hz:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    .line 100
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    const v2, 0x7f0d0148

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->sliderField(Landroid/content/Context;Landroid/widget/LinearLayout;IIII)Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    move-result-object p1

    iput-object p1, v9, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->pulseWidth:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v7, :cond_ab

    .line 103
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 104
    const p0, 0x7f0d014c

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    .line 105
    invoke-virtual {p1, v8}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 106
    const/high16 p0, 0x41200000    # 10.0f

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextSize(F)V

    .line 107
    new-instance p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;-><init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :cond_ab
    return-object v6
.end method

.method private static clamp(III)I
    .registers 3

    .line 157
    if-ge p0, p1, :cond_3

    .line 158
    return p1

    .line 160
    :cond_3
    if-le p0, p2, :cond_6

    .line 161
    return p2

    .line 163
    :cond_6
    return p0
.end method

.method private static collect(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 74
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    if-eqz v2, :cond_23

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 80
    :cond_26
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 2

    .line 140
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V
    .registers 10
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

    .line 35
    if-nez p0, :cond_3

    .line 36
    return-void

    .line 39
    :cond_3
    if-nez p1, :cond_b

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_c

    .line 42
    :cond_b
    nop

    .line 44
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 45
    nop

    .line 46
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 47
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_26

    .line 49
    :cond_25
    move-object v0, v1

    :goto_26
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2d
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 56
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    new-instance v4, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 62
    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->run()V

    .line 64
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0140

    .line 65
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x7f0d014d

    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;

    invoke-direct {v0, v2, v3, p1, p3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;-><init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    .line 68
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 70
    return-void
.end method

.method private static sliderField(Landroid/content/Context;Landroid/widget/LinearLayout;IIII)Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;
    .registers 12

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    invoke-direct {v2, p4, p5, p3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;-><init>(III)V

    .line 124
    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 125
    sub-int/2addr p5, p4

    invoke-virtual {v3, p5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    sub-int/2addr p3, p4

    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    const p2, 0x800005

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    iget p2, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance p2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;

    invoke-direct {p2, v2, p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;-><init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;Landroid/widget/TextView;I)V

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iput-object p3, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->valueView:Landroid/widget/TextView;

    .line 133
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v5, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p4, 0x20

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p2, p0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    return-object v2
.end method
