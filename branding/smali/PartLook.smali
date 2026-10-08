.class public final Lcom/isaigu/gymapp/train/utils/PartLook;
.super Ljava/lang/Object;
.source "PartLook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/PartLook$Lock;,
        Lcom/isaigu/gymapp/train/utils/PartLook$Block;
    }
.end annotation


# static fields
.field private static final BLOCK:Lcom/isaigu/gymapp/train/utils/PartLook$Block;

.field private static final HEADER_ORIG:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HOLD_MS:J = 0x5dcL

.field static final HUE_SECOND:F = 45.0f

.field private static final IDLE:Ljava/util/WeakHashMap;
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

.field private static final IDLE_ALPHA:F = 0.35f

.field private static final LEG_TAG:Ljava/lang/Object;

.field private static final LOCKS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/isaigu/gymapp/train/utils/PartLook$Lock;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAINTED:Ljava/util/WeakHashMap;
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

.field static final RING_MAIN:[I

.field static final RING_SECOND:[I

.field private static final ROWS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final STALE_MS:J = 0x7d0L

.field private static final STOCK:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    .line 238
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;

    .line 239
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Block;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->BLOCK:Lcom/isaigu/gymapp/train/utils/PartLook$Block;

    .line 264
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->STOCK:[I

    .line 340
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    .line 342
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    .line 431
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    return-void

    .line 45
    :array_4a
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data

    .line 46
    :array_54
    .array-data 4
        -0x1f7e
        -0x3ef9
        -0x7100
    .end array-data

    .line 264
    :array_5e
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static arrange([Landroid/view/View;[I)V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/16 v7, 0xa

    const/4 v3, 0x0

    .line 306
    if-eqz p0, :cond_17

    array-length v0, p0

    if-lt v0, v7, :cond_17

    aget-object v0, p0, v3

    if-eqz v0, :cond_17

    aget-object v0, p0, v3

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_18

    .line 337
    :cond_17
    return-void

    .line 310
    :cond_18
    aget-object v0, p0, v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    const v5, 0x7fffffff

    const/4 v4, -0x1

    move v1, v3

    .line 312
    :goto_25
    if-ge v1, v7, :cond_44

    .line 313
    aget-object v6, p0, v1

    if-eqz v6, :cond_17

    aget-object v6, p0, v1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, v0, :cond_17

    .line 316
    aget-object v6, p0, v1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 317
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 318
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 320
    :cond_44
    sub-int v1, v4, v5

    const/16 v4, 0x9

    if-ne v1, v4, :cond_17

    move v4, v3

    move v1, v2

    .line 324
    :goto_4c
    if-ge v4, v7, :cond_62

    if-eqz v1, :cond_62

    .line 325
    add-int v1, v5, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aget v6, p1, v4

    aget-object v6, p0, v6

    if-ne v1, v6, :cond_60

    move v1, v2

    .line 324
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_60
    move v1, v3

    .line 325
    goto :goto_5d

    .line 327
    :cond_62
    if-nez v1, :cond_17

    .line 330
    :goto_64
    if-ge v3, v7, :cond_17

    .line 331
    aget v1, p1, v3

    aget-object v1, p0, v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int v4, v5, v3

    if-eq v2, v4, :cond_7a

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 334
    add-int v2, v5, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 330
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_64
.end method

.method static barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z
    .registers 6

    .prologue
    .line 101
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_9

    .line 103
    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 105
    :goto_8
    return v0

    :cond_9
    if-eqz p1, :cond_13

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_13

    if-eqz p4, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 639
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const v0, -0x994496

    goto :goto_18
.end method

.method static columns(Lcom/isaigu/gymapp/train/model/TrainItem;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    if-eqz p0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v1, v2

    .line 208
    :goto_13
    array-length v0, p1

    if-lez v0, :cond_96

    aget-object v0, p1, v3

    if-eqz v0, :cond_96

    .line 209
    aget-object v0, p1, v3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->header(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)Z

    move-result v0

    move v4, v0

    .line 211
    :goto_21
    array-length v0, p1

    new-array v7, v0, [Landroid/view/View;

    move v5, v3

    .line 212
    :goto_25
    array-length v0, p1

    if-ge v5, v0, :cond_88

    .line 213
    aget-object v0, p1, v5

    if-eqz v0, :cond_36

    aget-object v0, p1, v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_3c

    .line 212
    :cond_36
    :goto_36
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_3a
    move v1, v3

    .line 206
    goto :goto_13

    .line 216
    :cond_3c
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 217
    aput-object v0, v7, v5

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 219
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_4f
    if-eqz v1, :cond_7b

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hasChannel(I)Z

    move-result v6

    if-nez v6, :cond_7b

    move v6, v2

    .line 222
    :goto_58
    if-eqz v6, :cond_7d

    .line 223
    sget-object v8, Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;

    aget-object v9, p1, v5

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_63
    aget-object v8, p1, v5

    sget-object v9, Lcom/isaigu/gymapp/train/utils/PartLook;->BLOCK:Lcom/isaigu/gymapp/train/utils/PartLook$Block;

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    if-eqz v6, :cond_85

    const v6, 0x3eb33333    # 0.35f

    .line 229
    :goto_6f
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_36

    .line 230
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_36

    :cond_7b
    move v6, v3

    .line 221
    goto :goto_58

    .line 225
    :cond_7d
    sget-object v8, Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;

    aget-object v9, p1, v5

    invoke-virtual {v8, v9}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 228
    :cond_85
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_6f

    .line 233
    :cond_88
    if-eqz v1, :cond_94

    if-eqz v4, :cond_94

    :goto_8c
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->order(Z)[I

    move-result-object v0

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->arrange([Landroid/view/View;[I)V

    .line 234
    return-void

    :cond_94
    move v2, v3

    .line 233
    goto :goto_8c

    :cond_96
    move v4, v3

    goto :goto_21
.end method

.method public static drag(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;IF)I
    .registers 8

    .prologue
    .line 495
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 496
    if-nez v1, :cond_8

    .line 497
    const/4 v0, 0x0

    .line 516
    :goto_7
    return v0

    .line 500
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v2, :cond_26

    .line 502
    :cond_12
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v2

    .line 503
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 504
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 505
    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 508
    iput p3, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 510
    instance-of v2, p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    if-eqz v2, :cond_3c

    .line 511
    check-cast p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    .line 513
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 514
    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v0, :cond_48

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_7

    :cond_48
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4a} :catch_4b

    goto :goto_7

    .line 515
    :catch_4b
    move-exception v0

    .line 516
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_7
.end method

.method static header(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)Z
    .registers 14

    .prologue
    .line 351
    const/4 v4, 0x0

    .line 353
    if-eqz p0, :cond_31

    .line 354
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    const/4 v0, 0x1

    .line 355
    :goto_18
    if-eqz v0, :cond_6e

    .line 356
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_31
    :goto_31
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 364
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 365
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 368
    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 369
    const/4 v1, 0x1

    move v0, v2

    :goto_69
    move v2, v0

    move v3, v1

    .line 373
    goto :goto_3d

    .line 354
    :cond_6c
    const/4 v0, 0x0

    goto :goto_18

    .line 358
    :cond_6e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_73} :catch_74

    goto :goto_31

    .line 426
    :catch_74
    move-exception v0

    move v0, v4

    .line 428
    :goto_76
    return v0

    .line 371
    :cond_77
    const/4 v0, 0x1

    move v1, v3

    goto :goto_69

    .line 374
    :cond_7a
    if-eqz v3, :cond_87

    if-nez v2, :cond_87

    const/4 v2, 0x1

    .line 375
    :goto_7f
    :try_start_7f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 376
    if-nez v5, :cond_89

    move v0, v2

    .line 377
    goto :goto_76

    .line 374
    :cond_87
    const/4 v2, 0x0

    goto :goto_7f

    .line 379
    :cond_89
    const/16 v0, 0xa

    new-array v6, v0, [Landroid/view/View;

    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 381
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v8

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v9

    .line 383
    const/4 v0, 0x0

    move v4, v0

    :goto_a1
    const/16 v0, 0xa

    if-ge v4, v0, :cond_1a7

    .line 384
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buwei"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    if-eqz v0, :cond_d2

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 386
    :goto_ca
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_d4

    .line 383
    :cond_ce
    :goto_ce
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a1

    .line 385
    :cond_d2
    const/4 v0, 0x0

    goto :goto_ca

    .line 389
    :cond_d4
    check-cast v0, Landroid/view/ViewGroup;

    .line 390
    aput-object v0, v6, v4

    .line 391
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e2

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 395
    :cond_e2
    if-eqz v2, :cond_18d

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hasChannel(I)Z

    move-result v1

    if-nez v1, :cond_18d

    const/4 v1, 0x1

    move v3, v1

    .line 396
    :goto_ec
    if-eqz v3, :cond_191

    const v1, 0x3eb33333    # 0.35f

    .line 397
    :goto_f1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v10

    cmpl-float v10, v10, v1

    if-eqz v10, :cond_fc

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 400
    :cond_fc
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v1

    if-ne v1, v3, :cond_110

    if-nez v3, :cond_10a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 401
    :cond_10a
    if-nez v3, :cond_195

    const/4 v1, 0x1

    :goto_10d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 403
    :cond_110
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_198

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    .line 404
    :goto_11c
    if-eqz v3, :cond_135

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    if-ne v1, v10, :cond_135

    .line 405
    sget-object v1, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 408
    :cond_135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_19b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_19b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 409
    :goto_14d
    if-eqz v1, :cond_ce

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_160

    .line 413
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_160
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 416
    if-eqz v2, :cond_19e

    if-ne v4, v8, :cond_19e

    if-eq v8, v9, :cond_19e

    .line 417
    const-string v0, "\u041b\u044f\u0432\u043e \u0431\u0435\u0434\u0440\u043e"

    .line 421
    :cond_170
    :goto_170
    if-eqz v0, :cond_ce

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    .line 422
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ce

    .line 426
    :catch_189
    move-exception v0

    move v0, v2

    goto/16 :goto_76

    .line 395
    :cond_18d
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_ec

    .line 396
    :cond_191
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_f1

    .line 401
    :cond_195
    const/4 v1, 0x0

    goto/16 :goto_10d

    .line 403
    :cond_198
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_11c

    .line 408
    :cond_19b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_14d

    .line 418
    :cond_19e
    if-eqz v2, :cond_170

    if-ne v4, v9, :cond_170

    if-eq v8, v9, :cond_170

    .line 419
    const-string v0, "\u0414\u044f\u0441\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    goto :goto_170

    .line 425
    :cond_1a7
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->order(Z)[I

    move-result-object v0

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->arrange([Landroid/view/View;[I)V
    :try_end_1ae
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_1ae} :catch_189

    move v0, v2

    .line 427
    goto/16 :goto_76
.end method

.method static held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 87
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    .line 88
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 96
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 87
    goto :goto_b

    .line 91
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v4, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 95
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 96
    goto :goto_e

    .line 92
    :cond_29
    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    goto :goto_e
.end method

.method static idle([Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 251
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 252
    aget-object v2, p0, v0

    if-eqz v2, :cond_13

    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->IDLE:Ljava/util/WeakHashMap;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 251
    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_16
    aget-object v2, p0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 256
    if-eqz p1, :cond_2d

    array-length v2, p1

    if-ge v0, v2, :cond_2d

    aget-object v2, p1, v0

    .line 257
    :goto_23
    if-eqz v2, :cond_13

    .line 258
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->percent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 256
    :cond_2d
    const/4 v2, 0x0

    goto :goto_23

    .line 261
    :cond_2f
    return-void
.end method

.method static legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V
    .registers 8

    .prologue
    .line 472
    if-eqz p1, :cond_12

    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 473
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 488
    :cond_12
    return-void

    .line 476
    :cond_13
    const/4 v0, 0x0

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 477
    aget-object v3, p1, v0

    .line 478
    if-eqz v3, :cond_25

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowTag(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 479
    :goto_20
    if-nez v2, :cond_28

    .line 476
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 478
    :cond_25
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_20

    .line 482
    :cond_28
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    if-nez v1, :cond_64

    const-string v1, ""

    .line 484
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 483
    :cond_64
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method static legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V
    .registers 14

    .prologue
    .line 439
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 469
    :cond_6
    return-void

    .line 442
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 443
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v3

    .line 447
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 448
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v5

    .line 449
    array-length v6, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    if-ge v1, v6, :cond_6

    aget v0, v3, v1

    .line 450
    array-length v7, p2

    if-ge v0, v7, :cond_2e

    array-length v7, v4

    if-ge v0, v7, :cond_2e

    aget-object v7, p2, v0

    if-nez v7, :cond_32

    .line 449
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 453
    :cond_32
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->legValue(Ljava/lang/String;[II)I

    move-result v7

    .line 454
    if-ltz v7, :cond_2e

    aget v8, v4, v0

    if-eq v7, v8, :cond_2e

    .line 457
    aget-object v8, p2, v0

    .line 458
    invoke-static {v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 459
    if-eqz v9, :cond_48

    iget-boolean v9, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v9, :cond_2e

    :cond_48
    invoke-static {p0, p1, v8, v0, v5}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 462
    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v0, v7, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v7

    .line 463
    invoke-virtual {v8, v7}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 464
    if-eqz p3, :cond_70

    array-length v8, p3

    if-ge v0, v8, :cond_70

    aget-object v0, p3, v0

    .line 465
    :goto_5e
    if-eqz v0, :cond_2e

    .line 466
    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    iget v8, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->percent(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 464
    :cond_70
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public static live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    :try_start_6
    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 81
    :cond_b
    :goto_b
    return v0

    .line 75
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 78
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v2, :cond_2c

    .line 79
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_29} :catch_2e

    move-result-object v2

    if-nez v2, :cond_b

    :cond_2c
    move v0, v1

    goto :goto_b

    .line 80
    :catch_2e
    move-exception v0

    move v0, v1

    .line 81
    goto :goto_b
.end method

.method static lockedSecond(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 127
    if-eqz p0, :cond_e

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 128
    :goto_6
    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    return v0

    .line 127
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 128
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V
    .registers 5

    .prologue
    .line 592
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 593
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 606
    :goto_10
    return-void

    .line 596
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 597
    const-string v1, "light_green_color"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 598
    const-string v2, "dark_green_color"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 599
    if-eqz p1, :cond_2b

    .line 600
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v1

    .line 601
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v0

    .line 603
    :cond_2b
    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 604
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 605
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method static lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    .registers 6

    .prologue
    .line 609
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 610
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 617
    :goto_10
    return-void

    .line 613
    :cond_11
    if-eqz p1, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 614
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 615
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 616
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 613
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    goto :goto_15
.end method

.method static order(Z)[I
    .registers 13

    .prologue
    const/16 v11, 0xa

    const/16 v0, 0x9

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 268
    if-nez p0, :cond_b

    .line 269
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->STOCK:[I

    .line 298
    :goto_a
    return-object v0

    .line 271
    :cond_b
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v5

    .line 272
    invoke-static {v10}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSlider(Z)I

    move-result v6

    .line 273
    if-ltz v5, :cond_1d

    if-ltz v6, :cond_1d

    if-gt v5, v0, :cond_1d

    if-gt v6, v0, :cond_1d

    if-ne v5, v6, :cond_20

    .line 274
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->STOCK:[I

    goto :goto_a

    .line 276
    :cond_20
    new-array v2, v11, [I

    .line 278
    sget-object v7, Lcom/isaigu/gymapp/train/utils/PartLook;->STOCK:[I

    array-length v8, v7

    move v4, v3

    move v0, v3

    :goto_27
    if-ge v4, v8, :cond_43

    aget v9, v7, v4

    .line 279
    if-eq v9, v5, :cond_2f

    if-ne v9, v6, :cond_33

    .line 278
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_27

    .line 282
    :cond_33
    add-int/lit8 v1, v0, 0x1

    aput v9, v2, v0

    .line 283
    const/4 v0, 0x3

    if-ne v9, v0, :cond_61

    .line 284
    add-int/lit8 v9, v1, 0x1

    aput v5, v2, v1

    .line 285
    add-int/lit8 v0, v9, 0x1

    aput v6, v2, v9

    goto :goto_2f

    .line 288
    :cond_43
    if-eq v0, v11, :cond_5d

    .line 289
    aput v5, v2, v3

    .line 290
    aput v6, v2, v10

    .line 291
    const/4 v1, 0x2

    .line 292
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->STOCK:[I

    array-length v7, v4

    :goto_4d
    if-ge v3, v7, :cond_5d

    aget v8, v4, v3

    .line 293
    if-eq v8, v5, :cond_5f

    if-eq v8, v6, :cond_5f

    .line 294
    add-int/lit8 v0, v1, 0x1

    aput v8, v2, v1

    .line 292
    :goto_59
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4d

    :cond_5d
    move-object v0, v2

    .line 298
    goto :goto_a

    :cond_5f
    move v0, v1

    goto :goto_59

    :cond_61
    move v0, v1

    goto :goto_2f
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V
    .registers 16

    .prologue
    .line 146
    if-eqz p2, :cond_5

    .line 147
    :try_start_2
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->columns(Lcom/isaigu/gymapp/train/model/TrainItem;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;)V

    .line 149
    :cond_5
    if-eqz p4, :cond_a

    .line 150
    invoke-static {p0, p4, p2, p3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->paint(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;[Landroid/view/View;[Landroid/view/View;)V

    .line 152
    :cond_a
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v0, :cond_1b

    .line 192
    :cond_1a
    :goto_1a
    return-void

    .line 155
    :cond_1b
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v6

    .line 156
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 157
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_40

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    move-object v4, v0

    .line 158
    :goto_2c
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    .line 159
    const/4 v0, 0x0

    move v3, v0

    :goto_32
    array-length v0, p2

    if-ge v3, v0, :cond_9d

    array-length v0, v5

    if-ge v3, v0, :cond_9d

    .line 160
    aget-object v7, p2, v3

    .line 161
    if-nez v7, :cond_42

    .line 159
    :goto_3c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_32

    :cond_40
    move-object v4, v5

    .line 157
    goto :goto_2c

    .line 164
    :cond_42
    invoke-static {p0, p1, v7, v3, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v8

    .line 165
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 166
    if-eqz p3, :cond_8c

    array-length v0, p3

    if-ge v3, v0, :cond_8c

    aget-object v0, p3, v3

    move-object v2, v0

    .line 167
    :goto_52
    const/high16 v0, -0x40800000    # -1.0f

    .line 168
    if-eqz v9, :cond_8f

    iget-boolean v10, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v10, :cond_8f

    .line 169
    iget v0, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 173
    :cond_5c
    :goto_5c
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_77

    .line 174
    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 175
    if-eqz v2, :cond_77

    .line 176
    const/high16 v9, 0x42c80000    # 100.0f

    div-float v9, v0, v9

    if-eqz v8, :cond_9a

    move v0, v1

    :goto_6d
    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->percent(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_77
    if-eqz v2, :cond_86

    if-eqz v8, :cond_86

    .line 180
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->textColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_86
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    goto :goto_3c

    .line 190
    :catch_8a
    move-exception v0

    goto :goto_1a

    .line 166
    :cond_8c
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_52

    .line 170
    :cond_8f
    if-eqz v8, :cond_5c

    .line 171
    aget v0, v4, v3

    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v3, v0, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v0

    goto :goto_5c

    .line 176
    :cond_9a
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_6d

    .line 184
    :cond_9d
    if-eqz p4, :cond_a6

    .line 185
    invoke-static {p0, p1, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V

    .line 187
    :cond_a6
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V

    .line 188
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V

    .line 189
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->idle([Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_af} :catch_8a

    goto/16 :goto_1a
.end method

.method static percent(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static release(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 522
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_12

    .line 524
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 527
    :cond_12
    return-void
.end method

.method public static ringEnd(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 562
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 563
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 564
    if-eqz v2, :cond_17

    .line 565
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 568
    :cond_17
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 569
    if-eqz v1, :cond_2c

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_2c

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 576
    :cond_2c
    :goto_2c
    return v0

    .line 572
    :cond_2d
    const/4 v2, 0x0

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 573
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_44} :catch_46

    .line 574
    const/4 v0, 0x1

    goto :goto_2c

    .line 575
    :catch_46
    move-exception v1

    goto :goto_2c
.end method

.method static ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    if-nez v0, :cond_20

    .line 134
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 133
    :goto_1f
    return v0

    .line 134
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static ringMove(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 535
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 536
    if-nez v3, :cond_9

    .line 551
    :goto_8
    return v1

    .line 539
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_13

    iget-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v4, :cond_27

    .line 541
    :cond_13
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v4

    .line 542
    new-instance v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 543
    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 544
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 548
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 549
    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_3f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3a} :catch_41

    move-result v2

    if-eqz v2, :cond_3f

    :goto_3d
    move v1, v0

    goto :goto_8

    :cond_3f
    move v0, v1

    goto :goto_3d

    .line 550
    :catch_41
    move-exception v0

    goto :goto_8
.end method

.method static ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-eqz p1, :cond_e

    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 122
    :cond_f
    :goto_f
    return v0

    .line 113
    :cond_10
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_19

    .line 115
    iget-boolean v0, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    goto :goto_f

    .line 117
    :cond_19
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 120
    :cond_2b
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 121
    if-eqz v3, :cond_43

    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v2

    .line 122
    :goto_35
    if-eqz v2, :cond_41

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_41
    move v0, v1

    goto :goto_f

    .line 121
    :cond_43
    const/4 v2, 0x0

    goto :goto_35
.end method

.method static ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 582
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 583
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p2, v0, 0x64

    .line 585
    :cond_18
    return p2
.end method

.method static textColor(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 634
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, -0x3ef9

    :goto_8
    return v0

    :cond_9
    const v0, -0x1f6500

    goto :goto_8
.end method

.method static yellow(I)I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 621
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 622
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 623
    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v0, v1

    .line 624
    aget v1, v0, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 625
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method
