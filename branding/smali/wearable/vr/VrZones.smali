.class final Lcom/isaigu/gymapp/wearable/vr/VrZones;
.super Ljava/lang/Object;
.source "VrZones.java"


# static fields
.field private static focus:I

.field private static item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static managed:[Z

.field private static switchedOff:[Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->release()V

    .line 25
    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v4, v0

    .line 26
    :goto_a
    if-nez v4, :cond_17

    .line 27
    const-string v0, "vr"

    const-string v1, "zones: row has no channel switches"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_13
    return-void

    .line 25
    :cond_14
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_a

    .line 30
    :cond_17
    array-length v0, v4

    new-array v5, v0, [Z

    move v0, v1

    .line 31
    :goto_1b
    array-length v2, v4

    if-ge v0, v2, :cond_33

    const/16 v2, 0xa

    if-ge v0, v2, :cond_33

    .line 32
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z

    move-result v2

    if-eqz v2, :cond_30

    aget-boolean v2, v4, v0

    if-nez v2, :cond_30

    .line 33
    aput-boolean v3, v4, v0

    .line 34
    aput-boolean v3, v5, v0

    .line 31
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 37
    :cond_33
    array-length v0, v4

    new-array v6, v0, [Z

    move v0, v1

    .line 38
    :goto_37
    array-length v2, v4

    if-ge v0, v2, :cond_4a

    .line 39
    aget-boolean v2, v4, v0

    if-eqz v2, :cond_42

    aget-boolean v2, v5, v0

    if-eqz v2, :cond_48

    :cond_42
    move v2, v3

    :goto_43
    aput-boolean v2, v6, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_48
    move v2, v1

    .line 39
    goto :goto_43

    .line 41
    :cond_4a
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 42
    sput-object v5, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 43
    sput-object v6, Lcom/isaigu/gymapp/wearable/vr/VrZones;->managed:[Z

    .line 44
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZones;->focus:I

    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_13
.end method

.method static reapply()V
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 72
    if-eqz v0, :cond_7

    .line 73
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 75
    :cond_7
    return-void
.end method

.method static release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 79
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->managed:[Z

    .line 80
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 81
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 82
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->managed:[Z

    .line 83
    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZones;->focus:I

    .line 84
    if-eqz v0, :cond_16

    if-eqz v2, :cond_16

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-nez v3, :cond_17

    .line 94
    :cond_16
    :goto_16
    return-void

    .line 87
    :cond_17
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move v0, v1

    .line 88
    :goto_1a
    array-length v4, v2

    if-ge v0, v4, :cond_29

    array-length v4, v3

    if-ge v0, v4, :cond_29

    .line 89
    aget-boolean v4, v2, v0

    if-eqz v4, :cond_26

    .line 90
    aput-boolean v1, v3, v0

    .line 88
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 93
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_16
.end method

.method static setFocus(I)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 54
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrZones;->managed:[Z

    .line 55
    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v2, :cond_12

    sget v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->focus:I

    if-ne p0, v2, :cond_13

    .line 67
    :cond_12
    :goto_12
    return-void

    .line 58
    :cond_13
    sput p0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->focus:I

    .line 59
    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move v0, v1

    .line 60
    :goto_18
    array-length v2, v5

    if-ge v0, v2, :cond_3b

    array-length v2, v4

    if-ge v0, v2, :cond_3b

    const/16 v2, 0xa

    if-ge v0, v2, :cond_3b

    .line 61
    aget-boolean v2, v4, v0

    if-nez v2, :cond_29

    .line 60
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 64
    :cond_29
    if-eqz p0, :cond_36

    shl-int v2, v3, v0

    and-int/2addr v2, p0

    if-nez v2, :cond_34

    move v2, v3

    :goto_31
    aput-boolean v2, v5, v0

    goto :goto_26

    :cond_34
    move v2, v1

    goto :goto_31

    :cond_36
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z

    move-result v2

    goto :goto_31

    .line 66
    :cond_3b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_12
.end method
