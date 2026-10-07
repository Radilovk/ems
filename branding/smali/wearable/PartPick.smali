.class public final Lcom/isaigu/gymapp/wearable/PartPick;
.super Ljava/lang/Object;
.source "PartPick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/PartPick$Refresh;
    }
.end annotation


# static fields
.field static final IDLE_MS:J = 0x1388L

.field private static final LAST:[J

.field private static final MAIN:Landroid/os/Handler;

.field static final N:I = 0xa

.field private static final SAVED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_COLOR:[I

.field private static final TINTED:[Z

.field private static ctl:[Z

.field private static frag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/isaigu/gymapp/fragment/NewTrainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xa

    .line 35
    new-array v0, v2, [J

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    .line 42
    new-array v0, v2, [Z

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    .line 197
    new-array v0, v2, [I

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static click(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Lcom/isaigu/gymapp/train/TrainItemManager;[ZI)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p2, :cond_c

    if-ltz p3, :cond_c

    array-length v0, p2

    if-ge p3, v0, :cond_c

    const/16 v0, 0xa

    if-lt p3, v0, :cond_d

    .line 77
    :cond_c
    :goto_c
    return v1

    .line 73
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, p3

    .line 74
    sput-object p2, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touchAll()V

    goto :goto_c
.end method

.method static icons(Landroid/view/View;)[Landroid/view/View;
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 133
    new-array v0, v6, [Landroid/view/View;

    .line 135
    if-nez p0, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-object v0

    .line 138
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 139
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v6, :cond_6

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buwei"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 141
    if-eqz v1, :cond_3e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    :goto_38
    aput-object v1, v0, v2
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3a} :catch_40

    .line 139
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 141
    :cond_3e
    const/4 v1, 0x0

    goto :goto_38

    .line 144
    :catch_40
    move-exception v1

    goto :goto_6
.end method

.method public static isMarked(I)Z
    .registers 2

    .prologue
    .line 53
    if-ltz p0, :cond_17

    const/16 v0, 0xa

    if-ge p0, v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isYellow(I)Z
    .registers 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/PartPick;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->anyActive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method static tick(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    if-eqz p0, :cond_f

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 111
    :cond_f
    :goto_f
    return-void

    .line 86
    :cond_10
    const/4 v1, 0x0

    move v2, v3

    .line 87
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    if-nez v1, :cond_2c

    .line 88
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 89
    if-eqz v0, :cond_74

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v4, :cond_74

    .line 90
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    .line 87
    :goto_28
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_12

    .line 93
    :cond_2c
    if-eqz v1, :cond_f

    .line 96
    sput-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, v3

    move v0, v3

    .line 99
    :goto_36
    const/16 v3, 0xa

    if-ge v2, v3, :cond_54

    array-length v3, v1

    if-ge v2, v3, :cond_54

    .line 100
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_51

    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v3, v6, v8

    if-ltz v3, :cond_51

    .line 101
    const/4 v0, 0x0

    aput-boolean v0, v1, v2

    .line 102
    const/4 v0, 0x1

    .line 99
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 105
    :cond_54
    if-eqz v0, :cond_f

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_59} :catch_5a

    goto :goto_f

    .line 108
    :catch_5a
    move-exception v0

    .line 109
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "part tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_74
    move-object v0, v1

    goto :goto_28
.end method

.method public static tintAll(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 156
    if-nez p0, :cond_4

    .line 195
    :cond_3
    :goto_3
    return-void

    .line 159
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v5, v4

    .line 161
    :goto_15
    const/16 v1, 0xa

    if-ge v5, v1, :cond_3

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buwei"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 163
    if-eqz v1, :cond_46

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    :goto_3e
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-nez v1, :cond_48

    .line 161
    :cond_42
    :goto_42
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_15

    .line 163
    :cond_46
    const/4 v2, 0x0

    goto :goto_3e

    .line 167
    :cond_48
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 168
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 169
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 170
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_8c

    if-nez v6, :cond_8c

    .line 171
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    if-eqz v8, :cond_7c

    .line 173
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_7c
    sget-object v9, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    instance-of v1, v3, Landroid/widget/TextView;

    if-eqz v1, :cond_b0

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    :goto_8a
    aput v1, v9, v5

    .line 177
    :cond_8c
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    const/4 v9, 0x1

    aput-boolean v9, v1, v5

    .line 178
    invoke-static {v2, v8, v3}, Lcom/isaigu/gymapp/wearable/PartPick;->yellow(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_94} :catch_95

    goto :goto_42

    .line 192
    :catch_95
    move-exception v1

    .line 193
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "part tint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b0
    move v1, v4

    .line 175
    goto :goto_8a

    .line 179
    :cond_b2
    :try_start_b2
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_42

    .line 180
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    const/4 v9, 0x0

    aput-boolean v9, v1, v5

    .line 181
    if-nez v6, :cond_42

    .line 182
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    if-eqz v8, :cond_d7

    .line 184
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v8}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_d7
    instance-of v1, v3, Landroid/widget/TextView;

    if-eqz v1, :cond_42

    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    aget v1, v1, v5

    if-eqz v1, :cond_42

    .line 187
    check-cast v3, Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_ea} :catch_95

    goto/16 :goto_42
.end method

.method public static touch()V
    .registers 4

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    .line 60
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aput-wide v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 62
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touchAll()V

    .line 63
    return-void
.end method

.method private static yellow(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    const/16 v3, -0x3ef9

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 201
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 202
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 203
    const v2, 0x33f9a825

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 204
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    if-eqz p1, :cond_48

    .line 207
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 208
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 209
    const v2, 0x55ffd54f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 210
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 211
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_48
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 214
    check-cast p2, Landroid/widget/TextView;

    const/16 v0, -0x4d00

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_53
    return-void
.end method
