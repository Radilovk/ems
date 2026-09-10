.class public final Lcom/isaigu/gymapp/ble/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final Hogp:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    nop

    .line 23
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 24
    nop

    .line 25
    const-string v0, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 26
    nop

    .line 27
    const-string v0, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 28
    nop

    .line 29
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 30
    nop

    .line 31
    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 32
    nop

    .line 33
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 34
    nop

    .line 35
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 36
    nop

    .line 37
    const-string v0, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 38
    nop

    .line 39
    const-string v0, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 40
    nop

    .line 41
    const-string v0, "00001105-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 42
    nop

    .line 43
    const-string v0, "00001124-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 44
    nop

    .line 45
    const-string v0, "00001812-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 46
    nop

    .line 47
    const-string v0, "00001115-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 48
    nop

    .line 49
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 50
    nop

    .line 51
    const-string v0, "0000000f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 52
    nop

    .line 53
    const-string v0, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 54
    nop

    .line 55
    const-string v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 56
    nop

    .line 57
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 58
    nop

    .line 59
    const-string v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 60
    nop

    .line 61
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .line 159
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 161
    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 163
    :cond_2
    if-nez p1, :cond_3

    return v0

    .line 164
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    .local v2, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 166
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v1

    .line 165
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    :cond_5
    return v0
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .line 137
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 139
    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :cond_2
    if-nez p1, :cond_4

    .line 142
    array-length v2, p0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 144
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v2, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, p1, v4

    .line 146
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v0

    .line 145
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    :cond_6
    return v1
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 5
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 178
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 179
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide v3, 0xffff00000000L

    and-long/2addr v1, v3

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    .line 180
    .local v1, "value":J
    long-to-int v3, v1

    return v3
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 230
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 231
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    .line 232
    return v5

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide v3, -0xffff00000001L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x1000

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 243
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 244
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    .line 245
    return v5

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ble/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    return v5

    .line 250
    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v3, 0x1000

    cmp-long v6, v1, v3

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 72
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 102
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 84
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 111
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 108
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 96
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "uuidArray"    # [Landroid/os/ParcelUuid;
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .line 120
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 121
    return v0

    .line 122
    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 123
    return v1

    .line 124
    :cond_2
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 125
    .local v4, "element":Landroid/os/ParcelUuid;
    invoke-virtual {v4, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v0

    .line 124
    .end local v4    # "element":Landroid/os/ParcelUuid;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_4
    return v1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 9
    .param p0, "uuidBytes"    # [B

    .line 192
    if-eqz p0, :cond_4

    .line 195
    array-length v0, p0

    .line 196
    .local v0, "length":I
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuidBytes length invalid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    .line 202
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 203
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 204
    .local v4, "msb":J
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 205
    .local v2, "lsb":J
    new-instance v6, Landroid/os/ParcelUuid;

    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v6

    .line 210
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_2
    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    .line 211
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    .line 212
    .local v1, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 214
    .end local v1    # "shortUuid":J
    :cond_3
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    .line 215
    .local v6, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 216
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x10

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 217
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    add-long/2addr v1, v6

    .line 219
    .end local v6    # "shortUuid":J
    .restart local v1    # "shortUuid":J
    :goto_1
    sget-object v3, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    .line 220
    .local v3, "msb":J
    sget-object v5, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 221
    .local v5, "lsb":J
    new-instance v7, Landroid/os/ParcelUuid;

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v7

    .line 193
    .end local v0    # "length":I
    .end local v1    # "shortUuid":J
    .end local v3    # "msb":J
    .end local v5    # "lsb":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
