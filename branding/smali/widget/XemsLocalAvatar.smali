.class public final Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;,
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;,
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;
    }
.end annotation


# static fields
.field private static final C_ACCENT:I = -0xbc5fb9

.field private static final C_BG:I = -0xebe8e4

.field private static final C_CARD:I = -0xdfdbd4

.field private static final C_DIM:I = -0x675d4d

.field private static final C_HERO:I = -0xe4d5e0

.field private static final C_TEXT:I = -0xd0b09

.field private static final C_WARN:I = -0x1ab7b3

.field private static final DEAD_CORE:F = 0.45f

.field private static final DIR:Ljava/lang/String; = "avatars"

.field private static final GRAB:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STEP:D = 50.0

.field private static final REQ:I = 0x5a7

.field static final SIZE:I = 0x140

.field private static final TAG:Ljava/lang/String; = "xems_avatar_pick"

.field private static pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

.field private static ringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 244
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->GRAB:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 445
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_10

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_10

    .line 446
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 448
    :cond_10
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/app/Activity;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static angle(FFF)D
    .registers 9

    .prologue
    const-wide v4, 0x4066800000000000L    # 180.0

    .line 328
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 329
    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-gez v2, :cond_23

    add-double/2addr v0, v4

    :goto_22
    return-wide v0

    :cond_23
    sub-double v0, v4, v0

    goto :goto_22
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 5

    .prologue
    .line 352
    if-nez p0, :cond_3

    .line 361
    :goto_2
    return-void

    .line 355
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 357
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_2

    .line 358
    :catch_15
    move-exception v0

    .line 359
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.bindCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 338
    if-nez p0, :cond_3

    .line 347
    :goto_2
    return-void

    .line 341
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 343
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_2

    .line 344
    :catch_15
    move-exception v0

    .line 345
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.bindCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/16 v2, 0x12

    .line 659
    const/4 v0, 0x1

    invoke-static {p0, p1, v2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 660
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 661
    invoke-static {p0, p2, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 662
    return-object v0
.end method

.method private static chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 11

    .prologue
    const/16 v6, 0xc

    const/4 v4, 0x5

    const/4 v5, -0x2

    .line 617
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 618
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 619
    const v2, 0xffffff

    and-int/2addr v2, p3

    const/high16 v3, 0x26000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 620
    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 622
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 623
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 624
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 625
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    return-void
.end method

.method public static circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 210
    if-nez p0, :cond_6

    .line 211
    const/4 v0, 0x0

    .line 219
    :goto_5
    return-object v0

    .line 213
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 214
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 217
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 218
    int-to-float v4, v1

    div-float/2addr v4, v7

    int-to-float v5, v1

    div-float/2addr v5, v7

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 183
    if-eqz p1, :cond_a

    :try_start_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    :cond_a
    :goto_a
    return-void

    .line 186
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "avatars"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_a

    .line 191
    :catch_39
    move-exception v0

    goto :goto_a
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 734
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v3, 0x10

    .line 681
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 683
    const v1, -0xdfdbd4

    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 685
    const/16 v1, 0xe

    const v2, -0x675d4d

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    const/16 v1, 0x13

    const v2, -0xd0b09

    invoke-static {p0, p3, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 688
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 689
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    return-void
.end method

.method public static grab(Landroid/view/View;Landroid/view/MotionEvent;FFF)Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    :try_start_2
    sget v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->ringId:I

    if-nez v0, :cond_1c

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "circleSeekBar"

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->ringId:I

    .line 258
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->ringId:I

    if-eq v0, v3, :cond_26

    move v0, v1

    .line 284
    :cond_25
    :goto_25
    return v0

    .line 261
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 262
    if-nez v3, :cond_76

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 264
    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v3, p4

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, p2

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v4, p3

    .line 267
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_71

    move v0, v1

    .line 268
    :goto_54
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->GRAB:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_73

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5a
    invoke-virtual {v3, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_25

    .line 283
    :catch_6e
    move-exception v0

    move v0, v1

    .line 284
    goto :goto_25

    :cond_71
    move v0, v2

    .line 267
    goto :goto_54

    .line 268
    :cond_73
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5a

    .line 274
    :cond_76
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->GRAB:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 275
    if-eq v3, v1, :cond_83

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    .line 276
    :cond_83
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->GRAB:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_88
    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_92

    :cond_90
    move v0, v2

    .line 279
    goto :goto_25

    .line 281
    :cond_92
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->steady(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_95} :catch_6e

    move v0, v1

    .line 282
    goto :goto_25
.end method

.method public static inCenter(Landroid/view/View;FF)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 230
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 232
    div-float/2addr v2, v4

    const/high16 v3, 0x42380000    # 46.0f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 233
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_28

    .line 240
    :cond_27
    :goto_27
    return v0

    .line 236
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_33} :catch_42

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    .line 238
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    .line 239
    :catch_42
    move-exception v1

    goto :goto_27
.end method

.method private static initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .line 693
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 694
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 695
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 696
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 697
    const v0, -0xdfdbd4

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 698
    int-to-float v0, v3

    div-float/2addr v0, v12

    int-to-float v1, v3

    div-float/2addr v1, v12

    int-to-float v7, v3

    div-float/2addr v7, v12

    invoke-virtual {v5, v0, v1, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 699
    const-string v0, ""

    .line 700
    if-eqz p1, :cond_66

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\s+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_39
    if-ge v1, v8, :cond_66

    aget-object v9, v7, v1

    .line 702
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_63

    .line 703
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 707
    :cond_66
    const v1, -0xd0b09

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 708
    int-to-float v1, v3

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 709
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 710
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 711
    int-to-float v1, v3

    div-float/2addr v1, v12

    int-to-float v2, v3

    div-float/2addr v2, v12

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v3, v7

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 712
    return-object v4
.end method

.method static load(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 107
    const/4 v3, 0x0

    :try_start_12
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2c

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 111
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v6

    .line 113
    :goto_21
    mul-int/lit8 v3, v0, 0x2

    div-int v3, v2, v3

    const/16 v4, 0x140

    if-lt v3, v4, :cond_31

    .line 114
    mul-int/lit8 v0, v0, 0x2

    goto :goto_21

    .line 109
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    throw v0

    .line 116
    :cond_31
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 121
    const/4 v0, 0x0

    :try_start_41
    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4c

    move-result-object v0

    .line 123
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 125
    if-nez v0, :cond_51

    move-object v0, v1

    .line 140
    :goto_4b
    return-object v0

    .line 123
    :catchall_4c
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 124
    throw v0

    .line 128
    :cond_51
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->rotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    const/high16 v2, 0x43a00000    # 320.0f

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 132
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 133
    if-eqz v1, :cond_73

    .line 134
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 136
    :cond_73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    if-eq v1, v0, :cond_8b

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8b
    move-object v0, v1

    .line 140
    goto :goto_4b
.end method

.method static onPhoto(Landroid/view/View;FF)Z
    .registers 10

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42300000    # 44.0f

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    .line 417
    div-float/2addr v1, v4

    const/high16 v3, 0x42380000    # 46.0f

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    .line 418
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2a

    .line 441
    :cond_29
    :goto_29
    return v2

    .line 421
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, p1, v1

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    .line 423
    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr v0, v0

    cmpl-float v0, v1, v0

    if-gez v0, :cond_29

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a3

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, p1

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v1, p2

    move v1, v2

    .line 430
    :goto_5f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_a3

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 432
    if-eq v5, p0, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_7b

    instance-of v6, v5, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v6, :cond_7e

    .line 430
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 436
    :cond_7e
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7b

    goto :goto_29

    .line 441
    :cond_a3
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)V
    .registers 6

    .prologue
    .line 43
    :try_start_0
    sput-object p1, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 45
    const-string v1, "xems_avatar_pick"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1c

    .line 47
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 50
    :cond_1c
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;-><init>()V

    const-string v3, "xems_avatar_pick"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 55
    :goto_31
    return-void

    .line 52
    :catch_32
    move-exception v0

    .line 53
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.pick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public static read(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_b

    :try_start_3
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 204
    :cond_c
    :goto_c
    return-object v0

    .line 201
    :cond_d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_c

    if-lez p1, :cond_c

    const/4 v2, 0x1

    invoke-static {v0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_c

    .line 203
    :catch_23
    move-exception v0

    move-object v0, v1

    .line 204
    goto :goto_c
.end method

.method private static rotation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_32

    move-result-object v2

    .line 147
    :try_start_9
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 148
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2d

    move-result v0

    .line 149
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1e

    const/16 v0, 0x5a

    .line 151
    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 154
    :goto_1d
    return v0

    .line 149
    :cond_1e
    const/4 v3, 0x3

    if-ne v0, v3, :cond_24

    const/16 v0, 0xb4

    goto :goto_1a

    :cond_24
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2b

    const/16 v0, 0x10e

    goto :goto_1a

    :cond_2b
    move v0, v1

    goto :goto_1a

    .line 151
    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 152
    throw v0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_32} :catch_32

    .line 153
    :catch_32
    move-exception v0

    move v0, v1

    .line 154
    goto :goto_1d
.end method

.method private static round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 727
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 728
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 729
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 730
    return-object v0
.end method

.method private static row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/16 v3, 0x10

    const/16 v4, 0xc

    .line 650
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 651
    const v1, -0xdfdbd4

    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 652
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 653
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 654
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 655
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    return-void
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 161
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "avatars"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_19

    .line 176
    :goto_18
    return-object v0

    .line 165
    :cond_19
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_40} :catch_5b

    .line 168
    :try_start_40
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x58

    invoke-virtual {p1, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_56

    .line 170
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 172
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 170
    :catchall_56
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 171
    throw v1
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_5b} :catch_5b

    .line 174
    :catch_5b
    move-exception v1

    .line 175
    const-string v2, "xems"

    const-string v3, "XemsLocalAvatar.save"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private static section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 643
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    const v2, -0x675d4d

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 644
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 645
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 646
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    return-void
.end method

.method private static sexAge(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_1a

    .line 668
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v2, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v2, :cond_4a

    .line 669
    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v2, "Female"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_45

    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    .line 673
    if-lez v2, :cond_45

    const/16 v0, 0x78

    if-ge v2, v0, :cond_45

    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_53

    const-string v0, " \u00b7 "

    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0433."

    const-string v3, " y"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :cond_4a
    const-string v0, "\u041c\u044a\u0436"

    const-string v2, "Male"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 674
    :cond_53
    const-string v0, ""

    goto :goto_32
.end method

.method public static showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 19

    .prologue
    .line 463
    :try_start_0
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 464
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 465
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 467
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 468
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 469
    const v2, -0xebe8e4

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    new-instance v6, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 472
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 473
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 474
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 475
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v8, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 476
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 479
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 480
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 481
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 482
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/16 v10, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v3, v2, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 483
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_556

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 485
    const/16 v8, 0x16

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 486
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 487
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 488
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_339

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_c9
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x78

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/16 v10, 0x78

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 493
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 494
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_345

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    :goto_107
    const/16 v9, 0x1c

    const v10, -0xd0b09

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 496
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 497
    const/4 v2, 0x0

    const/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 498
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v2, :cond_14d

    .line 499
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v10, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v2, v10, :cond_349

    .line 500
    const-string v2, "\u0416\u0435\u043d\u0430"

    const-string v10, "Female"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_145
    const v10, -0xbc5fb9

    .line 499
    move-object/from16 v0, p0

    invoke-static {v0, v9, v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 502
    :cond_14d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v2, :cond_182

    .line 503
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    .line 504
    if-lez v2, :cond_182

    const/16 v10, 0x78

    if-ge v2, v10, :cond_182

    .line 505
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " \u0433."

    const-string v11, " y"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v10, -0xbc5fb9

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 508
    :cond_182
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 514
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 515
    const/4 v2, 0x0

    const/16 v8, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 516
    const-string v2, "\u0420\u044a\u0441\u0442"

    const-string v8, "Height"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v2, :cond_353

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " cm"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1d9
    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v8, "Weight"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-lez v2, :cond_357

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " kg"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_20a
    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v2, "\u2014"

    .line 519
    move-object/from16 v0, p1

    iget v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v8, :cond_242

    move-object/from16 v0, p1

    iget v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_242

    .line 520
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    int-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 521
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    float-to-double v14, v13

    mul-double/2addr v8, v8

    div-double v8, v14, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-static {v2, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 523
    :cond_242
    const-string v8, "BMI"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    const-string v2, "xems_user_profiles"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "u"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    .line 528
    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 529
    array-length v2, v3

    const/4 v8, 0x3

    if-lt v2, v8, :cond_37f

    .line 530
    const-string v2, "\u0426\u0435\u043b \u0438 \u0444\u043e\u0440\u043c\u0430"

    const-string v8, "Goal and fitness"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 531
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 532
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 533
    const-string v2, "\u0426\u0435\u043b"

    const-string v9, "Goal"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 534
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35b

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    :goto_2b4
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "\u0424\u043e\u0440\u043c\u0430"

    const-string v9, "Fitness"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 536
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35f

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    :goto_2d1
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    const-string v2, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v8, "Contraindications"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 539
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 540
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 541
    const/4 v2, 0x0

    .line 542
    const/4 v9, 0x2

    aget-object v3, v3, v9

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v3, 0x0

    :goto_304
    if-ge v3, v10, :cond_363

    aget-object v11, v9, v3

    .line 543
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_336

    .line 544
    const/4 v2, 0x1

    .line 545
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u2022  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v12, -0x1ab7b3

    move-object/from16 v0, p0

    invoke-static {v0, v8, v11, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 542
    :cond_336
    add-int/lit8 v3, v3, 0x1

    goto :goto_304

    .line 489
    :cond_339
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_c9

    .line 494
    :cond_345
    const-string v2, ""

    goto/16 :goto_107

    .line 500
    :cond_349
    const-string v2, "\u041c\u044a\u0436"

    const-string v10, "Male"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_145

    .line 516
    :cond_353
    const-string v2, "\u2014"

    goto/16 :goto_1d9

    .line 517
    :cond_357
    const-string v2, "\u2014"

    goto/16 :goto_20a

    .line 534
    :cond_35b
    const-string v2, "\u2014"

    goto/16 :goto_2b4

    .line 536
    :cond_35f
    const-string v2, "\u2014"

    goto/16 :goto_2d1

    .line 548
    :cond_363
    if-nez v2, :cond_375

    .line 549
    const-string v2, "\u041d\u044f\u043c\u0430"

    const-string v3, "None"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xbc5fb9

    move-object/from16 v0, p0

    invoke-static {v0, v8, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 551
    :cond_375
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_37f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v2, :cond_546

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_546

    const/4 v2, 0x1

    move v3, v2

    .line 556
    :goto_395
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v2, :cond_54a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54a

    const/4 v2, 0x1

    .line 557
    :goto_3aa
    if-nez v3, :cond_3ae

    if-eqz v2, :cond_3e9

    .line 558
    :cond_3ae
    const-string v8, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442"

    const-string v9, "Contact"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 559
    if-eqz v3, :cond_3d2

    .line 560
    const-string v3, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v8, "Phone"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_3d2
    if-eqz v2, :cond_3e9

    .line 563
    const-string v2, "\u0418\u043c\u0435\u0439\u043b"

    const-string v3, "Email"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_3e9
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Training"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 567
    if-eqz p2, :cond_419

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v2, :cond_419

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_419

    .line 568
    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v3, "Program"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_419
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-eqz v2, :cond_43d

    .line 571
    const-string v2, "\u041a\u043b\u0438\u0435\u043d\u0442 \u043e\u0442"

    const-string v3, "Client since"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "dd.MM.yyyy"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 572
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 571
    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_43d
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 578
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 579
    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 580
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v6, -0xdfdbd4

    const v7, -0xd0b09

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 581
    const-string v6, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u0430\u0439"

    const-string v7, "Edit"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0xbc5fb9

    const/4 v8, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    .line 582
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/16 v9, 0x38

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 583
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/16 v9, 0x38

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 585
    const/16 v8, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 586
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v4, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 601
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 602
    if-eqz v2, :cond_542

    .line 603
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    const v3, 0x3f266666    # 0.65f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 606
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v6, 0x280

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x30

    .line 607
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v3, v6

    const/16 v6, 0x2d0

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 606
    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setLayout(II)V

    .line 608
    const v3, 0x1030002

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 610
    :cond_542
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_545
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_545} :catch_54d

    .line 614
    :goto_545
    return-void

    .line 555
    :cond_546
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_395

    .line 556
    :cond_54a
    const/4 v2, 0x0

    goto/16 :goto_3aa

    .line 611
    :catch_54d
    move-exception v2

    .line 612
    const-string v3, "xems"

    const-string v4, "XemsLocalAvatar.showCard"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_545

    .line 483
    :array_556
    .array-data 4
        -0xe0c5d9
        -0xe8dfe6
    .end array-data
.end method

.method static steady(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v10, 0x4076800000000000L    # 360.0

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 301
    sub-float v4, p2, v2

    .line 302
    sub-float v5, p3, v3

    .line 303
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 304
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2b

    .line 324
    :cond_2a
    :goto_2a
    return-void

    .line 307
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v7, v2

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v3, v2, v3

    .line 309
    mul-float v2, v7, v7

    mul-float v8, v3, v3

    add-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 310
    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v6

    cmpg-float v2, v8, v2

    if-gez v2, :cond_60

    move v2, v0

    .line 311
    :goto_4a
    if-nez v2, :cond_7f

    .line 312
    invoke-static {v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->angle(FFF)D

    move-result-wide v2

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->angle(FFF)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 313
    :goto_55
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_62

    .line 314
    sub-double/2addr v2, v10

    goto :goto_55

    :cond_60
    move v2, v1

    .line 310
    goto :goto_4a

    .line 316
    :cond_62
    :goto_62
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_6d

    .line 317
    add-double/2addr v2, v10

    goto :goto_62

    .line 319
    :cond_6d
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7d

    .line 321
    :goto_77
    if-eqz v0, :cond_2a

    .line 322
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2a

    :cond_7d
    move v0, v1

    .line 319
    goto :goto_77

    :cond_7f
    move v0, v2

    goto :goto_77
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/16 v3, 0x10

    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 629
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 631
    const v1, -0xdfdbd4

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 632
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 633
    const/16 v1, 0xe

    const v2, -0x675d4d

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    const/16 v1, 0x16

    const v2, -0xd0b09

    invoke-static {p0, p3, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 636
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5b

    .line 637
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 639
    :cond_5b
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void
.end method

.method private static tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 8

    .prologue
    .line 716
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 719
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    if-eqz p4, :cond_17

    .line 721
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 723
    :cond_17
    return-object v0
.end method
