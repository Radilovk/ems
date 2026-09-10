.class public Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Lcom/jcodecraeer/xrecyclerview/BaseRefreshHeader;


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0xb4

.field private static final XR_REFRESH_KEY:Ljava/lang/String; = "XR_REFRESH_KEY"

.field private static final XR_REFRESH_TIME_KEY:Ljava/lang/String; = "XR_REFRESH_TIME_KEY"


# instance fields
.field private customRefreshPsKey:Ljava/lang/String;

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mHeaderRefreshTimeContainer:Landroid/widget/LinearLayout;

.field private mHeaderTimeView:Landroid/widget/TextView;

.field public mMeasuredHeight:I

.field private mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;

.field private mState:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->initView()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->initView()V

    .line 74
    return-void
.end method

.method public static friendlyTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 315
    .local v1, "ct":I
    if-nez v1, :cond_0

    .line 316
    const-string v0, "\u521a\u521a"

    return-object v0

    .line 319
    :cond_0
    const/16 v0, 0x3c

    if-lez v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2\u524d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :cond_1
    const/16 v2, 0xe10

    if-lt v1, v0, :cond_2

    if-ge v1, v2, :cond_2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, v1, 0x3c

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u949f\u524d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_2
    const v0, 0x15180

    if-lt v1, v2, :cond_3

    if-ge v1, v0, :cond_3

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, v1, 0xe10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5c0f\u65f6\u524d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_3
    const v2, 0x278d00

    if-lt v1, v0, :cond_4

    if-ge v1, v2, :cond_4

    .line 329
    div-int v0, v1, v0

    .line 330
    .local v0, "day":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5929\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 332
    .end local v0    # "day":I
    :cond_4
    const v0, 0x1da9c00

    if-lt v1, v2, :cond_5

    if-ge v1, v0, :cond_5

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6708\u524d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5e74\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static friendlyTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/util/Date;

    .line 308
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->friendlyTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastRefreshTime()J
    .locals 5

    .line 198
    const-string v0, "XR_REFRESH_KEY"

    .line 199
    .local v0, "spKeyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    .line 202
    :cond_0
    nop

    .line 203
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x8000

    .line 204
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    .local v1, "s":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "XR_REFRESH_TIME_KEY"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private initView()V
    .locals 13

    .line 89
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$layout;->listview_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mContainer:Landroid/widget/LinearLayout;

    .line 92
    sget v1, Lcom/jcodecraeer/xrecyclerview/R$id;->header_refresh_time_container:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mHeaderRefreshTimeContainer:Landroid/widget/LinearLayout;

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setPadding(IIII)V

    .line 100
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setGravity(I)V

    .line 103
    sget v1, Lcom/jcodecraeer/xrecyclerview/R$id;->listview_header_arrow:I

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 104
    sget v1, Lcom/jcodecraeer/xrecyclerview/R$id;->refresh_status_textview:I

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mStatusTextView:Landroid/widget/TextView;

    .line 107
    sget v1, Lcom/jcodecraeer/xrecyclerview/R$id;->listview_header_progressbar:I

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 108
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 109
    const v3, -0x4a4a4b

    invoke-virtual {v1, v3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 110
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 111
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    if-eqz v1, :cond_0

    .line 112
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v1, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 114
    :cond_0
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 116
    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 118
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 120
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 123
    sget v1, Lcom/jcodecraeer/xrecyclerview/R$id;->last_refresh_time:I

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mHeaderTimeView:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0, v2, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->measure(II)V

    .line 125
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mMeasuredHeight:I

    .line 126
    return-void
.end method

.method private saveLastRefreshTime(J)V
    .locals 4
    .param p1, "refreshTime"    # J

    .line 209
    const-string v0, "XR_REFRESH_KEY"

    .line 210
    .local v0, "spKeyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    .line 213
    :cond_0
    nop

    .line 214
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x8000

    .line 215
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 216
    .local v1, "s":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "XR_REFRESH_TIME_KEY"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 3
    .param p1, "destHeight"    # I

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 295
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 296
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$3;

    invoke-direct {v1, p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$3;-><init>(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 304
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 48
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->destroy()V

    .line 50
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 54
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 58
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 60
    :cond_2
    return-void
.end method

.method public getState()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return v1
.end method

.method public onMove(F)V
    .locals 3
    .param p1, "delta"    # F

    .line 245
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 246
    :cond_0
    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setVisibleHeight(I)V

    .line 247
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v0

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mMeasuredHeight:I

    if-le v0, v2, :cond_1

    .line 249
    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    .line 255
    :cond_2
    :goto_0
    return-void
.end method

.method public refreshComplete()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getLastRefreshTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->friendlyTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->saveLastRefreshTime(J)V

    .line 223
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$1;

    invoke-direct {v1, p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$1;-><init>(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void
.end method

.method public releaseAction()Z
    .locals 5

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "isOnRefresh":Z
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    .line 261
    .local v1, "height":I
    if-nez v1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v2

    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mMeasuredHeight:I

    const/4 v4, 0x2

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-ge v2, v4, :cond_1

    .line 265
    invoke-virtual {p0, v4}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    .line 266
    const/4 v0, 0x1

    .line 269
    :cond_1
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    .line 272
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-eq v2, v4, :cond_2

    .line 273
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->smoothScrollTo(I)V

    .line 276
    :cond_2
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-ne v2, v4, :cond_3

    .line 277
    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mMeasuredHeight:I

    .line 278
    .local v2, "destHeight":I
    invoke-direct {p0, v2}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->smoothScrollTo(I)V

    .line 281
    .end local v2    # "destHeight":I
    :cond_3
    return v0
.end method

.method public reset()V
    .locals 4

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->smoothScrollTo(I)V

    .line 286
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$2;

    invoke-direct {v1, p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader$2;-><init>(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 141
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 5
    .param p1, "style"    # I

    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    if-eqz v0, :cond_1

    .line 131
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010077

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 134
    const v1, -0x4a4a4b

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 135
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 136
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 138
    :cond_1
    :goto_0
    return-void
.end method

.method public setRefreshTimeVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 77
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mHeaderRefreshTimeContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 78
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 5
    .param p1, "state"    # I

    .line 145
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne p1, v2, :cond_2

    .line 148
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 149
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3, v0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setVisibility(I)V

    .line 152
    :cond_1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mMeasuredHeight:I

    invoke-direct {p0, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->smoothScrollTo(I)V

    goto :goto_0

    .line 153
    :cond_2
    if-ne p1, v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mProgressBar:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    if-eqz v0, :cond_4

    .line 160
    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setVisibility(I)V

    .line 163
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getLastRefreshTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->friendlyTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_1

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mStatusTextView:Landroid/widget/TextView;

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$string;->refresh_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    goto :goto_1

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mStatusTextView:Landroid/widget/TextView;

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$string;->refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    goto :goto_1

    .line 175
    :cond_7
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-eq v1, v0, :cond_b

    .line 176
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 177
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mStatusTextView:Landroid/widget/TextView;

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$string;->listview_header_hint_release:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 166
    :cond_8
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-ne v1, v0, :cond_9

    .line 167
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :cond_9
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    if-ne v0, v2, :cond_a

    .line 170
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mStatusTextView:Landroid/widget/TextView;

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$string;->listview_header_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    nop

    .line 190
    :cond_b
    :goto_1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mState:I

    .line 191
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 232
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 235
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public setXrRefreshTimeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->customRefreshPsKey:Ljava/lang/String;

    .line 85
    :cond_0
    return-void
.end method
