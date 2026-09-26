.class public final Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;,
        Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
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
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    .registers 1

    .line 26
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/Activity;
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 287
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_f

    .line 288
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 290
    :cond_f
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/app/Activity;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 3

    .line 270
    if-nez p0, :cond_3

    .line 271
    return-void

    .line 273
    :cond_3
    :try_start_3
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;-><init>(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 283
    goto :goto_14

    .line 281
    :catchall_c
    move-exception p0

    .line 282
    const-string p1, "xems"

    const-string v0, "XemsLocalAvatar.bindCard"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_14
    return-void
.end method

.method public static bindCard(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 250
    if-nez p0, :cond_3

    .line 251
    return-void

    .line 253
    :cond_3
    :try_start_3
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$1;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 264
    goto :goto_14

    .line 262
    :catchall_c
    move-exception p0

    .line 263
    const-string p1, "xems"

    const-string v0, "XemsLocalAvatar.bindCard"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :goto_14
    return-void
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 6

    .line 501
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 502
    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 503
    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    return-object p1
.end method

.method private static chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 7

    .line 459
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 460
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 461
    const v1, 0xffffff

    and-int/2addr p3, v1

    const/high16 v1, 0x26000000

    or-int/2addr p3, v1

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 462
    const/16 p3, 0xe

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 463
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    const/16 p3, 0xc

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 465
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 466
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 467
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    return-void
.end method

.method public static circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 210
    if-nez p0, :cond_4

    .line 211
    const/4 p0, 0x0

    return-object p0

    .line 213
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

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
    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {v2, p0, p0, p0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    return-object v1
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 183
    if-eqz p1, :cond_3b

    :try_start_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 186
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "avatars"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    .line 192
    :cond_38
    goto :goto_3a

    .line 191
    :catchall_39
    move-exception p0

    .line 193
    :goto_3a
    return-void

    .line 184
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 2

    .line 576
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

.method private static fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 523
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 524
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    const v2, -0xdfdbd4

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 527
    const/16 v2, 0xe

    const v3, -0x675d4d

    const/4 v4, 0x0

    invoke-static {p0, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    const/16 p2, 0x13

    const v2, -0xd0b09

    invoke-static {p0, p3, p2, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    const/16 p3, 0x8

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 531
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void
.end method

.method public static inCenter(Landroid/view/View;FF)Z
    .registers 8

    .line 230
    const/4 v0, 0x0

    :try_start_1
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
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x42380000    # 46.0f

    mul-float v1, v1, v4

    sub-float/2addr v2, v1

    .line 233
    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_28

    .line 234
    return v0

    .line 236
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_43

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p2, p0

    .line 238
    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    mul-float v2, v2, v2

    cmpg-float p0, p1, v2

    if-gez p0, :cond_42

    const/4 v0, 0x1

    :cond_42
    return v0

    .line 239
    :catchall_43
    move-exception p0

    .line 240
    return v0
.end method

.method private static initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 15

    .line 535
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    .line 536
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 539
    const v4, -0xdfdbd4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    int-to-float p0, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p0, v4

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 541
    nop

    .line 542
    const-string v6, ""

    if-eqz p1, :cond_62

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\s+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_37
    if-ge v9, v7, :cond_62

    aget-object v10, p1, v9

    .line 544
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_5f

    .line 545
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 543
    :cond_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 549
    :cond_62
    const p1, -0xd0b09

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    const p1, 0x3ec28f5c    # 0.38f

    mul-float p0, p0, p1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 551
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 552
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 553
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    add-float/2addr p0, p1

    div-float/2addr p0, v4

    sub-float p0, v5, p0

    invoke-virtual {v1, v6, v5, p0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 554
    return-object v0
.end method

.method static load(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 107
    const/4 v3, 0x0

    :try_start_11
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_87

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    nop

    .line 111
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    nop

    .line 113
    :goto_21
    mul-int/lit8 v2, v1, 0x2

    div-int v4, v0, v2

    const/16 v5, 0x140

    if-lt v4, v5, :cond_2b

    .line 114
    move v1, v2

    goto :goto_21

    .line 116
    :cond_2b
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 121
    :try_start_3a
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_82

    .line 123
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 124
    nop

    .line 125
    if-nez v0, :cond_45

    .line 126
    return-object v3

    .line 128
    :cond_45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->rotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 130
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    const/high16 p1, 0x43a00000    # 320.0f

    int-to-float v1, v8

    div-float/2addr p1, v1

    .line 132
    invoke-virtual {v9, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 133
    if-eqz p0, :cond_67

    .line 134
    int-to-float p0, p0

    invoke-virtual {v9, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 136
    :cond_67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    sub-int/2addr p0, v8

    div-int/lit8 v5, p0, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sub-int/2addr p0, v8

    div-int/lit8 v6, p0, 0x2

    const/4 v10, 0x1

    move-object v4, v0

    move v7, v8

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 137
    if-eq p0, v0, :cond_81

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    :cond_81
    return-object p0

    .line 123
    :catchall_82
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 124
    throw p0

    .line 109
    :catchall_87
    move-exception p0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    throw p0
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)V
    .registers 4

    .line 43
    const-string v0, "xems_avatar_pick"

    :try_start_2
    sput-object p1, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    .line 46
    if-eqz p1, :cond_1c

    .line 47
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 50
    :cond_1c
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_30

    .line 54
    goto :goto_38

    .line 52
    :catchall_30
    move-exception p0

    .line 53
    const-string p1, "xems"

    const-string v0, "XemsLocalAvatar.pick"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_38
    return-void
.end method

.method public static read(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 198
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    :try_start_3
    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_24

    .line 201
    :cond_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 202
    if-eqz p0, :cond_21

    if-lez p1, :cond_21

    const/4 v1, 0x1

    invoke-static {p0, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_22

    :cond_21
    return-object p0

    .line 203
    :catchall_22
    move-exception p0

    .line 204
    return-object v0

    .line 199
    :cond_24
    :goto_24
    return-object v0
.end method

.method private static rotation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 5

    .line 145
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_32

    .line 147
    :try_start_9
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 148
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2d

    .line 149
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1b

    const/16 p1, 0x5a

    goto :goto_29

    :cond_1b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    const/16 p1, 0xb4

    goto :goto_29

    :cond_21
    const/16 v1, 0x8

    if-ne p1, v1, :cond_28

    const/16 p1, 0x10e

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 151
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 149
    return p1

    .line 151
    :catchall_2d
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 152
    throw p1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    .line 153
    :catchall_32
    move-exception p0

    .line 154
    return v0
.end method

.method private static round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 569
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 570
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 571
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 572
    return-object v0
.end method

.method private static row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 7

    .line 492
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 493
    const p3, -0xdfdbd4

    const/16 v0, 0xe

    invoke-static {p0, p3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 494
    const/16 p3, 0x10

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 495
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 497
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    return-void
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 161
    const/4 v0, 0x0

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

    .line 163
    return-object v0

    .line 165
    :cond_19
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_59

    .line 168
    :try_start_3d
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x58

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_54

    .line 170
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 171
    nop

    .line 172
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :catchall_54
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 171
    throw p0
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_59

    .line 174
    :catchall_59
    move-exception p0

    .line 175
    const-string p1, "xems"

    const-string p2, "XemsLocalAvatar.save"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-object v0
.end method

.method private static section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 6

    .line 485
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    const v1, -0x675d4d

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 486
    const v0, 0x3da3d70a    # 0.08f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 487
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    return-void
.end method

.method private static sexAge(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v1, :cond_1f

    .line 510
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v2, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v1, v2, :cond_14

    .line 511
    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v2, "Female"

    goto :goto_18

    :cond_14
    const-string v1, "\u041c\u044a\u0436"

    const-string v2, "Male"

    :goto_18
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_1f
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v1, :cond_4b

    .line 514
    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result p0

    .line 515
    if-lez p0, :cond_4b

    const/16 v1, 0x78

    if-ge p0, v1, :cond_4b

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_38

    const-string v1, " \u00b7 "

    goto :goto_3a

    :cond_38
    const-string v1, ""

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u0433."

    const-string v1, " y"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 305
    :try_start_6
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 306
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 307
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 309
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 311
    const v6, -0xebe8e4

    const/16 v7, 0x1c

    invoke-static {v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 314
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 315
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
    const/16 v10, 0x18

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 318
    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 321
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
    const/16 v12, 0x14

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v11, v13, v14, v15, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 325
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v14, 0x2

    new-array v15, v14, [I

    const v16, -0xe0c5d9

    aput v16, v15, v8

    const v16, -0xe8dfe6

    aput v16, v15, v4

    invoke-direct {v10, v13, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 327
    const/16 v13, 0x16

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 328
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 330
    iget-object v13, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 331
    if-eqz v13, :cond_a6

    invoke-static {v13}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_ac

    :cond_a6
    iget-object v13, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->initials(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    :goto_ac
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x78

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v13, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v7, v10, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    iget-object v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_6 .. :try_end_d2} :catchall_467

    const-string v13, ""

    if-eqz v10, :cond_d9

    :try_start_d6
    iget-object v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_da

    :cond_d9
    move-object v10, v13

    :goto_da
    const v14, -0xd0b09

    const/16 v12, 0x1c

    invoke-static {v0, v10, v12, v14, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 339
    const/16 v12, 0xa

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v10, v8, v12, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 340
    iget-object v12, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    const v14, -0xbc5fb9

    if-eqz v12, :cond_114

    .line 341
    iget-object v12, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v12, v4, :cond_109

    .line 342
    const-string v4, "\u0416\u0435\u043d\u0430"

    const-string v12, "Female"

    goto :goto_10d

    :cond_109
    const-string v4, "\u041c\u044a\u0436"

    const-string v12, "Male"

    :goto_10d
    invoke-static {v4, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-static {v0, v10, v4, v14}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 344
    :cond_114
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v4, :cond_13c

    .line 345
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v4

    .line 346
    if-lez v4, :cond_13c

    if-ge v4, v15, :cond_13c

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u0433."

    const-string v15, " y"

    invoke-static {v4, v15}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v10, v4, v14}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->chip(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 350
    :cond_13c
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v4, v8, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 357
    const/16 v11, 0xe

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v8, v11, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    const-string v11, "\u0420\u044a\u0441\u0442"

    const-string v15, "Height"

    invoke-static {v11, v15}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget v15, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I
    :try_end_16e
    .catchall {:try_start_d6 .. :try_end_16e} :catchall_467

    const-string v17, "\u2014"

    if-lez v15, :cond_186

    :try_start_172
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " cm"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_188

    :cond_186
    move-object/from16 v10, v17

    :goto_188
    invoke-static {v0, v4, v11, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v10, "\u0422\u0435\u0433\u043b\u043e"

    const-string v11, "Weight"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v15, 0x0

    cmpl-float v11, v11, v15

    if-lez v11, :cond_1b2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " kg"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1b4

    :cond_1b2
    move-object/from16 v11, v17

    :goto_1b4
    invoke-static {v0, v4, v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    nop

    .line 361
    iget v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v10, :cond_1e3

    iget v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    cmpl-float v10, v10, v15

    if-lez v10, :cond_1e3

    .line 362
    iget v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    int-to-double v10, v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v14

    .line 363
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%.1f"

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    move-object/from16 v18, v9

    float-to-double v8, v7

    mul-double v10, v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v12, v8

    invoke-static {v14, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1e7

    .line 361
    :cond_1e3
    move-object/from16 v18, v9

    .line 365
    move-object/from16 v7, v17

    :goto_1e7
    const-string v8, "BMI"

    invoke-static {v0, v4, v8, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const-string v4, "xems_user_profiles"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "u"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-interface {v4, v7, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\|"

    const/4 v9, -0x1

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 371
    array-length v7, v4

    const/4 v9, 0x3

    if-lt v7, v9, :cond_2e6

    .line 372
    const-string v7, "\u0426\u0435\u043b \u0438 \u0444\u043e\u0440\u043c\u0430"

    const-string v9, "Goal and fitness"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 373
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    const-string v9, "\u0426\u0435\u043b"

    const-string v10, "Goal"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_24d

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_24f

    :cond_24d
    move-object/from16 v10, v17

    .line 375
    :goto_24f
    invoke-static {v0, v7, v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v9, "\u0424\u043e\u0440\u043c\u0430"

    const-string v10, "Fitness"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    const/4 v10, 0x1

    aget-object v11, v4, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_269

    aget-object v11, v4, v10

    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_269
    move-object/from16 v10, v17

    .line 377
    invoke-static {v0, v7, v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const-string v7, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v9, "Contraindications"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 381
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 382
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    nop

    .line 384
    const/4 v10, 0x2

    aget-object v4, v4, v10

    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_299
    if-ge v12, v10, :cond_2cb

    aget-object v13, v4, v12

    .line 385
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2c8

    .line 386
    nop

    .line 387
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u2022  "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v13, -0x1ab7b3

    invoke-static {v0, v7, v11, v13}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const/4 v11, 0x1

    .line 384
    :cond_2c8
    add-int/lit8 v12, v12, 0x1

    goto :goto_299

    .line 390
    :cond_2cb
    if-nez v11, :cond_2db

    .line 391
    const-string v4, "\u041d\u044f\u043c\u0430"

    const-string v10, "None"

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v10, -0xbc5fb9

    invoke-static {v0, v7, v4, v10}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 393
    :cond_2db
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e7

    .line 371
    :cond_2e6
    const/4 v9, 0x1

    .line 397
    :goto_2e7
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v4, :cond_2f9

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2f9

    const/4 v7, 0x1

    goto :goto_2fa

    :cond_2f9
    const/4 v7, 0x0

    .line 398
    :goto_2fa
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v4, :cond_30c

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30c

    const/4 v4, 0x1

    goto :goto_30d

    :cond_30c
    const/4 v4, 0x0

    .line 399
    :goto_30d
    if-nez v7, :cond_311

    if-eqz v4, :cond_342

    .line 400
    :cond_311
    const-string v9, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442"

    const-string v10, "Contact"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 401
    if-eqz v7, :cond_32f

    .line 402
    const-string v7, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v9, "Phone"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v7, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_32f
    if-eqz v4, :cond_342

    .line 405
    const-string v4, "\u0418\u043c\u0435\u0439\u043b"

    const-string v7, "Email"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v8, v4, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_342
    const-string v4, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v7, "Training"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v8, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->section(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 409
    if-eqz v2, :cond_368

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v4, :cond_368

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_368

    .line 410
    const-string v4, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v7, "Program"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v0, v8, v4, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_368
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-eqz v2, :cond_386

    .line 413
    const-string v2, "\u041a\u043b\u0438\u0435\u043d\u0442 \u043e\u0442"

    const-string v4, "Client since"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd.MM.yyyy"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 414
    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-static {v0, v8, v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->fact(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_386
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 420
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    const/16 v4, 0x18

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v9, 0x14

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v2, v6, v8, v4, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 422
    const-string v4, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v6, -0xdfdbd4

    const v8, -0xd0b09

    invoke-static {v0, v4, v6, v8}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 423
    const-string v6, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u0430\u0439"

    const-string v8, "Edit"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v8, -0xbc5fb9

    const/4 v9, -0x1

    invoke-static {v0, v6, v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    .line 424
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x38

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v8, v12, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 425
    invoke-virtual {v2, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v8, v11, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 427
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 428
    invoke-virtual {v2, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$4;

    invoke-direct {v2, v3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$4;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 443
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_463

    .line 445
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 448
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x30

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v4, v6

    const/16 v6, 0x280

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v5

    sub-int/2addr v2, v5

    const/16 v5, 0x2d0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 448
    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->setLayout(II)V

    .line 450
    const v0, 0x1030002

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 452
    :cond_463
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_466
    .catchall {:try_start_172 .. :try_end_466} :catchall_467

    .line 455
    goto :goto_46f

    .line 453
    :catchall_467
    move-exception v0

    .line 454
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.showCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :goto_46f
    return-void
.end method

.method private static tile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 471
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 473
    const v2, -0xdfdbd4

    const/16 v3, 0x12

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->round(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 475
    const/16 v2, 0xe

    const v3, -0x675d4d

    const/4 v4, 0x0

    invoke-static {p0, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    const/16 p2, 0x16

    const v2, -0xd0b09

    invoke-static {p0, p3, p2, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v4, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 478
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-lez p3, :cond_5b

    .line 479
    const/16 p3, 0xa

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 481
    :cond_5b
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-void
.end method

.method private static tv(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 6

    .line 558
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    int-to-float p0, p2

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 561
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    if-eqz p4, :cond_17

    .line 563
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 565
    :cond_17
    return-object v0
.end method
