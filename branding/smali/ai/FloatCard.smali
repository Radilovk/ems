.class public final Lcom/isaigu/gymapp/ai/FloatCard;
.super Landroid/widget/FrameLayout;
.source "FloatCard.java"


# static fields
.field static final MAX_SCALE:F = 1.8f

.field static final MIN_SCALE:F = 0.6f

.field private static final PREFS:Ljava/lang/String; = "xems_float"


# instance fields
.field private final baseWidth:I

.field private final content:Landroid/view/View;

.field private downRawX:F

.field private downRawY:F

.field private dragging:Z

.field private final key:Ljava/lang/String;

.field private pinching:Z

.field private scale:F

.field private final slop:I

.field private startDist:F

.field private startScale:F

.field private startX:I

.field private startY:I

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    .line 45
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    .line 46
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->baseWidth:I

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->slop:I

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/FloatCard;->setClipChildren(Z)V

    .line 52
    return-void
.end method

.method private begin(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    .line 208
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawX:F

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawY:F

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    if-eqz v0, :cond_23

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 213
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startX:I

    .line 214
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startY:I

    .line 216
    :cond_23
    return-void
.end method

.method private beginPinch(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 226
    :goto_7
    return-void

    .line 222
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    .line 224
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FloatCard;->dist(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startDist:F

    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    iput v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startScale:F

    goto :goto_7
.end method

.method private clamp(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    .line 82
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 83
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->width()I

    move-result v1

    .line 84
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 85
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 86
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    .line 87
    neg-int v4, v1

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 88
    const/4 v1, 0x0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    return-void
.end method

.method private static clampScale(F)F
    .registers 3

    .prologue
    .line 77
    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3fe66666    # 1.8f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static dist(Landroid/view/MotionEvent;)F
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 239
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 240
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static rawOffsetX(Landroid/view/MotionEvent;)F
    .registers 3

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private static rawOffsetY(Landroid/view/MotionEvent;)F
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private save()V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    if-nez v0, :cond_5

    .line 253
    :goto_4
    return-void

    .line 248
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "xems_float"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 250
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_6f

    goto :goto_4

    .line 251
    :catch_6f
    move-exception v0

    goto :goto_4
.end method

.method private width()I
    .registers 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->baseWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public attach(Landroid/view/Window;)V
    .registers 6

    .prologue
    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    .line 57
    if-nez p1, :cond_5

    .line 69
    :goto_4
    return-void

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_float"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FloatCard;->clampScale(F)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->width()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/ai/FloatCard;->clamp(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    .line 131
    :cond_9
    :goto_9
    :pswitch_9
    return v0

    .line 116
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/FloatCard;->begin(Landroid/view/MotionEvent;)V

    goto :goto_9

    .line 119
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/FloatCard;->beginPinch(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 120
    goto :goto_9

    .line 122
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1c

    move v0, v1

    .line 123
    goto :goto_9

    .line 125
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->slop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_40

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->slop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 126
    :cond_40
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    move v0, v1

    .line 127
    goto :goto_9

    .line 114
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_13
        :pswitch_9
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    iget v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    iget v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 110
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_d

    if-gtz v0, :cond_11

    .line 95
    :cond_d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->width()I

    move-result v0

    .line 97
    :cond_11
    const/4 v1, 0x1

    int-to-float v2, v0

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 99
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 98
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 100
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FloatCard;->content:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FloatCard;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    if-nez v2, :cond_9

    .line 202
    :goto_8
    return v0

    .line 141
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_122

    :pswitch_10
    move v0, v1

    .line 198
    goto :goto_8

    .line 143
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/FloatCard;->begin(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 144
    goto :goto_8

    .line 146
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/FloatCard;->beginPinch(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 147
    goto :goto_8

    .line 149
    :pswitch_1c
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    if-eqz v2, :cond_68

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v2, v3, :cond_68

    .line 150
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FloatCard;->dist(Landroid/view/MotionEvent;)F

    move-result v2

    .line 151
    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startDist:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_66

    cmpl-float v3, v2, v4

    if-lez v3, :cond_66

    .line 152
    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startDist:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FloatCard;->clampScale(F)F

    move-result v2

    .line 153
    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ba3d70a    # 0.005f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_66

    .line 154
    iput v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->scale:F

    .line 155
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 156
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->width()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/FloatCard;->clamp(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->requestLayout()V

    :cond_66
    :goto_66
    move v0, v1

    .line 175
    goto :goto_8

    .line 162
    :cond_68
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    if-nez v2, :cond_66

    .line 163
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    if-nez v2, :cond_97

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->slop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_94

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->slop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_97

    .line 165
    :cond_94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    .line 167
    :cond_97
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    if-eqz v2, :cond_66

    .line 168
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 169
    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 170
    iget v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 171
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/FloatCard;->clamp(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c9} :catch_ca

    goto :goto_66

    .line 200
    :catch_ca
    move-exception v1

    .line 201
    const-string v2, "FloatCard.touch"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 177
    :pswitch_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v3, :cond_109

    .line 178
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_10c

    move v2, v1

    .line 181
    :goto_e2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FloatCard;->rawOffsetX(Landroid/view/MotionEvent;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawX:F

    .line 182
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FloatCard;->rawOffsetY(Landroid/view/MotionEvent;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->downRawY:F

    .line 183
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 184
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startX:I

    .line 185
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->startY:I

    .line 186
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    :cond_109
    move v0, v1

    .line 188
    goto/16 :goto_8

    :cond_10c
    move v2, v0

    .line 180
    goto :goto_e2

    .line 191
    :pswitch_10e
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    if-nez v2, :cond_116

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z

    if-eqz v2, :cond_119

    .line 192
    :cond_116
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/FloatCard;->save()V

    .line 194
    :cond_119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->dragging:Z

    .line 195
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/FloatCard;->pinching:Z
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_11f} :catch_ca

    move v0, v1

    .line 196
    goto/16 :goto_8

    .line 141
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10e
        :pswitch_1c
        :pswitch_10e
        :pswitch_10
        :pswitch_17
        :pswitch_d2
    .end packed-switch
.end method
