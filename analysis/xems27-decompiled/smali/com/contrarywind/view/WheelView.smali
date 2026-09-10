.class public Lcom/contrarywind/view/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/contrarywind/view/WheelView$DividerType;,
        Lcom/contrarywind/view/WheelView$ACTION;
    }
.end annotation


# static fields
.field private static final SCALE_CONTENT:F = 0.8f

.field private static final VELOCITY_FLING:I = 0x5


# instance fields
.field private CENTER_CONTENT_OFFSET:F

.field private final DEFAULT_TEXT_TARGET_SKEWX:F

.field private adapter:Lcom/contrarywind/adapter/WheelAdapter;

.field private centerY:F

.field private change:I

.field private context:Landroid/content/Context;

.field private dividerColor:I

.field private dividerType:Lcom/contrarywind/view/WheelView$DividerType;

.field private drawCenterContentStart:I

.field private drawOutContentStart:I

.field private firstLineY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private initPosition:I

.field private isCenterLabel:Z

.field private isLoop:Z

.field private isOptions:Z

.field private itemHeight:F

.field private itemsVisible:I

.field private label:Ljava/lang/String;

.field private lineSpacingMultiplier:F

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field private mOffset:I

.field private maxTextHeight:I

.field private maxTextWidth:I

.field private measuredHeight:I

.field private measuredWidth:I

.field private onItemSelectedListener:Lcom/contrarywind/listener/OnItemSelectedListener;

.field private paintCenterText:Landroid/graphics/Paint;

.field private paintIndicator:Landroid/graphics/Paint;

.field private paintOuterText:Landroid/graphics/Paint;

.field private preCurrentIndex:I

.field private previousY:F

.field private radius:I

.field private secondLineY:F

.field private selectedItem:I

.field private startTime:J

.field private textColorCenter:I

.field private textColorOut:I

.field private textSize:I

.field private textXOffset:I

.field private totalScrollY:F

.field private typeface:Landroid/graphics/Typeface;

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/contrarywind/view/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/contrarywind/view/WheelView;->isOptions:Z

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/contrarywind/view/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/contrarywind/view/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 81
    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    .line 104
    const/16 v1, 0xb

    iput v1, p0, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    .line 112
    iput v0, p0, Lcom/contrarywind/view/WheelView;->mOffset:I

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/contrarywind/view/WheelView;->previousY:F

    .line 114
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/contrarywind/view/WheelView;->startTime:J

    .line 120
    const/16 v1, 0x11

    iput v1, p0, Lcom/contrarywind/view/WheelView;->mGravity:I

    .line 121
    iput v0, p0, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    .line 122
    iput v0, p0, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    .line 126
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/contrarywind/view/WheelView;->DEFAULT_TEXT_TARGET_SKEWX:F

    .line 135
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/contrarywind/view/R$dimen;->pickerview_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    .line 137
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 138
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 140
    .local v3, "density":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_0

    .line 141
    const v4, 0x4019999a    # 2.4f

    iput v4, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    .line 142
    :cond_0
    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v6, v4, v3

    if-gtz v6, :cond_1

    cmpg-float v6, v3, v5

    if-gez v6, :cond_1

    .line 143
    const v4, 0x40666666    # 3.6f

    iput v4, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    .line 144
    :cond_1
    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    cmpg-float v4, v3, v5

    if-gez v4, :cond_2

    .line 145
    const/high16 v4, 0x40900000    # 4.5f

    iput v4, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    .line 146
    :cond_2
    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_3

    cmpg-float v5, v3, v4

    if-gez v5, :cond_3

    .line 147
    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    .line 148
    :cond_3
    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    .line 149
    const/high16 v4, 0x40200000    # 2.5f

    mul-float v4, v4, v3

    iput v4, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    .line 152
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 153
    sget-object v4, Lcom/contrarywind/view/R$styleable;->pickerview:[I

    invoke-virtual {p1, p2, v4, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_gravity:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->mGravity:I

    .line 155
    sget v1, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textColorOut:I

    const v4, -0x575758

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->textColorOut:I

    .line 156
    sget v1, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textColorCenter:I

    const v4, -0xd5d5d6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->textColorCenter:I

    .line 157
    sget v1, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_dividerColor:I

    const v4, -0x2a2a2b

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->dividerColor:I

    .line 158
    sget v1, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textSize:I

    iget v4, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    .line 159
    sget v1, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_lineSpacingMultiplier:I

    iget v4, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->judgeLineSpace()V

    .line 164
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->initLoopView(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/contrarywind/view/WheelView;)Lcom/contrarywind/listener/OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/contrarywind/view/WheelView;

    .line 37
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->onItemSelectedListener:Lcom/contrarywind/listener/OnItemSelectedListener;

    return-object v0
.end method

.method private getContentText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .line 575
    if-nez p1, :cond_0

    .line 576
    const-string v0, ""

    return-object v0

    .line 577
    :cond_0
    instance-of v0, p1, Lcom/contrarywind/interfaces/IPickerViewData;

    if-eqz v0, :cond_1

    .line 578
    move-object v0, p1

    check-cast v0, Lcom/contrarywind/interfaces/IPickerViewData;

    invoke-interface {v0}, Lcom/contrarywind/interfaces/IPickerViewData;->getPickerViewText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 579
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLoopMappingIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 558
    if-gez p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 560
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 563
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->getLoopMappingIndex(I)I

    move-result p1

    .line 565
    :cond_1
    :goto_0
    return p1
.end method

.method private initLoopView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->context:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/contrarywind/timer/MessageHandler;

    invoke-direct {v0, p0}, Lcom/contrarywind/timer/MessageHandler;-><init>(Lcom/contrarywind/view/WheelView;)V

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->handler:Landroid/os/Handler;

    .line 181
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/contrarywind/listener/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/contrarywind/listener/LoopViewGestureListener;-><init>(Lcom/contrarywind/view/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    .line 187
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->initPaints()V

    .line 188
    return-void
.end method

.method private initPaints()V
    .locals 3

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    .line 192
    iget v1, p0, Lcom/contrarywind/view/WheelView;->textColorOut:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    .line 198
    iget v2, p0, Lcom/contrarywind/view/WheelView;->textColorCenter:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 201
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 202
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    .line 205
    iget v2, p0, Lcom/contrarywind/view/WheelView;->dividerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/contrarywind/view/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method private judgeLineSpace()V
    .locals 3

    .line 171
    iget v0, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 172
    iput v1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    goto :goto_0

    .line 173
    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 174
    iput v1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method private measureTextWidthHeight()V
    .locals 8

    .line 246
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 247
    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2, v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/contrarywind/view/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "s1":Ljava/lang/String;
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 253
    .local v3, "textWidth":I
    iget v4, p0, Lcom/contrarywind/view/WheelView;->maxTextWidth:I

    if-le v3, v4, :cond_0

    .line 254
    iput v3, p0, Lcom/contrarywind/view/WheelView;->maxTextWidth:I

    .line 256
    :cond_0
    iget-object v4, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string v6, "\u661f\u671f"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v7

    iput v4, p0, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    .line 247
    .end local v2    # "s1":Ljava/lang/String;
    .end local v3    # "textWidth":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    iget v2, p0, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iput v1, p0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    .line 262
    return-void
.end method

.method private measuredCenterContentStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .line 587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 588
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 589
    iget v1, p0, Lcom/contrarywind/view/WheelView;->mGravity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 591
    :cond_0
    iget-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isOptions:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    .line 596
    goto :goto_1

    .line 592
    :cond_2
    :goto_0
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    goto :goto_1

    .line 601
    :cond_3
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    goto :goto_1

    .line 598
    :cond_4
    iput v3, p0, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    .line 599
    nop

    .line 604
    :goto_1
    return-void
.end method

.method private measuredOutContentStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 608
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 609
    iget v1, p0, Lcom/contrarywind/view/WheelView;->mGravity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 611
    :cond_0
    iget-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isOptions:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    .line 616
    goto :goto_1

    .line 612
    :cond_2
    :goto_0
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    goto :goto_1

    .line 621
    :cond_3
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    goto :goto_1

    .line 618
    :cond_4
    iput v3, p0, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    .line 619
    nop

    .line 624
    :goto_1
    return-void
.end method

.method private reMeasureTextSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "contentText"    # Ljava/lang/String;

    .line 540
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 541
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 542
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 543
    .local v1, "width":I
    iget v2, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    .line 544
    .local v2, "size":I
    :goto_0
    iget v4, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    if-le v1, v4, :cond_0

    .line 545
    add-int/lit8 v2, v2, -0x1

    .line 547
    iget-object v4, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 548
    iget-object v4, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, p1, v3, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 549
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    .line 552
    :cond_0
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 553
    return-void
.end method

.method private remeasure()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->measureTextWidthHeight()V

    .line 219
    iget v0, p0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    iget v1, p0, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 221
    .local v0, "halfCircumference":I
    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->measuredHeight:I

    .line 223
    int-to-double v1, v0

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->radius:I

    .line 225
    iget v1, p0, Lcom/contrarywind/view/WheelView;->widthMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    .line 227
    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    sub-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/contrarywind/view/WheelView;->firstLineY:F

    .line 228
    int-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    iput v1, p0, Lcom/contrarywind/view/WheelView;->secondLineY:F

    .line 229
    iget v2, p0, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/contrarywind/view/WheelView;->centerY:F

    .line 232
    iget v1, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 233
    iget-boolean v1, p0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    .line 239
    :cond_2
    :goto_0
    iget v1, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    iput v1, p0, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    .line 240
    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 288
    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/contrarywind/adapter/WheelAdapter;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    iget-boolean v2, p0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/contrarywind/view/WheelView;->selectedItem:I

    if-ltz v2, :cond_1

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 341
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->selectedItem:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 343
    :cond_2
    iget v0, p0, Lcom/contrarywind/view/WheelView;->selectedItem:I

    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInitPosition()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .line 787
    iget v0, p0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "iRet":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 726
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 727
    .local v1, "len":I
    new-array v2, v1, [F

    .line 728
    .local v2, "widths":[F
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 729
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 730
    aget v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    .line 729
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 733
    .end local v1    # "len":I
    .end local v2    # "widths":[F
    .end local v3    # "j":I
    :cond_0
    return v0
.end method

.method public getTotalScrollY()F
    .locals 1

    .line 779
    iget v0, p0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    return v0
.end method

.method public isCenterLabel(Z)V
    .locals 0
    .param p1, "isCenterLabel"    # Z

    .line 716
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    .line 717
    return-void
.end method

.method public isLoop()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 363
    :cond_0
    iget v0, v1, Lcom/contrarywind/view/WheelView;->initPosition:I

    const/4 v9, 0x0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/contrarywind/view/WheelView;->initPosition:I

    .line 367
    iget v2, v1, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    new-array v11, v2, [Ljava/lang/Object;

    .line 369
    .local v11, "visibles":[Ljava/lang/Object;
    iget v2, v1, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    iget v3, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/contrarywind/view/WheelView;->change:I

    .line 374
    :try_start_0
    iget-object v3, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v3}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/ArithmeticException;
    const-string v2, "WheelView"

    const-string v3, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    :goto_0
    iget-boolean v0, v1, Lcom/contrarywind/view/WheelView;->isLoop:Z

    if-nez v0, :cond_2

    .line 380
    iget v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    if-gez v0, :cond_1

    .line 381
    iput v9, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    .line 383
    :cond_1
    iget v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v2, v10

    if-le v0, v2, :cond_4

    .line 384
    iget-object v0, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v10

    iput v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    goto :goto_1

    .line 387
    :cond_2
    iget v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    if-gez v0, :cond_3

    .line 388
    iget-object v0, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    iget v2, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    .line 390
    :cond_3
    iget v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v2, v10

    if-le v0, v2, :cond_4

    .line 391
    iget v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    .line 395
    :cond_4
    :goto_1
    iget v0, v1, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    iget v2, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    rem-float/2addr v0, v2

    .line 398
    .local v0, "itemHeightOffset":F
    const/4 v2, 0x0

    move v12, v2

    .line 399
    .local v12, "counter":I
    :goto_2
    iget v2, v1, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    if-ge v12, v2, :cond_8

    .line 400
    iget v3, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v12

    sub-int/2addr v3, v2

    .line 402
    .local v3, "index":I
    iget-boolean v2, v1, Lcom/contrarywind/view/WheelView;->isLoop:Z

    if-eqz v2, :cond_5

    .line 403
    invoke-direct {v1, v3}, Lcom/contrarywind/view/WheelView;->getLoopMappingIndex(I)I

    move-result v3

    .line 404
    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2, v3}, Lcom/contrarywind/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v11, v12

    goto :goto_3

    .line 405
    :cond_5
    const-string v2, ""

    if-gez v3, :cond_6

    .line 406
    aput-object v2, v11, v12

    goto :goto_3

    .line 407
    :cond_6
    iget-object v4, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v4}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v4

    sub-int/2addr v4, v10

    if-le v3, v4, :cond_7

    .line 408
    aput-object v2, v11, v12

    goto :goto_3

    .line 410
    :cond_7
    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v2, v3}, Lcom/contrarywind/adapter/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v11, v12

    .line 413
    :goto_3
    nop

    .end local v3    # "index":I
    add-int/lit8 v12, v12, 0x1

    .line 415
    goto :goto_2

    .line 418
    :cond_8
    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    sget-object v3, Lcom/contrarywind/view/WheelView$DividerType;->WRAP:Lcom/contrarywind/view/WheelView$DividerType;

    const/4 v13, 0x0

    if-ne v2, v3, :cond_b

    .line 422
    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 423
    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    iget v3, v1, Lcom/contrarywind/view/WheelView;->maxTextWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0xc

    int-to-float v2, v2

    .local v2, "startX":F
    goto :goto_4

    .line 425
    .end local v2    # "startX":F
    :cond_9
    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    iget v3, v1, Lcom/contrarywind/view/WheelView;->maxTextWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0xc

    int-to-float v2, v2

    .line 428
    .restart local v2    # "startX":F
    :goto_4
    cmpg-float v3, v2, v13

    if-gtz v3, :cond_a

    .line 429
    const/high16 v2, 0x41200000    # 10.0f

    move v14, v2

    goto :goto_5

    .line 428
    :cond_a
    move v14, v2

    .line 431
    .end local v2    # "startX":F
    .local v14, "startX":F
    :goto_5
    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v2, v2

    sub-float v15, v2, v14

    .line 432
    .local v15, "endX":F
    iget v6, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    iget-object v7, v1, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v14

    move v4, v6

    move v5, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 433
    iget v6, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    iget-object v7, v1, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 434
    .end local v14    # "startX":F
    .end local v15    # "endX":F
    goto :goto_6

    .line 435
    :cond_b
    const/4 v3, 0x0

    iget v6, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v5, v2

    iget-object v7, v1, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 436
    iget v6, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v5, v2

    iget-object v7, v1, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 440
    :goto_6
    iget-object v2, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, v1, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    if-eqz v2, :cond_c

    .line 442
    iget v2, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    iget-object v3, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v4, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/contrarywind/view/WheelView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 443
    .local v2, "drawRightContentStart":I
    iget-object v3, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    int-to-float v4, v2

    iget v5, v1, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/contrarywind/view/WheelView;->centerY:F

    iget-object v6, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 446
    .end local v2    # "drawRightContentStart":I
    :cond_c
    const/4 v2, 0x0

    .line 447
    .end local v12    # "counter":I
    .local v2, "counter":I
    :goto_7
    iget v3, v1, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    if-ge v2, v3, :cond_16

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 451
    iget v3, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    sub-float/2addr v3, v0

    iget v4, v1, Lcom/contrarywind/view/WheelView;->radius:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 454
    .local v3, "radian":D
    const-wide v5, 0x4056800000000000L    # 90.0

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double v14, v3, v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    sub-double/2addr v5, v14

    double-to-float v5, v5

    .line 457
    .local v5, "angle":F
    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v7, v5, v6

    if-gez v7, :cond_15

    const/high16 v7, -0x3d4c0000    # -90.0f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_d

    move-object/from16 v18, v11

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 461
    :cond_d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v6

    float-to-double v6, v7

    const-wide v14, 0x400199999999999aL    # 2.2

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 466
    .local v6, "offsetCoefficient":F
    iget-boolean v7, v1, Lcom/contrarywind/view/WheelView;->isCenterLabel:Z

    if-nez v7, :cond_e

    iget-object v7, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    aget-object v7, v11, v2

    invoke-direct {v1, v7}, Lcom/contrarywind/view/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v11, v2

    invoke-direct {v1, v12}, Lcom/contrarywind/view/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "contentText":Ljava/lang/String;
    goto :goto_8

    .line 469
    .end local v7    # "contentText":Ljava/lang/String;
    :cond_e
    aget-object v7, v11, v2

    invoke-direct {v1, v7}, Lcom/contrarywind/view/WheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7    # "contentText":Ljava/lang/String;
    :goto_8
    invoke-direct {v1, v7}, Lcom/contrarywind/view/WheelView;->reMeasureTextSize(Ljava/lang/String;)V

    .line 474
    invoke-direct {v1, v7}, Lcom/contrarywind/view/WheelView;->measuredCenterContentStart(Ljava/lang/String;)V

    .line 475
    invoke-direct {v1, v7}, Lcom/contrarywind/view/WheelView;->measuredOutContentStart(Ljava/lang/String;)V

    .line 476
    iget v12, v1, Lcom/contrarywind/view/WheelView;->radius:I

    int-to-double v14, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    iget v12, v1, Lcom/contrarywind/view/WheelView;->radius:I

    move-object/from16 v18, v11

    .end local v11    # "visibles":[Ljava/lang/Object;
    .local v18, "visibles":[Ljava/lang/Object;
    int-to-double v10, v12

    mul-double v16, v16, v10

    sub-double v14, v14, v16

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v12, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    move-wide/from16 v19, v14

    int-to-double v13, v12

    mul-double v10, v10, v13

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double v14, v19, v10

    double-to-float v10, v14

    .line 478
    .local v10, "translateY":F
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 480
    iget v11, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v14, v10, v11

    if-gtz v14, :cond_f

    iget v14, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v14, v14

    add-float/2addr v14, v10

    cmpl-float v11, v14, v11

    if-ltz v11, :cond_f

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    iget v11, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v11, v11

    iget v14, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    sub-float/2addr v14, v10

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v15, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 484
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float v11, v11, v12

    invoke-virtual {v8, v13, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 485
    iget v11, v1, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    int-to-float v11, v11

    iget v12, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v12, v12

    iget-object v14, v1, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v11, v12, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    iget v11, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    sub-float/2addr v11, v10

    iget v12, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v12, v12

    iget v14, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    float-to-int v14, v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v11, v12, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 489
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v13

    invoke-virtual {v8, v13, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 490
    iget v11, v1, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    int-to-float v11, v11

    iget v12, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v12, v12

    iget v13, v1, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v12, v13

    iget-object v13, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v14, 0x0

    goto/16 :goto_b

    .line 492
    :cond_f
    iget v11, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    cmpg-float v14, v10, v11

    if-gtz v14, :cond_10

    iget v14, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v14, v14

    add-float/2addr v14, v10

    cmpl-float v11, v14, v11

    if-ltz v11, :cond_10

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    iget v11, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v11, v11

    iget v14, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    sub-float/2addr v14, v10

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v15, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 496
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    mul-float v11, v11, v13

    invoke-virtual {v8, v13, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 497
    iget v11, v1, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    int-to-float v11, v11

    iget v14, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v14, v14

    iget v15, v1, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v14, v15

    iget-object v15, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v11, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    iget v11, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    sub-float/2addr v11, v10

    iget v14, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    int-to-float v14, v14

    iget v15, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    float-to-int v15, v15

    int-to-float v15, v15

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v11, v14, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 501
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v9, v14

    mul-float v9, v9, v12

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 502
    iget v9, v1, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    int-to-float v9, v9

    iget v11, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v11, v11

    iget-object v12, v1, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v14, 0x0

    goto/16 :goto_b

    .line 504
    :cond_10
    iget v9, v1, Lcom/contrarywind/view/WheelView;->firstLineY:F

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_11

    iget v9, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v11, v9

    add-float/2addr v11, v10

    iget v14, v1, Lcom/contrarywind/view/WheelView;->secondLineY:F

    cmpg-float v11, v11, v14

    if-gtz v11, :cond_11

    .line 508
    int-to-float v9, v9

    iget v11, v1, Lcom/contrarywind/view/WheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v9, v11

    .line 509
    .local v9, "Y":F
    iget v11, v1, Lcom/contrarywind/view/WheelView;->drawCenterContentStart:I

    int-to-float v11, v11

    iget-object v12, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v11, v9, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 512
    iget v11, v1, Lcom/contrarywind/view/WheelView;->preCurrentIndex:I

    iget v12, v1, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v2

    sub-int/2addr v11, v12

    iput v11, v1, Lcom/contrarywind/view/WheelView;->selectedItem:I

    .line 514
    .end local v9    # "Y":F
    const/4 v14, 0x0

    goto :goto_b

    .line 516
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    iget v9, v1, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    iget v11, v1, Lcom/contrarywind/view/WheelView;->itemHeight:F

    float-to-int v11, v11

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v14, v9, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 518
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v9, v14

    mul-float v9, v9, v12

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 520
    iget-object v9, v1, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v11, v1, Lcom/contrarywind/view/WheelView;->textXOffset:I

    const/4 v12, -0x1

    if-nez v11, :cond_12

    const/4 v11, 0x0

    goto :goto_9

    :cond_12
    if-lez v11, :cond_13

    const/4 v11, 0x1

    goto :goto_9

    :cond_13
    const/4 v11, -0x1

    :goto_9
    const/4 v14, 0x0

    cmpl-float v15, v5, v14

    if-lez v15, :cond_14

    goto :goto_a

    :cond_14
    const/4 v12, 0x1

    :goto_a
    mul-int v11, v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    mul-float v11, v11, v6

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 522
    iget-object v9, v1, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    sub-float/2addr v13, v6

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v13, v13, v11

    float-to-int v11, v13

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 524
    iget v9, v1, Lcom/contrarywind/view/WheelView;->drawOutContentStart:I

    int-to-float v9, v9

    iget v11, v1, Lcom/contrarywind/view/WheelView;->textXOffset:I

    int-to-float v11, v11

    mul-float v11, v11, v6

    add-float/2addr v9, v11

    iget v11, v1, Lcom/contrarywind/view/WheelView;->maxTextHeight:I

    int-to-float v11, v11

    iget-object v12, v1, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 527
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 528
    iget-object v9, v1, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v11, v1, Lcom/contrarywind/view/WheelView;->textSize:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_d

    .line 457
    .end local v6    # "offsetCoefficient":F
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "translateY":F
    .end local v18    # "visibles":[Ljava/lang/Object;
    .restart local v11    # "visibles":[Ljava/lang/Object;
    :cond_15
    move-object/from16 v18, v11

    const/4 v14, 0x0

    .line 458
    .end local v11    # "visibles":[Ljava/lang/Object;
    .restart local v18    # "visibles":[Ljava/lang/Object;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 530
    :goto_d
    nop

    .end local v3    # "radian":D
    .end local v5    # "angle":F
    add-int/lit8 v2, v2, 0x1

    .line 531
    move-object/from16 v11, v18

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_7

    .line 532
    .end local v18    # "visibles":[Ljava/lang/Object;
    .restart local v11    # "visibles":[Ljava/lang/Object;
    :cond_16
    return-void
.end method

.method public final onItemSelected()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->onItemSelectedListener:Lcom/contrarywind/listener/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/contrarywind/view/WheelView$1;

    invoke-direct {v0, p0}, Lcom/contrarywind/view/WheelView$1;-><init>(Lcom/contrarywind/view/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/contrarywind/view/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 628
    iput p1, p0, Lcom/contrarywind/view/WheelView;->widthMeasureSpec:I

    .line 629
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->remeasure()V

    .line 630
    iget v0, p0, Lcom/contrarywind/view/WheelView;->measuredWidth:I

    iget v1, p0, Lcom/contrarywind/view/WheelView;->measuredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/contrarywind/view/WheelView;->setMeasuredDimension(II)V

    .line 631
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 636
    .local v1, "eventConsumed":Z
    const/4 v3, 0x0

    .line 638
    .local v3, "isIgnore":Z
    iget v4, v0, Lcom/contrarywind/view/WheelView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    mul-float v4, v4, v5

    .line 639
    .local v4, "top":F
    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    invoke-interface {v5}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v0, Lcom/contrarywind/view/WheelView;->initPosition:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, v0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    mul-float v5, v5, v7

    .line 640
    .local v5, "bottom":F
    const/high16 v7, 0x3e800000    # 0.25f

    .line 642
    .local v7, "ratio":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 669
    if-nez v1, :cond_1

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 684
    .local v8, "y":F
    iget v10, v0, Lcom/contrarywind/view/WheelView;->radius:I

    int-to-float v11, v10

    sub-float/2addr v11, v8

    int-to-float v10, v10

    div-float/2addr v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    iget v12, v0, Lcom/contrarywind/view/WheelView;->radius:I

    int-to-double v12, v12

    mul-double v10, v10, v12

    .line 686
    .local v10, "L":D
    iget v12, v0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v12, v13

    float-to-double v13, v13

    add-double/2addr v13, v10

    move v15, v7

    .end local v7    # "ratio":F
    .local v15, "ratio":F
    float-to-double v6, v12

    div-double/2addr v13, v6

    double-to-int v6, v13

    .line 687
    .local v6, "circlePosition":I
    iget v7, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    rem-float/2addr v7, v12

    add-float/2addr v7, v12

    rem-float/2addr v7, v12

    .line 689
    .local v7, "extraOffset":F
    iget v13, v0, Lcom/contrarywind/view/WheelView;->itemsVisible:I

    div-int/2addr v13, v9

    sub-int v9, v6, v13

    int-to-float v9, v9

    mul-float v9, v9, v12

    sub-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v0, Lcom/contrarywind/view/WheelView;->mOffset:I

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v9, v1

    .end local v1    # "eventConsumed":Z
    .local v9, "eventConsumed":Z
    iget-wide v1, v0, Lcom/contrarywind/view/WheelView;->startTime:J

    sub-long/2addr v12, v1

    const-wide/16 v1, 0x78

    cmp-long v14, v12, v1

    if-lez v14, :cond_0

    .line 693
    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V

    goto :goto_0

    .line 696
    :cond_0
    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->CLICK:Lcom/contrarywind/view/WheelView$ACTION;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V

    goto :goto_0

    .line 669
    .end local v6    # "circlePosition":I
    .end local v8    # "y":F
    .end local v9    # "eventConsumed":Z
    .end local v10    # "L":D
    .end local v15    # "ratio":F
    .restart local v1    # "eventConsumed":Z
    .local v7, "ratio":F
    :cond_1
    move v9, v1

    move v15, v7

    .end local v1    # "eventConsumed":Z
    .end local v7    # "ratio":F
    .restart local v9    # "eventConsumed":Z
    .restart local v15    # "ratio":F
    goto :goto_0

    .line 650
    .end local v9    # "eventConsumed":Z
    .end local v15    # "ratio":F
    .restart local v1    # "eventConsumed":Z
    .restart local v7    # "ratio":F
    :cond_2
    move v9, v1

    move v15, v7

    .end local v1    # "eventConsumed":Z
    .end local v7    # "ratio":F
    .restart local v9    # "eventConsumed":Z
    .restart local v15    # "ratio":F
    iget v1, v0, Lcom/contrarywind/view/WheelView;->previousY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 651
    .local v1, "dy":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/contrarywind/view/WheelView;->previousY:F

    .line 652
    iget v2, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    .line 655
    iget-boolean v6, v0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    if-nez v6, :cond_7

    .line 656
    iget v6, v0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    mul-float v6, v6, v15

    sub-float/2addr v2, v6

    const/4 v6, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    cmpg-float v2, v1, v6

    if-ltz v2, :cond_4

    :cond_3
    iget v2, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    iget v7, v0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    mul-float v7, v7, v15

    add-float/2addr v2, v7

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    cmpl-float v2, v1, v6

    if-lez v2, :cond_5

    .line 659
    :cond_4
    iget v2, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    .line 660
    const/4 v3, 0x1

    goto :goto_0

    .line 662
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 644
    .end local v9    # "eventConsumed":Z
    .end local v15    # "ratio":F
    .local v1, "eventConsumed":Z
    .restart local v7    # "ratio":F
    :cond_6
    move v9, v1

    move v15, v7

    .end local v1    # "eventConsumed":Z
    .end local v7    # "ratio":F
    .restart local v9    # "eventConsumed":Z
    .restart local v15    # "ratio":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/contrarywind/view/WheelView;->startTime:J

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/contrarywind/view/WheelView;->previousY:F

    .line 647
    nop

    .line 701
    :cond_7
    :goto_0
    if-nez v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/contrarywind/view/WheelView;->invalidate()V

    .line 704
    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public final scrollBy(F)V
    .locals 7
    .param p1, "velocityY"    # F

    .line 279
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 280
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/contrarywind/timer/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/contrarywind/timer/InertiaTimerTask;-><init>(Lcom/contrarywind/view/WheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 281
    return-void
.end method

.method public final setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/contrarywind/adapter/WheelAdapter;

    .line 326
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->adapter:Lcom/contrarywind/adapter/WheelAdapter;

    .line 327
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->remeasure()V

    .line 328
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->invalidate()V

    .line 329
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1
    .param p1, "currentItem"    # I

    .line 315
    iput p1, p0, Lcom/contrarywind/view/WheelView;->selectedItem:I

    .line 316
    iput p1, p0, Lcom/contrarywind/view/WheelView;->initPosition:I

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    .line 318
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->invalidate()V

    .line 319
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0
    .param p1, "cyclic"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->isLoop:Z

    .line 297
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "dividerColor"    # I

    .line 759
    iput p1, p0, Lcom/contrarywind/view/WheelView;->dividerColor:I

    .line 760
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0
    .param p1, "dividerType"    # Lcom/contrarywind/view/WheelView$DividerType;

    .line 764
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    .line 765
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 720
    iput p1, p0, Lcom/contrarywind/view/WheelView;->mGravity:I

    .line 721
    return-void
.end method

.method public setIsOptions(Z)V
    .locals 0
    .param p1, "options"    # Z

    .line 737
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->isOptions:Z

    .line 738
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 712
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->label:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1
    .param p1, "lineSpacingMultiplier"    # F

    .line 768
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 769
    iput p1, p0, Lcom/contrarywind/view/WheelView;->lineSpacingMultiplier:F

    .line 770
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->judgeLineSpace()V

    .line 772
    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V
    .locals 0
    .param p1, "OnItemSelectedListener"    # Lcom/contrarywind/listener/OnItemSelectedListener;

    .line 322
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->onItemSelectedListener:Lcom/contrarywind/listener/OnItemSelectedListener;

    .line 323
    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1
    .param p1, "textColorCenter"    # I

    .line 747
    iput p1, p0, Lcom/contrarywind/view/WheelView;->textColorCenter:I

    .line 748
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1
    .param p1, "textColorOut"    # I

    .line 742
    iput p1, p0, Lcom/contrarywind/view/WheelView;->textColorOut:I

    .line 743
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 744
    return-void
.end method

.method public final setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .line 306
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    .line 308
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/contrarywind/view/WheelView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    :cond_0
    return-void
.end method

.method public setTextXOffset(I)V
    .locals 2
    .param p1, "textXOffset"    # I

    .line 752
    iput p1, p0, Lcom/contrarywind/view/WheelView;->textXOffset:I

    .line 753
    if-eqz p1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 756
    :cond_0
    return-void
.end method

.method public setTotalScrollY(F)V
    .locals 0
    .param p1, "totalScrollY"    # F

    .line 783
    iput p1, p0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    .line 784
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 300
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 301
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 302
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 303
    return-void
.end method

.method public smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V
    .locals 8
    .param p1, "action"    # Lcom/contrarywind/view/WheelView$ACTION;

    .line 265
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 266
    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->FLING:Lcom/contrarywind/view/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    if-ne p1, v0, :cond_2

    .line 267
    :cond_0
    iget v0, p0, Lcom/contrarywind/view/WheelView;->totalScrollY:F

    iget v1, p0, Lcom/contrarywind/view/WheelView;->itemHeight:F

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->mOffset:I

    .line 268
    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 269
    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/contrarywind/view/WheelView;->mOffset:I

    goto :goto_0

    .line 271
    :cond_1
    neg-int v0, v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->mOffset:I

    .line 275
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/contrarywind/timer/SmoothScrollTimerTask;

    iget v0, p0, Lcom/contrarywind/view/WheelView;->mOffset:I

    invoke-direct {v2, p0, v0}, Lcom/contrarywind/timer/SmoothScrollTimerTask;-><init>(Lcom/contrarywind/view/WheelView;I)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 276
    return-void
.end method
