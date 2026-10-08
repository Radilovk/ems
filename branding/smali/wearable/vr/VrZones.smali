.class final Lcom/isaigu/gymapp/wearable/vr/VrZones;
.super Ljava/lang/Object;
.source "VrZones.java"


# static fields
.field static final OFF:[I

.field private static item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static switchedOff:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->OFF:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x5
        0x6
        0x7
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZones;->release()V

    .line 29
    if-eqz p0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object v1, v0

    .line 30
    :goto_9
    if-nez v1, :cond_16

    .line 31
    const-string v0, "vr"

    const-string v1, "zones: row has no channel switches"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_12
    return-void

    .line 29
    :cond_13
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_9

    .line 34
    :cond_16
    array-length v0, v1

    new-array v2, v0, [Z

    .line 35
    sget-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->OFF:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v4, :cond_2f

    aget v5, v3, v0

    .line 36
    array-length v6, v1

    if-ge v5, v6, :cond_2c

    aget-boolean v6, v1, v5

    if-nez v6, :cond_2c

    .line 37
    aput-boolean v7, v1, v5

    .line 38
    aput-boolean v7, v2, v5

    .line 35
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 41
    :cond_2f
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 42
    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 43
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_12
.end method

.method static release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 48
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 49
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 50
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrZones;->switchedOff:[Z

    .line 51
    if-eqz v0, :cond_12

    if-eqz v2, :cond_12

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-nez v3, :cond_13

    .line 61
    :cond_12
    :goto_12
    return-void

    .line 54
    :cond_13
    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move v0, v1

    .line 55
    :goto_16
    array-length v4, v2

    if-ge v0, v4, :cond_25

    array-length v4, v3

    if-ge v0, v4, :cond_25

    .line 56
    aget-boolean v4, v2, v0

    if-eqz v4, :cond_22

    .line 57
    aput-boolean v1, v3, v0

    .line 55
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 60
    :cond_25
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->refresh()V

    goto :goto_12
.end method
