.class public final Lcom/isaigu/gymapp/ai/ProgramArt;
.super Ljava/lang/Object;
.source "ProgramArt.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static final DIR:Ljava/lang/String; = "xems/programs/"

.field static final TILE:I = -0xedebe6

.field static final WIDTHS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->WIDTHS:[I

    return-void

    :array_10
    .array-data 4
        0xc0
        0x100
        0x140
        0x180
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/ai/ProgramArt;->widthFor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    monitor-enter v3

    .line 88
    :try_start_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_70

    .line 105
    :goto_30
    return-object v0

    .line 93
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xems/programs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".webp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 96
    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    if-eqz v1, :cond_68

    .line 99
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_68} :catch_73
    .catchall {:try_start_31 .. :try_end_68} :catchall_70

    :cond_68
    move-object v0, v1

    .line 104
    :goto_69
    :try_start_69
    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v3

    goto :goto_30

    .line 106
    :catchall_70
    move-exception v0

    monitor-exit v3
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v0

    .line 101
    :catch_73
    move-exception v0

    .line 102
    :try_start_74
    const-string v4, "xems"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProgramArt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_70

    move-object v0, v1

    goto :goto_69
.end method

.method public static key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    .line 47
    :goto_5
    if-eqz p1, :cond_9

    if-nez p0, :cond_26

    .line 48
    :cond_9
    if-eqz v0, :cond_10

    .line 49
    const-string v0, "passive-m"

    .line 82
    :goto_d
    return-object v0

    .line 46
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 51
    :cond_10
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 52
    :cond_20
    const-string v0, "passive-f-music"

    goto :goto_d

    :cond_23
    const-string v0, "passive-f-line"

    goto :goto_d

    .line 54
    :cond_26
    if-eqz v0, :cond_61

    .line 55
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 56
    :cond_38
    const-string v0, "m-lunge"

    goto :goto_d

    .line 58
    :cond_3b
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "back_active"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "upper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 60
    :cond_5b
    const-string v0, "m-pushup"

    goto :goto_d

    .line 62
    :cond_5e
    const-string v0, "m-squat"

    goto :goto_d

    .line 64
    :cond_61
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "postpartum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 65
    :cond_71
    const-string v0, "f-bridge"

    goto :goto_d

    .line 67
    :cond_74
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 68
    const-string v0, "f-plank"

    goto :goto_d

    .line 70
    :cond_7f
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 71
    const-string v0, "f-pushup"

    goto :goto_d

    .line 73
    :cond_8a
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 74
    const-string v0, "f-climber"

    goto/16 :goto_d

    .line 76
    :cond_96
    const-string v0, "back_active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 77
    const-string v0, "f-lateral"

    goto/16 :goto_d

    .line 79
    :cond_a2
    const-string v0, "senior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 80
    const-string v0, "f-curl"

    goto/16 :goto_d

    .line 82
    :cond_ae
    const-string v0, "f-squat"

    goto/16 :goto_d
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    :cond_24
    :goto_24
    return-void

    .line 118
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_24

    .line 123
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 125
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    move-object v0, p0

    .line 126
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public static tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    const v1, -0xedebe6

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 137
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_46

    .line 139
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 142
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_46
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v3, p4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v4, p5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 146
    int-to-float v1, p4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 147
    int-to-float v1, p5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 148
    return-object v0
.end method

.method static widthFor(I)I
    .registers 5

    .prologue
    .line 36
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramArt;->WIDTHS:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget v0, v2, v1

    .line 37
    if-lt v0, p0, :cond_c

    .line 41
    :goto_b
    return v0

    .line 36
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 41
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->WIDTHS:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramArt;->WIDTHS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_b
.end method
