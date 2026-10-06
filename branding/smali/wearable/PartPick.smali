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

.field private static final YELLOW:[Z

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
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 37
    new-array v0, v1, [Z

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    .line 38
    new-array v0, v1, [J

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static click(Lcom/isaigu/gymapp/fragment/NewTrainFragment;[ZI)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    if-eqz p1, :cond_d

    if-ltz p2, :cond_d

    :try_start_6
    array-length v2, p1

    if-ge p2, v2, :cond_d

    const/16 v2, 0xa

    if-lt p2, v2, :cond_e

    .line 88
    :cond_d
    :goto_d
    return v0

    .line 67
    :cond_e
    sput-object p1, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 68
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    .line 69
    if-eqz p0, :cond_51

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 70
    :goto_23
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/PartPick;->secondOn(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 71
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    .line 72
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, p2
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_d

    .line 86
    :catch_37
    move-exception v1

    .line 87
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "part click: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 69
    :cond_51
    const/4 v2, 0x0

    goto :goto_23

    .line 75
    :cond_53
    :try_start_53
    aget-boolean v2, p1, p2

    if-nez v2, :cond_69

    .line 76
    const/4 v2, 0x1

    aput-boolean v2, p1, p2

    .line 77
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p2

    .line 84
    :goto_5f
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, p2

    move v0, v1

    .line 85
    goto :goto_d

    .line 78
    :cond_69
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_75

    .line 79
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p2

    goto :goto_5f

    .line 81
    :cond_75
    const/4 v2, 0x0

    aput-boolean v2, p1, p2

    .line 82
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p2
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_7d} :catch_37

    goto :goto_5f
.end method

.method public static isYellow(I)Z
    .registers 2

    .prologue
    .line 47
    if-ltz p0, :cond_1d

    const/16 v0, 0xa

    if-ge p0, v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static secondOn(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    if-nez p0, :cond_5

    .line 105
    :cond_4
    :goto_4
    return v2

    :cond_5
    move v1, v2

    .line 97
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 98
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 99
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 100
    :goto_1e
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 101
    :goto_24
    if-eqz v0, :cond_30

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_30

    .line 102
    const/4 v2, 0x1

    goto :goto_4

    :cond_2c
    move-object v0, v3

    .line 99
    goto :goto_1e

    :cond_2e
    move-object v0, v3

    .line 100
    goto :goto_24

    .line 97
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method static tick(Ljava/util/List;)V
    .registers 13
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

    .line 111
    if-eqz p0, :cond_f

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    :cond_f
    :goto_f
    return-void

    .line 114
    :cond_10
    const/4 v1, 0x0

    move v2, v3

    .line 115
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    if-nez v1, :cond_2c

    .line 116
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 117
    if-eqz v0, :cond_97

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v4, :cond_97

    .line 118
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    .line 115
    :goto_28
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_12

    .line 121
    :cond_2c
    if-eqz v1, :cond_f

    .line 124
    sput-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 126
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/PartPick;->secondOn(Ljava/util/List;)Z

    move-result v6

    move v2, v3

    move v0, v3

    .line 128
    :goto_3a
    const/16 v3, 0xa

    if-ge v2, v3, :cond_89

    array-length v3, v1

    if-ge v2, v3, :cond_89

    .line 129
    aget-boolean v3, v1, v2

    if-nez v3, :cond_4d

    .line 130
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v2

    .line 128
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 133
    :cond_4d
    if-nez v6, :cond_73

    .line 134
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v2

    .line 135
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aput-wide v4, v3, v2
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_58} :catch_59

    goto :goto_4a

    .line 145
    :catch_59
    move-exception v0

    .line 146
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

    .line 136
    :cond_73
    :try_start_73
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aget-wide v8, v3, v2

    sub-long v8, v4, v8

    const-wide/16 v10, 0x1388

    cmp-long v3, v8, v10

    if-ltz v3, :cond_4a

    .line 137
    const/4 v0, 0x0

    aput-boolean v0, v1, v2

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 139
    const/4 v0, 0x1

    goto :goto_4a

    .line 142
    :cond_89
    if-eqz v0, :cond_f

    .line 143
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_95} :catch_59

    goto/16 :goto_f

    :cond_97
    move-object v0, v1

    goto :goto_28
.end method

.method public static tint(Landroid/view/View;Landroid/view/View;I)V
    .registers 8

    .prologue
    .line 170
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 192
    :cond_8
    :goto_8
    return-void

    .line 173
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 174
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 175
    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 176
    const v3, 0x33f9a825

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, -0x3ef9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 178
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    if-eqz p1, :cond_53

    .line 180
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 181
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 182
    const v3, 0x55ffd54f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 183
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v3, -0x3ef9

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_53
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 187
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, -0x4d00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_72} :catch_73

    goto :goto_8

    .line 189
    :catch_73
    move-exception v1

    .line 190
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

    goto/16 :goto_8
.end method

.method public static touch()V
    .registers 4

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    .line 54
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aput-wide v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 56
    :cond_10
    return-void
.end method
