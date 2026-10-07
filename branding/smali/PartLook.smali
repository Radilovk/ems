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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    .line 197
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    .line 199
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    return-void

    .line 42
    nop

    :array_34
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data

    .line 43
    :array_3e
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
    .registers 6

    .prologue
    .line 88
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_9

    .line 90
    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 92
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
    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 497
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

    .line 179
    if-eqz p0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    move v1, v0

    .line 181
    :goto_13
    array-length v0, p1

    if-lez v0, :cond_1f

    aget-object v0, p1, v2

    if-eqz v0, :cond_1f

    .line 182
    aget-object v0, p1, v2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->header(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)V

    :cond_1f
    move v3, v2

    .line 184
    :goto_20
    array-length v0, p1

    if-ge v3, v0, :cond_54

    .line 185
    aget-object v0, p1, v3

    if-eqz v0, :cond_31

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_37

    .line 184
    :cond_31
    :goto_31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_20

    :cond_35
    move v1, v2

    .line 180
    goto :goto_13

    .line 188
    :cond_37
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 189
    if-eqz v1, :cond_52

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hidden(I)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x4

    .line 190
    :goto_48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_31

    .line 191
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_52
    move v4, v2

    .line 189
    goto :goto_48

    .line 194
    :cond_54
    return-void
.end method

.method public static drag(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;IF)I
    .registers 8

    .prologue
    .line 353
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 354
    if-nez v1, :cond_8

    .line 355
    const/4 v0, 0x0

    .line 374
    :goto_7
    return v0

    .line 358
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v2, :cond_26

    .line 360
    :cond_12
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v2

    .line 361
    new-instance v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 362
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 363
    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 366
    iput p3, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 368
    instance-of v2, p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    if-eqz v2, :cond_3c

    .line 369
    check-cast p1, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    .line 371
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->touch()V

    .line 372
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

    .line 373
    :catch_4b
    move-exception v0

    .line 374
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_7
.end method

.method static header(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;Z)V
    .registers 14

    .prologue
    .line 208
    if-eqz p0, :cond_30

    .line 209
    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    const/4 v0, 0x1

    .line 210
    :goto_17
    if-eqz v0, :cond_6d

    .line 211
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

    .line 216
    :cond_30
    :goto_30
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 219
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 220
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 223
    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 224
    const/4 v1, 0x1

    move v0, v2

    :goto_68
    move v2, v0

    move v3, v1

    .line 228
    goto :goto_3c

    .line 209
    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    .line 213
    :cond_6d
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->ROWS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 285
    :catch_73
    move-exception v0

    .line 287
    :cond_74
    return-void

    .line 226
    :cond_75
    const/4 v0, 0x1

    move v1, v3

    goto :goto_68

    .line 229
    :cond_78
    if-eqz v3, :cond_c2

    if-nez v2, :cond_c2

    const/4 v0, 0x1

    move v7, v0

    .line 230
    :goto_7e
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_74

    .line 234
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 235
    const/4 v2, 0x0

    .line 236
    const/4 v0, 0x0

    move v6, v0

    :goto_8f
    const/16 v0, 0xa

    if-ge v6, v0, :cond_74

    .line 237
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buwei"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v1, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 238
    if-eqz v0, :cond_c5

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    :goto_b8
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_c7

    move-object v0, v2

    .line 236
    :goto_bd
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v2, v0

    goto :goto_8f

    .line 229
    :cond_c2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_7e

    .line 238
    :cond_c5
    const/4 v0, 0x0

    goto :goto_b8

    .line 242
    :cond_c7
    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hidden(I)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 244
    if-eqz v7, :cond_dd

    const/4 v1, 0x4

    .line 245
    :goto_d2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_1c4

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object v0, v2

    goto :goto_bd

    .line 244
    :cond_dd
    const/4 v1, 0x0

    goto :goto_d2

    .line 250
    :cond_df
    const/4 v1, 0x2

    if-eq v6, v1, :cond_e8

    const/16 v1, 0x9

    if-eq v6, v1, :cond_e8

    move-object v0, v2

    .line 252
    goto :goto_bd

    .line 254
    :cond_e8
    const/4 v1, 0x2

    if-ne v6, v1, :cond_190

    const/4 v1, 0x1

    move v5, v1

    .line 255
    :goto_ed
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_194

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    .line 256
    :goto_f9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_198

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_198

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v3, v1

    .line 257
    :goto_111
    if-eqz v5, :cond_1c1

    move-object v1, v0

    .line 260
    :goto_114
    if-eqz v3, :cond_144

    .line 261
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 262
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_127
    if-eqz v7, :cond_19c

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->SLIDERS:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 265
    :goto_12d
    if-eqz v0, :cond_144

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_144

    .line 266
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_144
    if-nez v5, :cond_1be

    if-eqz v4, :cond_1be

    if-eqz v1, :cond_1be

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1be

    .line 270
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_162

    .line 271
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_162
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    if-eqz v7, :cond_1a5

    if-eqz v0, :cond_1a5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_1a5

    .line 275
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    if-eq v2, v3, :cond_1be

    .line 276
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_bd

    .line 254
    :cond_190
    const/4 v1, 0x0

    move v5, v1

    goto/16 :goto_ed

    .line 255
    :cond_194
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_f9

    .line 256
    :cond_198
    const/4 v1, 0x0

    move-object v3, v1

    goto/16 :goto_111

    .line 264
    :cond_19c
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_12d

    .line 279
    :cond_1a5
    if-nez v7, :cond_1be

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/train/utils/PartLook;->LEG_TAG:Ljava/lang/Object;

    if-ne v0, v2, :cond_1be

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->HEADER_ORIG:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1be
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1be} :catch_73

    :cond_1be
    move-object v0, v1

    goto/16 :goto_bd

    :cond_1c1
    move-object v1, v2

    goto/16 :goto_114

    :cond_1c4
    move-object v0, v2

    goto/16 :goto_bd
.end method

.method static held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    .line 75
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 83
    :cond_e
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 74
    goto :goto_b

    .line 78
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v4, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 82
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 83
    goto :goto_e

    .line 79
    :cond_29
    iget-wide v4, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    goto :goto_e
.end method

.method static legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V
    .registers 8

    .prologue
    .line 330
    if-eqz p1, :cond_12

    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 331
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 346
    :cond_12
    return-void

    .line 334
    :cond_13
    const/4 v0, 0x0

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 335
    aget-object v3, p1, v0

    .line 336
    if-eqz v3, :cond_25

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowTag(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 337
    :goto_20
    if-nez v2, :cond_28

    .line 334
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 336
    :cond_25
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_20

    .line 340
    :cond_28
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 341
    if-nez v1, :cond_64

    const-string v1, ""

    .line 342
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

    .line 343
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

    .line 341
    :cond_64
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method static legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V
    .registers 14

    .prologue
    .line 297
    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 327
    :cond_6
    return-void

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 301
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v3

    .line 305
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 306
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v5

    .line 307
    array-length v6, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    if-ge v1, v6, :cond_6

    aget v0, v3, v1

    .line 308
    array-length v7, p2

    if-ge v0, v7, :cond_2e

    array-length v7, v4

    if-ge v0, v7, :cond_2e

    aget-object v7, p2, v0

    if-nez v7, :cond_32

    .line 307
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 311
    :cond_32
    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->legValue(Ljava/lang/String;[II)I

    move-result v7

    .line 312
    if-ltz v7, :cond_2e

    aget v8, v4, v0

    if-eq v7, v8, :cond_2e

    .line 315
    aget-object v8, p2, v0

    .line 316
    invoke-static {v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 317
    if-eqz v9, :cond_48

    iget-boolean v9, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v9, :cond_2e

    :cond_48
    invoke-static {p0, p1, v8, v0, v5}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 320
    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v0, v7, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v7

    .line 321
    invoke-virtual {v8, v7}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 322
    if-eqz p3, :cond_70

    array-length v8, p3

    if-ge v0, v8, :cond_70

    aget-object v0, p3, v0

    .line 323
    :goto_5e
    if-eqz v0, :cond_2e

    .line 324
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

    .line 322
    :cond_70
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public static live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 66
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    :try_start_5
    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_11

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 68
    :cond_10
    :goto_10
    return v0

    .line 67
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method static look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V
    .registers 5

    .prologue
    .line 450
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 451
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 464
    :goto_10
    return-void

    .line 454
    :cond_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 455
    const-string v1, "light_green_color"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 456
    const-string v2, "dark_green_color"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 457
    if-eqz p1, :cond_2b

    .line 458
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v1

    .line 459
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->yellow(I)I

    move-result v0

    .line 461
    :cond_2b
    invoke-virtual {p0, v1, v1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 462
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 463
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method static lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V
    .registers 6

    .prologue
    .line 467
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 468
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_11

    .line 475
    :goto_10
    return-void

    .line 471
    :cond_11
    if-eqz p1, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_SECOND:[I

    .line 472
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setSectionColors(III)V

    .line 473
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->invalidate()V

    .line 474
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->PAINTED:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 471
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartLook;->RING_MAIN:[I

    goto :goto_15
.end method

.method public static paint(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V
    .registers 16

    .prologue
    .line 122
    if-eqz p2, :cond_5

    .line 123
    :try_start_2
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/PartLook;->columns(Lcom/isaigu/gymapp/train/model/TrainItem;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;)V

    .line 125
    :cond_5
    if-eqz p4, :cond_a

    .line 126
    invoke-static {p0, p4, p2, p3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->paint(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;[Landroid/view/View;[Landroid/view/View;)V

    .line 128
    :cond_a
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v0, :cond_1b

    .line 167
    :cond_1a
    :goto_1a
    return-void

    .line 131
    :cond_1b
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v6

    .line 132
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 133
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_40

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/SecondParts;->effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I

    move-result-object v0

    move-object v4, v0

    .line 134
    :goto_2c
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v1

    .line 135
    const/4 v0, 0x0

    move v3, v0

    :goto_32
    array-length v0, p2

    if-ge v3, v0, :cond_9d

    array-length v0, v5

    if-ge v3, v0, :cond_9d

    .line 136
    aget-object v7, p2, v3

    .line 137
    if-nez v7, :cond_42

    .line 135
    :goto_3c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_32

    :cond_40
    move-object v4, v5

    .line 133
    goto :goto_2c

    .line 140
    :cond_42
    invoke-static {p0, p1, v7, v3, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->barSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Ljava/lang/Object;IZ)Z

    move-result v8

    .line 141
    invoke-static {v7}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v9

    .line 142
    if-eqz p3, :cond_8c

    array-length v0, p3

    if-ge v3, v0, :cond_8c

    aget-object v0, p3, v3

    move-object v2, v0

    .line 143
    :goto_52
    const/high16 v0, -0x40800000    # -1.0f

    .line 144
    if-eqz v9, :cond_8f

    iget-boolean v10, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-eqz v10, :cond_8f

    .line 145
    iget v0, v9, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->p:F

    .line 149
    :cond_5c
    :goto_5c
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_77

    .line 150
    invoke-virtual {v7, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 151
    if-eqz v2, :cond_77

    .line 152
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

    .line 155
    :cond_77
    if-eqz v2, :cond_86

    if-eqz v8, :cond_86

    .line 156
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->textColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :cond_86
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/PartLook;->look(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Z)V

    goto :goto_3c

    .line 165
    :catch_8a
    move-exception v0

    goto :goto_1a

    .line 142
    :cond_8c
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_52

    .line 146
    :cond_8f
    if-eqz v8, :cond_5c

    .line 147
    aget v0, v4, v3

    iget v9, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v3, v0, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v0

    goto :goto_5c

    .line 152
    :cond_9a
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_6d

    .line 160
    :cond_9d
    if-eqz p4, :cond_a6

    .line 161
    invoke-static {p0, p1, v6}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    invoke-static {p4, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->lookRing(Lcom/isaigu/gymapp/widget/CircleSeekBar;Z)V

    .line 163
    :cond_a6
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;)V

    .line 164
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/train/utils/PartLook;->legTags(Lcom/isaigu/gymapp/train/model/TrainItem;[Landroid/widget/TextView;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_ac} :catch_8a

    goto/16 :goto_1a
.end method

.method static percent(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 488
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
    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_12

    .line 382
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 385
    :cond_12
    return-void
.end method

.method public static ringEnd(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 420
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 421
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 422
    if-eqz v2, :cond_17

    .line 423
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->until:J

    .line 426
    :cond_17
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 427
    if-eqz v1, :cond_2c

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    iget-boolean v2, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    if-eqz v2, :cond_2c

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 434
    :cond_2c
    :goto_2c
    return v0

    .line 430
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

    .line 431
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->saveProgram(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_44} :catch_46

    .line 432
    const/4 v0, 0x1

    goto :goto_2c

    .line 433
    :catch_46
    move-exception v1

    goto :goto_2c
.end method

.method static ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 3

    .prologue
    .line 109
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

    .line 110
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 109
    :goto_1f
    return v0

    .line 110
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static ringMove(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 393
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 394
    if-nez v3, :cond_9

    .line 409
    :goto_8
    return v1

    .line 397
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_13

    iget-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    if-nez v4, :cond_27

    .line 399
    :cond_13
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v2

    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v4

    .line 400
    new-instance v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;-><init>()V

    .line 401
    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    .line 402
    sget-object v4, Lcom/isaigu/gymapp/train/utils/PartLook;->LOCKS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->dragging:Z

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->last:J

    .line 406
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 407
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

    .line 408
    :catch_41
    move-exception v0

    goto :goto_8
.end method

.method static ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_d

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    :cond_d
    :goto_d
    return v0

    .line 100
    :cond_e
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartLook;->held(Ljava/lang/Object;)Lcom/isaigu/gymapp/train/utils/PartLook$Lock;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_17

    .line 102
    iget-boolean v0, v1, Lcom/isaigu/gymapp/train/utils/PartLook$Lock;->second:Z

    goto :goto_d

    .line 104
    :cond_17
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method static ringValue(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 4

    .prologue
    .line 440
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringFree(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartLook;->live(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartLook;->ringSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 441
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondStrength(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p2, v0, 0x64

    .line 443
    :cond_18
    return p2
.end method

.method static textColor(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 492
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

    .line 479
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 480
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 481
    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v0, v1

    .line 482
    aget v1, v0, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 483
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method
