.class public final Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;
.super Ljava/lang/Object;
.source "TrainAddParticipantHelper.java"


# static fields
.field private static final BTN_ID:I = 0x7f09028a

.field private static final DRAWABLE_WHITE_CIRCLE:I = 0x7f0800ca

.field private static final MIPMAP_ADD3:I = 0x7f0c0002

.field private static final RECYCLER_ID:I = 0x7f090149

.field private static final STR_ADD:I = 0x7f0d0174

.field private static final WRAP_ID:I = 0x7f09028d

.field private static attached:Z

.field private static host:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field private static overlayHost:Landroid/widget/FrameLayout;

.field private static overlayWrap:Landroid/view/View;

.field private static recycler:Landroid/support/v7/widget/RecyclerView;

.field private static final refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$3;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$3;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->refreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->scheduleRefresh()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->openAddUserDialog()V

    return-void
.end method

.method public static attach(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V
    .registers 3

    .line 41
    if-eqz p0, :cond_41

    if-eqz p1, :cond_41

    sget-boolean v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->attached:Z

    if-eqz v0, :cond_9

    goto :goto_41

    .line 44
    :cond_9
    const v0, 0x7f090149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 45
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_15

    .line 46
    return-void

    .line 48
    :cond_15
    sput-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->host:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 49
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    sput-object p1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    .line 50
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->ensureOverlay(Landroid/content/Context;)V

    .line 51
    sget-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    new-instance p1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$1;

    invoke-direct {p1}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 57
    sget-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance p1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$2;

    invoke-direct {p1}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->attached:Z

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->scheduleRefresh()V

    .line 65
    return-void

    .line 42
    :cond_41
    :goto_41
    return-void
.end method

.method private static buildOverlay(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 193
    const/high16 v1, 0x42800000    # 64.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 194
    const/high16 v3, 0x42500000    # 52.0f

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    .line 196
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    const v5, 0x7f09028d

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 198
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 200
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 201
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 203
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    const v6, 0x7f0800ca

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 205
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 209
    const v6, 0x7f09028a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setId(I)V

    .line 210
    const v6, 0x7f0c0002

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 211
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v3, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 212
    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    const p0, 0x7f0d0174

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    .line 216
    const/4 p0, 0x2

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v3, p0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 217
    const p0, -0x99999a

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    const/high16 v5, 0x40800000    # 4.0f

    mul-float v0, v0, v5

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 223
    invoke-virtual {v4, v3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$4;

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$4;-><init>()V

    .line 231
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-object v4
.end method

.method private static ensureOverlay(Landroid/content/Context;)V
    .registers 6

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 164
    return-void

    .line 166
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 168
    sget-object v2, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 170
    sget-object v3, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    .line 172
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    sget-object v2, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 174
    sget-object v2, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 176
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    sget-object v3, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-static {p0}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->buildOverlay(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    .line 182
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 185
    sget-object v2, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v2, v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    sget-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    sget-object p0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 189
    return-void
.end method

.method private static openAddUserDialog()V
    .registers 2

    .line 237
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->host:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-nez v0, :cond_5

    .line 238
    return-void

    .line 240
    :cond_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 241
    if-nez v0, :cond_c

    .line 242
    return-void

    .line 244
    :cond_c
    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 245
    return-void
.end method

.method private static positionOverlay(Landroid/view/View;)V
    .registers 10

    .line 140
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 141
    new-array v0, v0, [I

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    sget-object v2, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 145
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v3, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 146
    const/high16 v5, 0x42180000    # 38.0f

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 147
    sget-object v4, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 148
    sget-object v5, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 149
    const/4 v6, 0x0

    if-lez v4, :cond_36

    if-gtz v5, :cond_4f

    .line 150
    :cond_36
    sget-object v4, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    .line 151
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 152
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 150
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 153
    sget-object v4, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 154
    sget-object v5, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 156
    :cond_4f
    aget v7, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    sub-int/2addr v7, v3

    aget v3, v0, v6

    sub-int/2addr v7, v3

    int-to-float v3, v7

    .line 157
    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    sub-int/2addr v1, v5

    add-int/2addr v1, v2

    aget p0, v0, v4

    sub-int/2addr v1, p0

    int-to-float p0, v1

    .line 158
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    .line 160
    return-void
.end method

.method public static refresh()V
    .registers 8

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->host:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v0, :cond_ac

    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_ac

    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    if-eqz v1, :cond_ac

    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_12

    goto/16 :goto_ac

    .line 71
    :cond_12
    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 72
    const/16 v1, 0x8

    if-nez v0, :cond_1e

    .line 73
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void

    .line 76
    :cond_1e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_a6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto/16 :goto_a6

    .line 81
    :cond_2c
    nop

    .line 82
    nop

    .line 83
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_4f

    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 85
    if-nez v6, :cond_42

    .line 86
    goto :goto_4c

    .line 88
    :cond_42
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 89
    const/4 v5, 0x1

    goto :goto_4c

    .line 91
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    .line 83
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 94
    :cond_4f
    if-eqz v4, :cond_a0

    const/4 v3, 0x6

    if-ge v4, v3, :cond_a0

    if-eqz v5, :cond_57

    goto :goto_a0

    .line 98
    :cond_57
    nop

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_5d
    if-ltz v3, :cond_72

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 101
    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 102
    nop

    .line 103
    goto :goto_73

    .line 99
    :cond_6f
    add-int/lit8 v3, v3, -0x1

    goto :goto_5d

    :cond_72
    const/4 v3, -0x1

    .line 106
    :goto_73
    if-gez v3, :cond_7b

    .line 107
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void

    .line 110
    :cond_7b
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 111
    instance-of v4, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v4, :cond_8b

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void

    .line 115
    :cond_8b
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 116
    if-nez v0, :cond_97

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void

    .line 120
    :cond_97
    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->positionOverlay(Landroid/view/View;)V

    .line 122
    return-void

    .line 95
    :cond_a0
    :goto_a0
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void

    .line 78
    :cond_a6
    :goto_a6
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void

    .line 69
    :cond_ac
    :goto_ac
    return-void
.end method

.method private static scheduleRefresh()V
    .registers 2

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    if-nez v0, :cond_5

    .line 126
    return-void

    .line 128
    :cond_5
    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    sget-object v0, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->overlayWrap:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
