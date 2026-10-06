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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    return-void

    .line 41
    :array_1e
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data

    .line 42
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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_a

    .line 91
    iget-boolean p4, v1, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 105
    :cond_9
    :goto_9
    return p4

    .line 93
    :cond_a
    if-eqz p1, :cond_10

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v1, :cond_12

    :cond_10
    move p4, v0

    .line 94
    goto :goto_9

    .line 96
    :cond_12
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v1, v1

    if-ge p3, v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_26

    .line 97
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result p4

    goto :goto_9

    .line 99
    :cond_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 100
    :cond_32
    const/4 p4, 0x1

    goto :goto_9

    .line 102
    :cond_34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_40
    move p4, v0

    .line 103
    goto :goto_9
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 336
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

.method public static drag(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;IF)I
    .registers 8

    .prologue
    .line 190
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 191
    if-nez v1, :cond_8

    .line 192
    const/4 v0, 0x0

    .line 211
    :goto_7
    return v0

    .line 195
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v2, :cond_26

    .line 197
    :cond_12
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v2

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 199
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 200
    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 203
    iput p3, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 205
    instance-of v2, p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    if-eqz v2, :cond_3c

    .line 206
    check-cast p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    .line 208
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 209
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

    .line 210
    :catch_4b
    move-exception v0

    .line 211
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_7
.end method

.method static held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 75
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    .line 76
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 84
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 75
    goto :goto_b

    .line 79
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v4, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 83
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 84
    goto :goto_e

    .line 80
    :cond_29
    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    goto :goto_e
.end method

.method public static live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
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

    .line 67
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_20} :catch_25

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 69
    :cond_24
    :goto_24
    return v0

    .line 68
    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method static look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V
    .registers 5

    .prologue
    .line 289
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 290
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 303
    :goto_10
    return-void

    .line 293
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    const-string v1, "light_green_color"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 295
    const-string v2, "dark_green_color"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 296
    if-eqz p1, :cond_2b

    .line 297
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v1

    .line 298
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v0

    .line 300
    :cond_2b
    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method static lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    .registers 6

    .prologue
    .line 306
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 307
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 314
    :goto_10
    return-void

    .line 310
    :cond_11
    if-eqz p1, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 311
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 312
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 310
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    goto :goto_15
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V
    .registers 16

    .prologue
    .line 146
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    :try_start_6
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v0, :cond_11

    .line 183
    :cond_10
    :goto_10
    return-void

    .line 149
    :cond_11
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v6

    .line 150
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 151
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_36

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    move-object v4, v0

    .line 152
    :goto_22
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    .line 153
    const/4 v0, 0x0

    move v3, v0

    :goto_28
    array-length v0, p2

    if-ge v3, v0, :cond_93

    array-length v0, v5

    if-ge v3, v0, :cond_93

    .line 154
    aget-object v7, p2, v3

    .line 155
    if-nez v7, :cond_38

    .line 153
    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_28

    :cond_36
    move-object v4, v5

    .line 151
    goto :goto_22

    .line 158
    :cond_38
    invoke-static {p0, p1, v7, v3, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v8

    .line 159
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 160
    if-eqz p3, :cond_82

    array-length v0, p3

    if-ge v3, v0, :cond_82

    aget-object v0, p3, v3

    move-object v2, v0

    .line 161
    :goto_48
    const/high16 v0, -0x40800000    # -1.0f

    .line 162
    if-eqz v9, :cond_85

    iget-boolean v10, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v10, :cond_85

    .line 163
    iget v0, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 167
    :cond_52
    :goto_52
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_6d

    .line 168
    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 169
    if-eqz v2, :cond_6d

    .line 170
    const/high16 v9, 0x42c80000    # 100.0f

    div-float v9, v0, v9

    if-eqz v8, :cond_90

    move v0, v1

    :goto_63
    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->percent(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_6d
    if-eqz v2, :cond_7c

    if-eqz v8, :cond_7c

    .line 174
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->textColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    :cond_7c
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    goto :goto_32

    .line 181
    :catch_80
    move-exception v0

    goto :goto_10

    .line 160
    :cond_82
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_48

    .line 164
    :cond_85
    if-eqz v8, :cond_52

    .line 165
    aget v0, v4, v3

    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v3, v0, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v0

    goto :goto_52

    .line 170
    :cond_90
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_63

    .line 178
    :cond_93
    if-eqz p4, :cond_10

    .line 179
    invoke-static {p0, p1, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9c} :catch_80

    goto/16 :goto_10
.end method

.method static percent(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
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

.method static release(Landroid/view/View;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 218
    if-nez v2, :cond_15

    .line 219
    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_13

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 223
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 219
    goto :goto_12

    .line 221
    :cond_15
    iput-boolean v1, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 223
    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v2, :cond_12

    :cond_28
    move v0, v1

    goto :goto_12
.end method

.method public static ringEnd(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 258
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 259
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_17

    .line 261
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 264
    :cond_17
    if-eqz v1, :cond_29

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_29

    if-eqz v2, :cond_29

    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_29

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 273
    :cond_29
    :goto_29
    return v0

    .line 267
    :cond_2a
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v2

    .line 268
    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    add-int/lit8 v2, v2, 0x14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 270
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_46} :catch_48

    .line 271
    const/4 v0, 0x1

    goto :goto_29

    .line 272
    :catch_48
    move-exception v1

    goto :goto_29
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

    .line 232
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 233
    if-nez v3, :cond_9

    .line 247
    :goto_8
    return v1

    .line 236
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_13

    iget-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v4, :cond_27

    .line 238
    :cond_13
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v4

    .line 239
    new-instance v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 240
    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 241
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 245
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

    .line 246
    :catch_3e
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

    .line 128
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
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 120
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_31
    move v0, v1

    .line 121
    goto :goto_f

    .line 123
    :cond_33
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 124
    if-eqz v2, :cond_53

    .line 125
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 126
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

    .line 128
    goto :goto_f
.end method

.method static ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 279
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 280
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p2, v0, 0x64

    .line 282
    :cond_18
    return p2
.end method

.method static textColor(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 331
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

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 319
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 320
    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v0, v1

    .line 321
    aget v1, v0, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 322
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method
