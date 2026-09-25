.class public final Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;,
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;
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

.field private static final DIR:Ljava/lang/String; = "avatars"

.field private static final REQ:I = 0x5a7

.field static final SIZE:I = 0x140

.field private static final TAG:Ljava/lang/String; = "xems_avatar_pick"

.field private static pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 288
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 3

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;-><init>(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.bindCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 3

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.bindCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 501
    const/4 v0, 0x1

    invoke-static {p0, p1, v2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 502
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 503
    invoke-static {p0, p2, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    return-object v0
.end method

.method private static chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v4, 0x5

    const/4 v5, -0x2

    .line 459
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 460
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 461
    const v2, 0xffffff

    and-int/2addr v2, p3

    const/high16 v3, 0x26000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 462
    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 463
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 465
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    return-void
.end method

.method public static circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 213
    :cond_0
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

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
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

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 576
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
    .locals 6

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v3, 0x10

    .line 523
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    const v1, -0xdfdbd4

    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 527
    const/16 v1, 0xe

    const v2, -0x675d4d

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    const/16 v1, 0x13

    const v2, -0xd0b09

    invoke-static {p0, p3, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void
.end method

.method public static inCenter(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 230
    :try_start_0
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

    if-gtz v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

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

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .line 535
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 536
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 537
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 539
    const v0, -0xdfdbd4

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    int-to-float v0, v3

    div-float/2addr v0, v12

    int-to-float v1, v3

    div-float/2addr v1, v12

    int-to-float v7, v3

    div-float/2addr v7, v12

    invoke-virtual {v5, v0, v1, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 541
    const-string v0, ""

    .line 542
    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\s+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_1

    aget-object v9, v7, v1

    .line 544
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 545
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

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const v1, -0xd0b09

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    int-to-float v1, v3

    const v2, 0x3ec28f5c    # 0.38f

    mul-float/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 551
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 552
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 553
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

    .line 554
    return-object v4
.end method

.method static load(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
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

    :try_start_0
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 111
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v6

    .line 113
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    div-int v3, v2, v3

    const/16 v4, 0x140

    if-lt v3, v4, :cond_0

    .line 114
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    throw v0

    .line 116
    :cond_0
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

    :try_start_1
    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 123
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 125
    if-nez v0, :cond_1

    move-object v0, v1

    .line 140
    :goto_1
    return-object v0

    .line 123
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 124
    throw v0

    .line 128
    :cond_1
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
    if-eqz v1, :cond_2

    .line 134
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 136
    :cond_2
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
    if-eq v1, v0, :cond_3

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v1

    .line 140
    goto :goto_1
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)V
    .locals 4

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
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 50
    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.pick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static read(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 204
    :cond_1
    :goto_0
    return-object v0

    .line 201
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 204
    goto :goto_0
.end method

.method private static rotation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 148
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 149
    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const/16 v0, 0x5a

    .line 151
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 154
    :goto_1
    return v0

    .line 149
    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 152
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v0

    move v0, v1

    .line 154
    goto :goto_1
.end method

.method private static round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 570
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 571
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 572
    return-object v0
.end method

.method private static row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/16 v4, 0xc

    .line 492
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 493
    const v1, -0xdfdbd4

    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 494
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 495
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    return-void
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 161
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "avatars"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-object v0

    .line 165
    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x58

    invoke-virtual {p1, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 172
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 171
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    const-string v2, "xems"

    const-string v3, "XemsLocalAvatar.save"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 485
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    const v2, -0x675d4d

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 486
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 487
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

    .line 488
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    return-void
.end method

.method private static sexAge(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v2, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v2, :cond_2

    .line 511
    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v2, "Female"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    .line 515
    if-lez v2, :cond_1

    const/16 v0, 0x78

    if-ge v2, v0, :cond_1

    .line 516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, " \u00b7 "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0433."

    const-string v3, " y"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 511
    :cond_2
    const-string v0, "\u041c\u044a\u0436"

    const-string v2, "Male"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 16

    .prologue
    .line 305
    :try_start_0
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 309
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 310
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 311
    const v2, -0xebe8e4

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    new-instance v6, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 314
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 315
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
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

    .line 318
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 321
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
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

    .line 325
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 327
    const/16 v8, 0x16

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 328
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 330
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
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

    .line 333
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    :goto_1
    const/16 v9, 0x1c

    const v10, -0xd0b09

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 338
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 339
    const/4 v2, 0x0

    const/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 340
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v2, :cond_0

    .line 341
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v10, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v2, v10, :cond_6

    .line 342
    const-string v2, "\u0416\u0435\u043d\u0430"

    const-string v10, "Female"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v10, -0xbc5fb9

    .line 341
    move-object/from16 v0, p0

    invoke-static {v0, v9, v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 344
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 345
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    .line 346
    if-lez v2, :cond_1

    const/16 v10, 0x78

    if-ge v2, v10, :cond_1

    .line 347
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

    .line 350
    :cond_1
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 356
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 357
    const/4 v2, 0x0

    const/16 v8, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    const-string v2, "\u0420\u044a\u0441\u0442"

    const-string v8, "Height"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v2, :cond_7

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

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "\u0422\u0435\u0433\u043b\u043e"

    const-string v8, "Weight"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-lez v2, :cond_8

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

    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "\u2014"

    .line 361
    move-object/from16 v0, p1

    iget v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v8, :cond_2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 362
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    int-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 363
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

    .line 365
    :cond_2
    const-string v8, "BMI"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
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

    .line 370
    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    const/4 v8, -0x1

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 371
    array-length v2, v3

    const/4 v8, 0x3

    if-lt v2, v8, :cond_d

    .line 372
    const-string v2, "\u0426\u0435\u043b \u0438 \u0444\u043e\u0440\u043c\u0430"

    const-string v8, "Goal and fitness"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 373
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    const-string v2, "\u0426\u0435\u043b"

    const-string v9, "Goal"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "\u0424\u043e\u0440\u043c\u0430"

    const-string v9, "Fitness"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_6
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const-string v2, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v8, "Contraindications"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 381
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 382
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    const/4 v2, 0x0

    .line 384
    const/4 v9, 0x2

    aget-object v3, v3, v9

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v10, :cond_b

    aget-object v11, v9, v3

    .line 385
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 386
    const/4 v2, 0x1

    .line 387
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

    .line 384
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 331
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 336
    :cond_5
    const-string v2, ""

    goto/16 :goto_1

    .line 342
    :cond_6
    const-string v2, "\u041c\u044a\u0436"

    const-string v10, "Male"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 358
    :cond_7
    const-string v2, "\u2014"

    goto/16 :goto_3

    .line 359
    :cond_8
    const-string v2, "\u2014"

    goto/16 :goto_4

    .line 376
    :cond_9
    const-string v2, "\u2014"

    goto/16 :goto_5

    .line 378
    :cond_a
    const-string v2, "\u2014"

    goto/16 :goto_6

    .line 390
    :cond_b
    if-nez v2, :cond_c

    .line 391
    const-string v2, "\u041d\u044f\u043c\u0430"

    const-string v3, "None"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xbc5fb9

    move-object/from16 v0, p0

    invoke-static {v0, v8, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 393
    :cond_c
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x1

    move v3, v2

    .line 398
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x1

    .line 399
    :goto_9
    if-nez v3, :cond_e

    if-eqz v2, :cond_10

    .line 400
    :cond_e
    const-string v8, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442"

    const-string v9, "Contact"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 401
    if-eqz v3, :cond_f

    .line 402
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

    .line 404
    :cond_f
    if-eqz v2, :cond_10

    .line 405
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

    .line 408
    :cond_10
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Training"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 409
    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 410
    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v3, "Program"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-eqz v2, :cond_12

    .line 413
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

    .line 414
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 413
    move-object/from16 v0, p0

    invoke-static {v0, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_12
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 420
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
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

    .line 422
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v6, -0xdfdbd4

    const v7, -0xd0b09

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 423
    const-string v6, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u0430\u0439"

    const-string v7, "Edit"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0xbc5fb9

    const/4 v8, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    .line 424
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/16 v9, 0x38

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 425
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/16 v9, 0x38

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 427
    const/16 v8, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 428
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v4, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$4;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 443
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_13

    .line 445
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    const v3, 0x3f266666    # 0.65f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 448
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

    .line 449
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

    .line 448
    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setLayout(II)V

    .line 450
    const v3, 0x1030002

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 452
    :cond_13
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_a
    return-void

    .line 397
    :cond_14
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_8

    .line 398
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 453
    :catch_0
    move-exception v2

    .line 454
    const-string v3, "xems"

    const-string v4, "XemsLocalAvatar.showCard"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 325
    :array_0
    .array-data 4
        -0xe0c5d9
        -0xe8dfe6
    .end array-data
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v3, 0x10

    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 471
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 472
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 473
    const v1, -0xdfdbd4

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 475
    const/16 v1, 0xe

    const v2, -0x675d4d

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    const/16 v1, 0x16

    const v2, -0xd0b09

    invoke-static {p0, p3, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 478
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 479
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 481
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-void
.end method

.method private static tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 558
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 561
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    if-eqz p4, :cond_0

    .line 563
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 565
    :cond_0
    return-object v0
.end method
