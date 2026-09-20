.class public final Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;
.super Ljava/lang/Object;
.source "SegmentProgramUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;
    }
.end annotation


# static fields
.field private static final BOUND_TAG:Ljava/lang/String; = "segment_program_bound"

.field static final EDIT_BTN_ID:I = 0x7f090251

.field private static final STR_ADD:I = 0x7f0d014b

.field private static final STR_BLOCK:I = 0x7f0d0144

.field private static final STR_CYCLES:I = 0x7f0d0145

.field private static final STR_DONE:I = 0x7f0d014d

.field private static final STR_EDIT:I = 0x7f0d0142

.field private static final STR_HINT:I = 0x7f0d0141

.field private static final STR_HZ:I = 0x7f0d0147

.field private static final STR_MA:I = 0x7f0d0146

.field private static final STR_OFF:I = 0x7f0d014a

.field private static final STR_ON:I = 0x7f0d0149

.field private static final STR_REMOVE:I = 0x7f0d014c

.field private static final STR_SUMMARY:I = 0x7f0d0143

.field private static final STR_TITLE:I = 0x7f0d0140

.field private static final STR_WIDTH:I = 0x7f0d0148

.field static final SUMMARY_ID:I = 0x7f090252

.field static final SWITCH_ID:I = 0x7f090250


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .registers 3

    .line 24
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->persist(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .registers 3

    .line 24
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->openEditor(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 5

    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->buildBlockRow(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
    .registers 7

    .line 49
    if-eqz p0, :cond_4f

    if-nez p1, :cond_5

    goto :goto_4f

    .line 52
    :cond_5
    const v0, 0x7f090250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 53
    const v1, 0x7f090251

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 54
    const v2, 0x7f090252

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    if-eqz v0, :cond_4e

    if-eqz v1, :cond_4e

    if-nez v2, :cond_27

    goto :goto_4e

    .line 58
    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 59
    const-string v4, "segment_program_bound"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 60
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 61
    return-void

    .line 63
    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$1;

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    new-instance p1, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;

    invoke-direct {p1, p0, v0, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 78
    return-void

    .line 56
    :cond_4e
    :goto_4e
    return-void

    .line 50
    :cond_4f
    :goto_4f
    return-void
.end method

.method private static buildBlockRow(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)Landroid/view/View;
    .registers 11

    .line 203
    iget-object p1, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 204
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    new-array v3, v1, [Ljava/lang/Object;

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const v5, 0x7f0d0144

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 217
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0145

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->cycles:Landroid/widget/EditText;

    .line 218
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0146

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->strenth:Landroid/widget/EditText;

    .line 219
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0147

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->hz:Landroid/widget/EditText;

    .line 220
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0148

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulseWidth:Landroid/widget/EditText;

    .line 221
    iget v3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0149

    invoke-static {p0, v0, v5, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulseContinue:Landroid/widget/EditText;

    .line 222
    iget p1, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0d014a

    invoke-static {p0, v0, v3, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->pulsePause:Landroid/widget/EditText;

    .line 224
    iget-object p1, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_c9

    .line 225
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 226
    const v2, 0x7f0d014c

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 227
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 228
    new-instance v2, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$E4h8urDroB2f3MDjNCvJNyfqAzE;

    invoke-direct {v2, p2, p3, p4}, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$E4h8urDroB2f3MDjNCvJNyfqAzE;-><init>(Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    :cond_c9
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 236
    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    const/4 p3, 0x4

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 240
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-object v0
.end method

.method private static collectBlocks(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V
    .registers 6

    .line 190
    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 192
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_26

    .line 193
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 195
    instance-of v3, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;

    if-eqz v3, :cond_23

    .line 196
    iget-object v3, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    check-cast v2, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$BlockHolder;->toSegment()Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 199
    :cond_26
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 2

    .line 265
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

.method private static fieldRow(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)Landroid/widget/EditText;
    .registers 9

    .line 245
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 248
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 255
    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 256
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 258
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    return-object p2
.end method

.method static synthetic lambda$buildBlockRow$1(Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;Landroid/view/View;)V
    .registers 4

    .line 229
    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 231
    return-void
.end method

.method static synthetic lambda$openEditor$0(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/widget/Switch;Lcom/isaigu/gymapp/bean/TrainProgram;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .registers 7

    .line 180
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->collectBlocks(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 181
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    iput-boolean p0, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    .line 182
    invoke-static {p3, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->saveEntry(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 183
    invoke-static {p4, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->updateSummary(Landroid/widget/TextView;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 184
    return-void
.end method

.method private static openEditor(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .registers 12

    .line 125
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    if-nez v0, :cond_7

    .line 127
    return-void

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    .line 130
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v3

    .line 131
    iget-object p0, v3, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-nez p0, :cond_1a

    .line 132
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v3, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    .line 134
    :cond_1a
    iget-object p0, v3, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v7, 0x0

    if-eqz p0, :cond_34

    .line 135
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    move-object p0, v7

    .line 136
    :goto_2b
    iget-object v1, v3, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_34
    new-instance p0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 143
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 144
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v1, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;-><init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 174
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 176
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0140

    .line 177
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0d014d

    new-instance v8, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;

    move-object v1, v8

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;-><init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/widget/Switch;Lcom/isaigu/gymapp/bean/TrainProgram;Landroid/widget/TextView;)V

    .line 179
    invoke-virtual {p0, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    .line 185
    invoke-virtual {p0, p1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void
.end method

.method private static persist(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .registers 4

    .line 111
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    .line 112
    if-nez p0, :cond_7

    .line 113
    return-void

    .line 115
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iput-boolean p1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    .line 117
    iget-object p1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-nez p1, :cond_1c

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    .line 120
    :cond_1c
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->saveEntry(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 121
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->updateSummary(Landroid/widget/TextView;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 122
    return-void
.end method

.method public static refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 82
    if-nez p0, :cond_7

    .line 83
    return-void

    .line 85
    :cond_7
    return-void
.end method

.method private static refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/TextView;)V
    .registers 6

    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-boolean v1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    new-instance v1, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-boolean p0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    invoke-static {p3, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->updateSummary(Landroid/widget/TextView;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    .line 102
    return-void
.end method

.method private static updateSummary(Landroid/widget/TextView;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V
    .registers 6

    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    iget-object v1, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 107
    :goto_11
    const v1, 0x7f0d0143

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
