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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_a

    .line 92
    iget-boolean p4, v1, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 106
    :cond_9
    :goto_9
    return p4

    .line 94
    :cond_a
    if-eqz p1, :cond_10

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v1, :cond_12

    :cond_10
    move p4, v0

    .line 95
    goto :goto_9

    .line 97
    :cond_12
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v1, v1

    if-ge p3, v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_26

    .line 98
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result p4

    goto :goto_9

    .line 100
    :cond_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 101
    :cond_32
    const/4 p4, 0x1

    goto :goto_9

    .line 103
    :cond_34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_40
    move p4, v0

    .line 104
    goto :goto_9
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 341
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
    .line 191
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 192
    if-nez v1, :cond_8

    .line 193
    const/4 v0, 0x0

    .line 212
    :goto_7
    return v0

    .line 196
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v2, :cond_26

    .line 198
    :cond_12
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v2

    .line 199
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 200
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 201
    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 204
    iput p3, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 206
    instance-of v2, p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    if-eqz v2, :cond_3c

    .line 207
    check-cast p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    .line 209
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 210
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

    .line 211
    :catch_4b
    move-exception v0

    .line 212
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_7
.end method

.method static held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 76
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    .line 77
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 85
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 76
    goto :goto_b

    .line 80
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v4, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 84
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 85
    goto :goto_e

    .line 81
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

    .line 66
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

    .line 68
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_20} :catch_25

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 70
    :cond_24
    :goto_24
    return v0

    .line 69
    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method static look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V
    .registers 5

    .prologue
    .line 294
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 295
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 308
    :goto_10
    return-void

    .line 298
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    const-string v1, "light_green_color"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 300
    const-string v2, "dark_green_color"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 301
    if-eqz p1, :cond_2b

    .line 302
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v1

    .line 303
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v0

    .line 305
    :cond_2b
    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 306
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 307
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method static lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    .registers 6

    .prologue
    .line 311
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 312
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 319
    :goto_10
    return-void

    .line 315
    :cond_11
    if-eqz p1, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 316
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 317
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 318
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 315
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    goto :goto_15
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V
    .registers 16

    .prologue
    .line 147
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    :try_start_6
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v0, :cond_11

    .line 184
    :cond_10
    :goto_10
    return-void

    .line 150
    :cond_11
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v6

    .line 151
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 152
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_36

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    move-object v4, v0

    .line 153
    :goto_22
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    .line 154
    const/4 v0, 0x0

    move v3, v0

    :goto_28
    array-length v0, p2

    if-ge v3, v0, :cond_93

    array-length v0, v5

    if-ge v3, v0, :cond_93

    .line 155
    aget-object v7, p2, v3

    .line 156
    if-nez v7, :cond_38

    .line 154
    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_28

    :cond_36
    move-object v4, v5

    .line 152
    goto :goto_22

    .line 159
    :cond_38
    invoke-static {p0, p1, v7, v3, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v8

    .line 160
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 161
    if-eqz p3, :cond_82

    array-length v0, p3

    if-ge v3, v0, :cond_82

    aget-object v0, p3, v3

    move-object v2, v0

    .line 162
    :goto_48
    const/high16 v0, -0x40800000    # -1.0f

    .line 163
    if-eqz v9, :cond_85

    iget-boolean v10, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v10, :cond_85

    .line 164
    iget v0, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 168
    :cond_52
    :goto_52
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_6d

    .line 169
    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 170
    if-eqz v2, :cond_6d

    .line 171
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

    .line 174
    :cond_6d
    if-eqz v2, :cond_7c

    if-eqz v8, :cond_7c

    .line 175
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->textColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    :cond_7c
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    goto :goto_32

    .line 182
    :catch_80
    move-exception v0

    goto :goto_10

    .line 161
    :cond_82
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_48

    .line 165
    :cond_85
    if-eqz v8, :cond_52

    .line 166
    aget v0, v4, v3

    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v3, v0, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v0

    goto :goto_52

    .line 171
    :cond_90
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_63

    .line 179
    :cond_93
    if-eqz p4, :cond_10

    .line 180
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
    .line 332
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
    .line 218
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_12

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 223
    :cond_12
    return-void
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

    .line 278
    :cond_31
    :goto_31
    return v0

    .line 268
    :cond_32
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondCap(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
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

    .line 270
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

    .line 272
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

    .line 273
    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 274
    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_82} :catch_84

    .line 276
    const/4 v0, 0x1

    goto :goto_31

    .line 277
    :catch_84
    move-exception v1

    goto :goto_31
.end method

.method static ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 3

    .prologue
    .line 134
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

    .line 135
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 134
    :goto_1f
    return v0

    .line 135
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static ringMove(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 232
    if-nez v3, :cond_9

    .line 246
    :goto_8
    return v1

    .line 235
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_13

    iget-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v4, :cond_27

    .line 237
    :cond_13
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v4

    .line 238
    new-instance v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 239
    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 240
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 244
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

    .line 245
    :catch_3e
    move-exception v0

    goto :goto_8
.end method

.method static ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-eqz p1, :cond_e

    iget-boolean v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 129
    :cond_f
    :goto_f
    return v0

    .line 114
    :cond_10
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_19

    .line 116
    iget-boolean v0, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    goto :goto_f

    .line 118
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 121
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_31
    move v0, v1

    .line 122
    goto :goto_f

    .line 124
    :cond_33
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v2

    .line 125
    if-eqz v2, :cond_53

    .line 126
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->yellow(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[Z

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->any([Z)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 127
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

    .line 129
    goto :goto_f
.end method

.method static ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 285
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p2, v0, 0x64

    .line 287
    :cond_18
    return p2
.end method

.method static textColor(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 336
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

    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 324
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 325
    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v0, v1

    .line 326
    aget v1, v0, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 327
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method
