.class final Lcom/isaigu/gymapp/wearable/vr/VrZones;
.super Ljava/lang/Object;
.source "VrZones.java"


# static fields
.field private static item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static switchedOff:[Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->release()V

    .line 22
    if-eqz p0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v1, v0

    .line 23
    :goto_9
    if-nez v1, :cond_16

    .line 24
    const-string v0, "vr"

    const-string v1, "zones: row has no channel switches"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_12
    return-void

    .line 22
    :cond_13
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_9

    .line 27
    :cond_16
    array-length v0, v1

    new-array v2, v0, [Z

    .line 28
    const/4 v0, 0x0

    :goto_1a
    array-length v3, v1

    if-ge v0, v3, :cond_32

    const/16 v3, 0xa

    if-ge v0, v3, :cond_32

    .line 29
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    aget-boolean v3, v1, v0

    if-nez v3, :cond_2f

    .line 30
    aput-boolean v4, v1, v0

    .line 31
    aput-boolean v4, v2, v0

    .line 28
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 34
    :cond_32
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_12
.end method

.method static reapply()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 42
    if-eqz v0, :cond_7

    .line 43
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 45
    :cond_7
    return-void
.end method

.method static release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 49
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 50
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 51
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 52
    if-eqz v0, :cond_12

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-nez v3, :cond_13

    .line 62
    :cond_12
    :goto_12
    return-void

    .line 55
    :cond_13
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move v0, v1

    .line 56
    :goto_16
    array-length v4, v2

    if-ge v0, v4, :cond_25

    array-length v4, v3

    if-ge v0, v4, :cond_25

    .line 57
    aget-boolean v4, v2, v0

    if-eqz v4, :cond_22

    .line 58
    aput-boolean v1, v3, v0

    .line 56
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 61
    :cond_25
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_12
.end method
