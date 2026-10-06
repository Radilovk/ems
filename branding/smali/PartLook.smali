.class public final Lcom/isaigu/gymapp/train/utils/PartLook;
.super Ljava/lang/Object;
.source "PartLook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    }
.end annotation


# static fields
.field static final HOLD_MS:J = 0x5dcL

.field static final HUE_SECOND:F = 45.0f

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

.field static final STALE_MS:J = 0x7d0L

.field private static holds:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    return-void

    .line 42
    :array_1e
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data

    .line 43
    :array_28
    .array-data 4
        -0x1f7e
        -0x3ef9
        -0x7100
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_a

    .line 95
    iget-boolean p4, v1, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 109
    :cond_9
    :goto_9
    return p4

    .line 97
    :cond_a
    if-eqz p1, :cond_10

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v1, :cond_12

    :cond_10
    move p4, v0

    .line 98
    goto :goto_9

    .line 100
    :cond_12
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v1, v1

    if-ge p3, v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_26

    .line 101
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result p4

    goto :goto_9

    .line 103
    :cond_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 104
    :cond_32
    const/4 p4, 0x1

    goto :goto_9

    .line 106
    :cond_34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_40
    move p4, v0

    .line 107
    goto :goto_9
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 437
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
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 211
    if-eqz p0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 212
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    move v1, v0

    :goto_13
    move v3, v2

    .line 213
    :goto_14
    array-length v0, p1

    if-ge v3, v0, :cond_48

    .line 214
    aget-object v0, p1, v3

    if-eqz v0, :cond_25

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_2b

    .line 213
    :cond_25
    :goto_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_14

    :cond_29
    move v1, v2

    .line 212
    goto :goto_13

    .line 217
    :cond_2b
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 218
    if-eqz v1, :cond_3b

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hasChannel(I)Z

    move-result v4

    if-eqz v4, :cond_46

    :cond_3b
    move v4, v2

    .line 219
    :goto_3c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_25

    .line 220
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 218
    :cond_46
    const/4 v4, 0x4

    goto :goto_3c

    .line 223
    :cond_48
    return-void
.end method

.method public static drag(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;IF)I
    .registers 8

    .prologue
    .line 287
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 288
    if-nez v1, :cond_8

    .line 289
    const/4 v0, 0x0

    .line 308
    :goto_7
    return v0

    .line 292
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v2, :cond_26

    .line 294
    :cond_12
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v2

    .line 295
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 296
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 297
    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 300
    iput p3, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 302
    instance-of v2, p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    if-eqz v2, :cond_3c

    .line 303
    check-cast p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    .line 305
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 306
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

    .line 307
    :catch_4b
    move-exception v0

    .line 308
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_7
.end method

.method static held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    .line 80
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 88
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 79
    goto :goto_b

    .line 83
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v4, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 87
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 88
    goto :goto_e

    .line 84
    :cond_29
    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    goto :goto_e
.end method

.method static legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V
    .registers 8

    .prologue
    .line 264
    if-eqz p1, :cond_12

    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 265
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 280
    :cond_12
    return-void

    .line 268
    :cond_13
    const/4 v0, 0x0

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 269
    aget-object v3, p1, v0

    .line 270
    if-eqz v3, :cond_25

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowTag(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 271
    :goto_20
    if-nez v2, :cond_28

    .line 268
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 270
    :cond_25
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_20

    .line 274
    :cond_28
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    if-nez v1, :cond_64

    const-string v1, ""

    .line 276
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

    .line 277
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

    .line 275
    :cond_64
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method static legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V
    .registers 14

    .prologue
    .line 231
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 261
    :cond_6
    return-void

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 235
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v3

    .line 239
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 240
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v5

    .line 241
    array-length v6, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    if-ge v1, v6, :cond_6

    aget v0, v3, v1

    .line 242
    array-length v7, p2

    if-ge v0, v7, :cond_2e

    array-length v7, v4

    if-ge v0, v7, :cond_2e

    aget-object v7, p2, v0

    if-nez v7, :cond_32

    .line 241
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 245
    :cond_32
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->legValue(Ljava/lang/String;[II)I

    move-result v7

    .line 246
    if-ltz v7, :cond_2e

    aget v8, v4, v0

    if-eq v7, v8, :cond_2e

    .line 249
    aget-object v8, p2, v0

    .line 250
    invoke-static {v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 251
    if-eqz v9, :cond_48

    iget-boolean v9, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v9, :cond_2e

    :cond_48
    invoke-static {p0, p1, v8, v0, v5}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 254
    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v0, v7, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v7

    .line 255
    invoke-virtual {v8, v7}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 256
    if-eqz p3, :cond_70

    array-length v8, p3

    if-ge v0, v8, :cond_70

    aget-object v0, p3, v0

    .line 257
    :goto_5e
    if-eqz v0, :cond_2e

    .line 258
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

    .line 256
    :cond_70
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public static live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p0, :cond_24

    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_24

    if-eqz p1, :cond_24

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v1, :cond_24

    .line 71
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_20} :catch_25

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 73
    :cond_24
    :goto_24
    return v0

    .line 72
    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method static look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V
    .registers 5

    .prologue
    .line 390
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 391
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 404
    :goto_10
    return-void

    .line 394
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    const-string v1, "light_green_color"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 396
    const-string v2, "dark_green_color"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 397
    if-eqz p1, :cond_2b

    .line 398
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v1

    .line 399
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v0

    .line 401
    :cond_2b
    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 402
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 403
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method static lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    .registers 6

    .prologue
    .line 407
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 408
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 415
    :goto_10
    return-void

    .line 411
    :cond_11
    if-eqz p1, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 412
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 413
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 414
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 411
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    goto :goto_15
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 150
    if-eqz p2, :cond_6

    .line 151
    :try_start_3
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->columns(Lcom/isaigu/gymapp/train/model/TrainItem;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;)V

    .line 153
    :cond_6
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_17

    .line 199
    :cond_16
    :goto_16
    return-void

    .line 156
    :cond_17
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v6

    .line 157
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 158
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_3b

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v1

    move-object v4, v1

    .line 159
    :goto_28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    move v3, v0

    .line 160
    :goto_2d
    array-length v0, p2

    if-ge v3, v0, :cond_98

    array-length v0, v5

    if-ge v3, v0, :cond_98

    .line 161
    aget-object v7, p2, v3

    .line 162
    if-nez v7, :cond_3d

    .line 160
    :goto_37
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2d

    :cond_3b
    move-object v4, v5

    .line 158
    goto :goto_28

    .line 165
    :cond_3d
    invoke-static {p0, p1, v7, v3, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v8

    .line 166
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 167
    if-eqz p3, :cond_87

    array-length v0, p3

    if-ge v3, v0, :cond_87

    aget-object v0, p3, v3

    move-object v2, v0

    .line 168
    :goto_4d
    const/high16 v0, -0x40800000    # -1.0f

    .line 169
    if-eqz v9, :cond_8a

    iget-boolean v10, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v10, :cond_8a

    .line 170
    iget v0, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 174
    :cond_57
    :goto_57
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_72

    .line 175
    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 176
    if-eqz v2, :cond_72

    .line 177
    const/high16 v9, 0x42c80000    # 100.0f

    div-float v9, v0, v9

    if-eqz v8, :cond_95

    move v0, v1

    :goto_68
    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->percent(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_72
    if-eqz v2, :cond_81

    if-eqz v8, :cond_81

    .line 181
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->textColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    :cond_81
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    goto :goto_37

    .line 197
    :catch_85
    move-exception v0

    goto :goto_16

    .line 167
    :cond_87
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_4d

    .line 171
    :cond_8a
    if-eqz v8, :cond_57

    .line 172
    aget v0, v4, v3

    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v3, v0, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v0

    goto :goto_57

    .line 177
    :cond_95
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_68

    .line 185
    :cond_98
    if-eqz p4, :cond_a1

    .line 186
    invoke-static {p0, p1, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V

    .line 188
    :cond_a1
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V

    .line 189
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V

    .line 190
    array-length v0, p2

    if-lez v0, :cond_16

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 191
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/isaigu/gymapp/train/utils/PartLook;->holds:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_cb

    sget-object v1, Lcom/isaigu/gymapp/train/utils/PartLook;->holds:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_16

    .line 193
    :cond_cb
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/isaigu/gymapp/train/utils/PartLook;->holds:Ljava/lang/ref/WeakReference;

    .line 194
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->installHolds(Landroid/view/View;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d5} :catch_85

    goto/16 :goto_16
.end method

.method static percent(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 428
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
    .line 314
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_12

    .line 316
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 319
    :cond_12
    return-void
.end method

.method public static ringEnd(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 355
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_17

    .line 357
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 360
    :cond_17
    if-eqz v1, :cond_31

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_31

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-lez v2, :cond_31

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-gtz v2, :cond_32

    .line 374
    :cond_31
    :goto_31
    return v0

    .line 364
    :cond_32
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 365
    int-to-double v2, v2

    iget v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 366
    const/4 v3, 0x0

    const/16 v4, 0x64

    iget v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    add-int/lit8 v5, v5, 0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 368
    int-to-long v4, v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-long v6, v3

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 369
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 370
    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 371
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_82} :catch_84

    .line 372
    const/4 v0, 0x1

    goto :goto_31

    .line 373
    :catch_84
    move-exception v1

    goto :goto_31
.end method

.method static ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 3

    .prologue
    .line 137
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

    .line 138
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 137
    :goto_1f
    return v0

    .line 138
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static ringMove(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 328
    if-nez v3, :cond_9

    .line 342
    :goto_8
    return v1

    .line 331
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 332
    if-eqz v2, :cond_13

    iget-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v4, :cond_27

    .line 333
    :cond_13
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v4

    .line 334
    new-instance v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 335
    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 336
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 340
    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_3c

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_3e

    move-result v2

    if-eqz v2, :cond_3c

    :goto_3a
    move v1, v0

    goto :goto_8

    :cond_3c
    move v0, v1

    goto :goto_3a

    .line 341
    :catch_3e
    move-exception v0

    goto :goto_8
.end method

.method static ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-eqz p1, :cond_e

    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 132
    :cond_f
    :goto_f
    return v0

    .line 117
    :cond_10
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_19

    .line 119
    iget-boolean v0, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    goto :goto_f

    .line 121
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 124
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_31
    move v0, v1

    .line 125
    goto :goto_f

    .line 127
    :cond_33
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 128
    if-eqz v2, :cond_53

    .line 129
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 130
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->without([Z[Z)[Z

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_51
    move v0, v1

    goto :goto_f

    :cond_53
    move v0, p2

    .line 132
    goto :goto_f
.end method

.method static ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 380
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 381
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p2, v0, 0x64

    .line 383
    :cond_18
    return p2
.end method

.method static textColor(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 432
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

    .line 419
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 420
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 421
    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v0, v1

    .line 422
    aget v1, v0, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 423
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method
