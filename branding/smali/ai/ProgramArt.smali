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

.field static final RING_PX:I = 0x200

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

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "-sq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x200

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    sget-object v3, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    monitor-enter v3

    .line 97
    :try_start_25
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_7b

    .line 114
    :goto_36
    return-object v0

    .line 95
    :cond_37
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/ProgramArt;->widthFor(I)I

    move-result v0

    goto :goto_1a

    .line 102
    :cond_3c
    :try_start_3c
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

    .line 103
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 105
    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    if-eqz v1, :cond_73

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_73} :catch_7e
    .catchall {:try_start_3c .. :try_end_73} :catchall_7b

    :cond_73
    move-object v0, v1

    .line 113
    :goto_74
    :try_start_74
    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v3

    goto :goto_36

    .line 115
    :catchall_7b
    move-exception v0

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_7b

    throw v0

    .line 110
    :catch_7e
    move-exception v0

    .line 111
    :try_start_7f
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
    :try_end_a1
    .catchall {:try_start_7f .. :try_end_a1} :catchall_7b

    move-object v0, v1

    goto :goto_74
.end method

.method public static key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    .line 60
    :goto_5
    if-eqz p1, :cond_9

    if-nez p0, :cond_10

    .line 61
    :cond_9
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/ProgramArt;->passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_d
    return-object v0

    .line 59
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 63
    :cond_10
    if-eqz v0, :cond_4b

    .line 64
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 65
    :cond_22
    const-string v0, "m-lunge"

    goto :goto_d

    .line 67
    :cond_25
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "back_active"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "upper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 69
    :cond_45
    const-string v0, "m-pushup"

    goto :goto_d

    .line 71
    :cond_48
    const-string v0, "m-squat"

    goto :goto_d

    .line 73
    :cond_4b
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "postpartum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 74
    :cond_5b
    const-string v0, "f-bridge"

    goto :goto_d

    .line 76
    :cond_5e
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 77
    const-string v0, "f-plank"

    goto :goto_d

    .line 79
    :cond_69
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 80
    const-string v0, "f-pushup"

    goto :goto_d

    .line 82
    :cond_74
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 83
    const-string v0, "f-climber"

    goto :goto_d

    .line 85
    :cond_7f
    const-string v0, "back_active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 86
    const-string v0, "f-lateral"

    goto :goto_d

    .line 88
    :cond_8a
    const-string v0, "senior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 89
    const-string v0, "f-curl"

    goto/16 :goto_d

    .line 91
    :cond_96
    const-string v0, "f-squat"

    goto/16 :goto_d
.end method

.method public static passiveKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_7

    const-string v0, "passive-m"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "passive-f"

    goto :goto_6
.end method

.method public static ring(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;
    .registers 4

    .prologue
    .line 147
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/ProgramArt;->showRing(Landroid/view/View;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 137
    :cond_24
    :goto_24
    return-void

    .line 127
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_24

    .line 132
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 133
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 134
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    move-object v0, p0

    .line 135
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public static showRing(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 155
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    :cond_f
    :goto_f
    return-void

    .line 158
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-sq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_f

    .line 163
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    move-object v0, p0

    .line 166
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static templateKey(Lcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_7

    const-string v0, "active-m"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "active-f"

    goto :goto_6
.end method

.method public static tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;
    .registers 7

    .prologue
    .line 172
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p4, p5}, Lcom/isaigu/gymapp/ai/ProgramArt;->tileKey(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static tileKey(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    const v1, -0xedebe6

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 180
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 182
    int-to-float v2, p2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_42

    .line 184
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 186
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_42
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v3, p2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v4, p3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 191
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 192
    int-to-float v1, p3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 193
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
