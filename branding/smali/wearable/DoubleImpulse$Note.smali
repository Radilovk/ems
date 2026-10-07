.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Note"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;,
        Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;
    }
.end annotation


# static fields
.field private static final HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

.field private static box:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static hintView:Landroid/widget/TextView;

.field private static sticky:Z

.field private static titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 922
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 917
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z

    return p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;
    .registers 1

    .prologue
    .line 917
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    return-object v0
.end method

.method static content(Landroid/view/View;)Landroid/widget/FrameLayout;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_15

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1023
    :goto_e
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/widget/FrameLayout;

    :goto_14
    return-object v0

    :cond_15
    move-object v0, v1

    .line 1022
    goto :goto_e

    :cond_17
    move-object v0, v1

    .line 1023
    goto :goto_14
.end method

.method static hide()V
    .registers 4

    .prologue
    .line 1009
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1010
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1011
    :goto_15
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1018
    :cond_1d
    :goto_1d
    return-void

    .line 1010
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    .line 1014
    :cond_20
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1015
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1016
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1017
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Gone;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1d
.end method

.method static hideSticky()V
    .registers 1

    .prologue
    .line 1002
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z

    if-eqz v0, :cond_a

    .line 1003
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z

    .line 1004
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hide()V

    .line 1006
    :cond_a
    return-void
.end method

.method static show(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 14

    .prologue
    .line 932
    if-nez p0, :cond_3

    .line 998
    :cond_2
    :goto_2
    return-void

    .line 935
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->content(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 936
    if-eqz v2, :cond_2

    .line 939
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 940
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 941
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19f

    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    .line 942
    :goto_24
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, v2, :cond_f9

    .line 943
    :cond_2c
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f

    .line 944
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 946
    :cond_3f
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 947
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 948
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 949
    const/high16 v1, 0x41b00000    # 22.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 950
    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 951
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 952
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 953
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    .line 954
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 955
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 956
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 957
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    .line 958
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 959
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    const v3, -0x19000001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 961
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 962
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x51

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 968
    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 969
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 970
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 971
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 972
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 974
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 975
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 977
    :cond_f9
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 978
    const v2, -0x26e7e7e8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 979
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 980
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 981
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 982
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->titleView:Landroid/widget/TextView;

    const v2, -0x4f413b

    if-ne p3, v2, :cond_124

    const/4 p3, -0x1

    :cond_124
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 984
    sget-object v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    if-eqz p2, :cond_1a2

    move-object v0, p2

    :goto_12c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    sget-object v2, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->hintView:Landroid/widget/TextView;

    if-eqz p2, :cond_1a5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a5

    const/4 v0, 0x0

    :goto_13a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 987
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 988
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 989
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 990
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1a8

    const/4 v0, 0x1

    :goto_16a
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z

    .line 991
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 992
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->sticky:Z

    if-nez v0, :cond_2

    .line 993
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->HIDE:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note$Hide;

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_182} :catch_184

    goto/16 :goto_2

    .line 995
    :catch_184
    move-exception v0

    .line 996
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double note: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 941
    :cond_19f
    const/4 v1, 0x0

    goto/16 :goto_24

    .line 984
    :cond_1a2
    :try_start_1a2
    const-string v0, ""
    :try_end_1a4
    .catch Ljava/lang/Throwable; {:try_start_1a2 .. :try_end_1a4} :catch_184

    goto :goto_12c

    .line 985
    :cond_1a5
    const/16 v0, 0x8

    goto :goto_13a

    .line 990
    :cond_1a8
    const/4 v0, 0x0

    goto :goto_16a
.end method

.method static showing()Z
    .registers 2

    .prologue
    .line 925
    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Note;->box:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 926
    :goto_c
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1b
    return v0

    .line 925
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 926
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b
.end method
