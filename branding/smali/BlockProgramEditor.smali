.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;,
        Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;,
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 2

    .line 22
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->collect(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 5

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->buildRow(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static buildRow(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 11
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

    .line 85
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    new-array v3, v1, [Ljava/lang/Object;

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const v5, 0x7f0d0144

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;-><init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0145

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->cycles:Landroid/widget/EditText;

    .line 99
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0146

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->strenth:Landroid/widget/EditText;

    .line 100
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0147

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->hz:Landroid/widget/EditText;

    .line 101
    iget p1, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0d0148

    invoke-static {p0, v0, v3, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->pulseWidth:Landroid/widget/EditText;

    .line 103
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_a8

    .line 104
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 105
    const p0, 0x7f0d014c

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    .line 106
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 107
    new-instance p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;-><init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    :cond_a8
    return-object v0
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

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 75
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    if-eqz v2, :cond_23

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RowHolder;->toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 81
    :cond_26
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 2

    .line 131
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

.method private static field(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;
    .registers 9

    .line 114
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 125
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    return-object p2
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

    .line 36
    if-nez p0, :cond_3

    .line 37
    return-void

    .line 40
    :cond_3
    if-nez p1, :cond_b

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_c

    .line 43
    :cond_b
    nop

    .line 45
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 46
    nop

    .line 47
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 48
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_26

    .line 50
    :cond_25
    move-object v0, v1

    :goto_26
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2d
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 57
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    new-instance v4, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 63
    invoke-virtual {v4}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->run()V

    .line 65
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0140

    .line 66
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x7f0d014d

    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;

    invoke-direct {v0, v2, v3, p1, p3}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;-><init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    .line 69
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 71
    return-void
.end method
