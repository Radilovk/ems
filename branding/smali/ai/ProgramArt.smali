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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 72
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    monitor-enter v2

    .line 73
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 74
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_46

    .line 85
    :goto_14
    return-object v0

    .line 76
    :cond_15
    const/4 v1, 0x0

    .line 78
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems/programs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".webp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_3e} :catch_49
    .catchall {:try_start_16 .. :try_end_3e} :catchall_46

    move-object v0, v1

    .line 84
    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramArt;->CACHE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v2

    goto :goto_14

    .line 86
    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v0

    .line 81
    :catch_49
    move-exception v0

    .line 82
    :try_start_4a
    const-string v3, "xems"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProgramArt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_46

    move-object v0, v1

    goto :goto_3f
.end method

.method public static key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    .line 33
    :goto_5
    if-eqz p1, :cond_9

    if-nez p0, :cond_26

    .line 34
    :cond_9
    if-eqz v0, :cond_10

    .line 35
    const-string v0, "passive-m"

    .line 68
    :goto_d
    return-object v0

    .line 32
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 37
    :cond_10
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 38
    :cond_20
    const-string v0, "passive-f-music"

    goto :goto_d

    :cond_23
    const-string v0, "passive-f-line"

    goto :goto_d

    .line 40
    :cond_26
    if-eqz v0, :cond_59

    .line 41
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42
    :cond_38
    const-string v0, "m-lunge"

    goto :goto_d

    .line 44
    :cond_3b
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "back_active"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 46
    :cond_53
    const-string v0, "m-pushup"

    goto :goto_d

    .line 48
    :cond_56
    const-string v0, "m-squat"

    goto :goto_d

    .line 50
    :cond_59
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "postpartum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 51
    :cond_69
    const-string v0, "f-bridge"

    goto :goto_d

    .line 53
    :cond_6c
    const-string v0, "core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 54
    const-string v0, "f-plank"

    goto :goto_d

    .line 56
    :cond_77
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 57
    const-string v0, "f-pushup"

    goto :goto_d

    .line 59
    :cond_82
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 60
    const-string v0, "f-climber"

    goto :goto_d

    .line 62
    :cond_8d
    const-string v0, "back_active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 63
    const-string v0, "f-lateral"

    goto/16 :goto_d

    .line 65
    :cond_99
    const-string v0, "senior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 66
    const-string v0, "f-curl"

    goto/16 :goto_d

    .line 68
    :cond_a5
    const-string v0, "f-squat"

    goto/16 :goto_d
.end method

.method public static tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const v1, -0xedebe6

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 96
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/ai/ProgramArt;->key(Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/ProgramArt;->bitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_31

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :cond_31
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 101
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 102
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

    .line 103
    int-to-float v1, p4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 104
    int-to-float v1, p5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 105
    return-object v0
.end method
