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

    .prologue
    .line 22
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    .line 23
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 24
    const-string v0, "0000110A-0000-1000-8000-00805F9B34FB"

    .line 25
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 26
    const-string v0, "0000110D-0000-1000-8000-00805F9B34FB"

    .line 27
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 28
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    .line 29
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 30
    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    .line 31
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 32
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 33
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 34
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 35
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 36
    const-string v0, "0000110E-0000-1000-8000-00805F9B34FB"

    .line 37
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 38
    const-string v0, "0000110C-0000-1000-8000-00805F9B34FB"

    .line 39
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 40
    const-string v0, "00001105-0000-1000-8000-00805f9b34fb"

    .line 41
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 42
    const-string v0, "00001124-0000-1000-8000-00805f9b34fb"

    .line 43
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 44
    const-string v0, "00001812-0000-1000-8000-00805f9b34fb"

    .line 45
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 46
    const-string v0, "00001115-0000-1000-8000-00805F9B34FB"

    .line 47
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 48
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    .line 49
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 50
    const-string v0, "0000000f-0000-1000-8000-00805F9B34FB"

    .line 51
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 52
    const-string v0, "0000112f-0000-1000-8000-00805F9B34FB"

    .line 53
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 54
    const-string v0, "00001134-0000-1000-8000-00805F9B34FB"

    .line 55
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 56
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    .line 57
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 58
    const-string v0, "00001132-0000-1000-8000-00805F9B34FB"

    .line 59
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 60
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 61
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    if-nez p0, :cond_2

    .line 161
    array-length v4, p1

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 163
    :cond_2
    if-eqz p1, :cond_0

    .line 164
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    .local v1, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 166
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v3

    goto :goto_0

    .line 165
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    if-nez p0, :cond_2

    .line 139
    array-length v4, p1

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 141
    :cond_2
    if-nez p1, :cond_3

    .line 142
    array-length v4, p0

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 144
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v1, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v0, p1, v4

    .line 146
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    :cond_4
    move v2, v3

    .line 148
    goto :goto_0
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 8
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 179
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    .line 180
    .local v2, "value":J
    long-to-int v1, v2

    return v1
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 231
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    sget-object v4, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, -0xffff00000001L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 244
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    sget-object v4, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/ble/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 78
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 75
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 72
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 102
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 81
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 84
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 93
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 105
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 111
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 108
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 99
    sget-object v0, Lcom/isaigu/gymapp/ble/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
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

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_2

    :cond_0
    if-nez p1, :cond_2

    move v1, v2

    .line 127
    :cond_1
    :goto_0
    return v1

    .line 122
    :cond_2
    if-eqz p0, :cond_1

    .line 124
    array-length v4, p0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    .line 125
    .local v0, "element":Landroid/os/ParcelUuid;
    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    goto :goto_0

    .line 124
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 13
    .param p0, "uuidBytes"    # [B

    .prologue
    const/16 v12, 0x10

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "uuidBytes cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 195
    :cond_0
    array-length v1, p0

    .line 196
    .local v1, "length":I
    if-eq v1, v11, :cond_1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_1

    if-eq v1, v12, :cond_1

    .line 198
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uuidBytes length invalid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 201
    :cond_1
    if-ne v1, v12, :cond_2

    .line 202
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 204
    .local v4, "msb":J
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 205
    .local v2, "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 221
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v8

    .line 210
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_2
    if-ne v1, v11, :cond_3

    .line 211
    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    .line 212
    .local v6, "shortUuid":J
    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 219
    :goto_1
    sget-object v8, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    const/16 v10, 0x20

    shl-long v10, v6, v10

    add-long v4, v8, v10

    .line 220
    .restart local v4    # "msb":J
    sget-object v8, Lcom/isaigu/gymapp/ble/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 221
    .restart local v2    # "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 214
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v6    # "shortUuid":J
    :cond_3
    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    int-to-long v6, v8

    .line 215
    .restart local v6    # "shortUuid":J
    aget-byte v8, p0, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 216
    aget-byte v8, p0, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 217
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_1
.end method
