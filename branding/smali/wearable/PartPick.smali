.class public final Lcom/isaigu/gymapp/wearable/PartPick;
.super Ljava/lang/Object;
.source "PartPick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/PartPick$Refresh;,
        Lcom/isaigu/gymapp/wearable/PartPick$Hold;,
        Lcom/isaigu/gymapp/wearable/PartPick$Ring;
    }
.end annotation


# static fields
.field static final HOLD_MS:J = 0xbb8L

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

.field static final TAG_HOLD:I = 0x7f0fe001

.field private static final TEXT_COLOR:[I

.field private static final TINTED:[Z

.field private static final YELLOW:[Z

.field private static applies:Ljava/lang/reflect/Method;

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

.field private static rows:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xa

    .line 56
    new-array v0, v2, [Z

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    .line 57
    new-array v0, v2, [J

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    .line 64
    new-array v0, v2, [Z

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    .line 246
    new-array v0, v2, [I

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[J
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    return-object v0
.end method

.method static applies(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 348
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->applies:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1b

    .line 349
    const-string v1, "com.isaigu.gymapp.widget.XemsLocalAvatar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "masterApplies"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/isaigu/gymapp/train/model/TrainItem;

    aput-object v5, v3, v4

    .line 350
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->applies:Ljava/lang/reflect/Method;

    .line 352
    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->applies:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result v0

    .line 354
    :goto_2e
    return v0

    .line 353
    :catch_2f
    move-exception v1

    goto :goto_2e
.end method

.method public static click(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Lcom/isaigu/gymapp/train/TrainItemManager;[ZI)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    if-eqz p2, :cond_d

    if-ltz p3, :cond_d

    array-length v2, p2

    if-ge p3, v2, :cond_d

    const/16 v2, 0xa

    if-lt p3, v2, :cond_e

    .line 118
    :cond_d
    :goto_d
    return v0

    .line 97
    :cond_e
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, p3

    .line 99
    :try_start_16
    sput-object p2, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 100
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;

    .line 101
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 102
    :goto_25
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/PartPick;->secondOn(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 103
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p3
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_30} :catch_31

    goto :goto_d

    .line 116
    :catch_31
    move-exception v1

    .line 117
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

    .line 101
    :cond_4b
    const/4 v2, 0x0

    goto :goto_25

    .line 106
    :cond_4d
    :try_start_4d
    aget-boolean v2, p2, p3

    if-nez v2, :cond_5b

    .line 107
    const/4 v2, 0x1

    aput-boolean v2, p2, p3

    .line 108
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p3

    :goto_59
    move v0, v1

    .line 115
    goto :goto_d

    .line 109
    :cond_5b
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    aget-boolean v2, v2, p3

    if-nez v2, :cond_67

    .line 110
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    goto :goto_59

    .line 112
    :cond_67
    const/4 v2, 0x0

    aput-boolean v2, p2, p3

    .line 113
    sget-object v2, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p3
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_6f} :catch_31

    goto :goto_59
.end method

.method static hold(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    const v1, 0x7f0fe001

    .line 333
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;

    if-nez v0, :cond_16

    .line 334
    new-instance v0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 335
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 336
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    :cond_16
    return-void
.end method

.method static holdable()Z
    .registers 1

    .prologue
    .line 360
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->rows:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->rows:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 361
    :goto_c
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->secondOn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_1f
    return v0

    .line 360
    :cond_20
    const/4 v0, 0x0

    goto :goto_c

    .line 361
    :cond_22
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static installHolds(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 316
    if-nez p0, :cond_3

    .line 330
    :cond_2
    :goto_2
    return-void

    .line 319
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 320
    const/4 v1, 0x0

    move v3, v1

    :goto_d
    const/16 v1, 0xa

    if-ge v3, v1, :cond_2

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buwei"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v1, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 322
    if-eqz v1, :cond_4a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 323
    :goto_36
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_46

    .line 324
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/PartPick;->hold(Landroid/view/View;Landroid/view/View;I)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_46} :catch_4c

    .line 320
    :cond_46
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    .line 322
    :cond_4a
    const/4 v2, 0x0

    goto :goto_36

    .line 327
    :catch_4c
    move-exception v1

    .line 328
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "part hold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isMarked(I)Z
    .registers 2

    .prologue
    .line 78
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
    .line 73
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

    .line 124
    if-nez p0, :cond_5

    .line 135
    :cond_4
    :goto_4
    return v2

    :cond_5
    move v1, v2

    .line 127
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 128
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 129
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 130
    :goto_1e
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 131
    :goto_24
    if-eqz v0, :cond_30

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_30

    .line 132
    const/4 v2, 0x1

    goto :goto_4

    :cond_2c
    move-object v0, v3

    .line 129
    goto :goto_1e

    :cond_2e
    move-object v0, v3

    .line 130
    goto :goto_24

    .line 127
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method static sync(I)Z
    .registers 2

    .prologue
    .line 277
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->rows:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->rows:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_c
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/PartPick;->sync(Ljava/util/List;I)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static sync(Ljava/util/List;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 281
    .line 282
    if-nez p0, :cond_5

    .line 307
    :goto_4
    return v0

    :cond_5
    move v1, v0

    move v2, v0

    .line 285
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 286
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 287
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    .line 288
    :goto_1f
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 289
    :goto_25
    if-eqz v3, :cond_3c

    iget-boolean v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v5, :cond_3c

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v5, :cond_3c

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v5, :cond_3c

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v5, v5

    if-lt p1, v5, :cond_44

    .line 285
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_40
    move-object v3, v4

    .line 287
    goto :goto_1f

    :cond_42
    move-object v3, v4

    .line 288
    goto :goto_25

    .line 293
    :cond_44
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->applies(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 296
    const/4 v2, 0x1

    .line 297
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 298
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v6

    .line 299
    aget v7, v5, p1

    aput v7, v6, p1

    .line 300
    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V

    .line 302
    :try_start_5a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 303
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_60} :catch_61

    goto :goto_3c

    .line 304
    :catch_61
    move-exception v0

    goto :goto_3c

    :cond_63
    move v0, v2

    .line 307
    goto :goto_4
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

    .line 141
    if-eqz p0, :cond_a

    .line 142
    :try_start_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->rows:Ljava/lang/ref/WeakReference;

    .line 144
    :cond_a
    if-eqz p0, :cond_18

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 181
    :cond_18
    :goto_18
    return-void

    .line 147
    :cond_19
    const/4 v1, 0x0

    move v2, v3

    .line 148
    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_35

    if-nez v1, :cond_35

    .line 149
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 150
    if-eqz v0, :cond_9b

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v4, :cond_9b

    .line 151
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    .line 148
    :goto_31
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1b

    .line 154
    :cond_35
    if-eqz v1, :cond_18

    .line 157
    sput-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->ctl:[Z

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 159
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/PartPick;->secondOn(Ljava/util/List;)Z

    move-result v6

    move v2, v3

    move v0, v3

    .line 161
    :goto_43
    const/16 v3, 0xa

    if-ge v2, v3, :cond_73

    array-length v3, v1

    if-ge v2, v3, :cond_73

    .line 162
    aget-boolean v3, v1, v2

    if-nez v3, :cond_56

    .line 163
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v2

    .line 161
    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 166
    :cond_56
    if-nez v6, :cond_5d

    .line 167
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v2

    .line 169
    :cond_5d
    sget-object v3, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aget-wide v8, v3, v2

    sub-long v8, v4, v8

    const-wide/16 v10, 0x1388

    cmp-long v3, v8, v10

    if-ltz v3, :cond_53

    .line 170
    const/4 v0, 0x0

    aput-boolean v0, v1, v2

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->YELLOW:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 172
    const/4 v0, 0x1

    goto :goto_53

    .line 175
    :cond_73
    if-eqz v0, :cond_18

    .line 176
    sget-object v0, Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PartPick$Refresh;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_7f} :catch_80

    goto :goto_18

    .line 178
    :catch_80
    move-exception v0

    .line 179
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

    goto/16 :goto_18

    :cond_9b
    move-object v0, v1

    goto :goto_31
.end method

.method public static tintAll(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 204
    if-nez p0, :cond_4

    .line 244
    :cond_3
    :goto_3
    return-void

    .line 207
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v5, v4

    .line 209
    :goto_15
    const/16 v1, 0xa

    if-ge v5, v1, :cond_3

    .line 210
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

    .line 211
    if-eqz v1, :cond_46

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 212
    :goto_3e
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-nez v1, :cond_48

    .line 209
    :cond_42
    :goto_42
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_15

    .line 211
    :cond_46
    const/4 v2, 0x0

    goto :goto_3e

    .line 215
    :cond_48
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 216
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 217
    invoke-static {v2, v8, v5}, Lcom/isaigu/gymapp/wearable/PartPick;->hold(Landroid/view/View;Landroid/view/View;I)V

    .line 218
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 219
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_8f

    if-nez v6, :cond_8f

    .line 220
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    if-eqz v8, :cond_7f

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_7f
    sget-object v9, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    instance-of v1, v3, Landroid/widget/TextView;

    if-eqz v1, :cond_b3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    :goto_8d
    aput v1, v9, v5

    .line 226
    :cond_8f
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    const/4 v9, 0x1

    aput-boolean v9, v1, v5

    .line 227
    invoke-static {v2, v8, v3}, Lcom/isaigu/gymapp/wearable/PartPick;->yellow(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_97} :catch_98

    goto :goto_42

    .line 241
    :catch_98
    move-exception v1

    .line 242
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

    :cond_b3
    move v1, v4

    .line 224
    goto :goto_8d

    .line 228
    :cond_b5
    :try_start_b5
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_42

    .line 229
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TINTED:[Z

    const/4 v9, 0x0

    aput-boolean v9, v1, v5

    .line 230
    if-nez v6, :cond_42

    .line 231
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    if-eqz v8, :cond_da

    .line 233
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->SAVED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v8}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_da
    instance-of v1, v3, Landroid/widget/TextView;

    if-eqz v1, :cond_42

    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    aget v1, v1, v5

    if-eqz v1, :cond_42

    .line 236
    check-cast v3, Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->TEXT_COLOR:[I

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_ed} :catch_98

    goto/16 :goto_42
.end method

.method public static touch()V
    .registers 4

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    .line 85
    sget-object v1, Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J

    aput-wide v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 87
    :cond_10
    return-void
.end method

.method private static yellow(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    const/16 v3, -0x3ef9

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 250
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 251
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 252
    const v2, 0x33f9a825

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 253
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 254
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    if-eqz p1, :cond_48

    .line 256
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 258
    const v2, 0x55ffd54f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_48
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 263
    check-cast p2, Landroid/widget/TextView;

    const/16 v0, -0x4d00

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    :cond_53
    return-void
.end method
