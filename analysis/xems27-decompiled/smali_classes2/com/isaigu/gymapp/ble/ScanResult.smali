.class public final Lcom/isaigu/gymapp/ble/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/isaigu/gymapp/ble/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

.field private mTimestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lcom/isaigu/gymapp/ble/ScanResult$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ble/ScanResult$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ble/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/isaigu/gymapp/ble/ScanRecord;IJ)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Lcom/isaigu/gymapp/ble/ScanRecord;
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 34
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

    .line 35
    iput p3, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mRssi:I

    .line 36
    iput-wide p4, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mTimestampNanos:J

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/isaigu/gymapp/ble/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/isaigu/gymapp/ble/ScanResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ble/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->parseFromBytes([B)Lcom/isaigu/gymapp/ble/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mRssi:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mTimestampNanos:J

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Lcom/isaigu/gymapp/ble/ScanRecord;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mScanRecord:Lcom/isaigu/gymapp/ble/ScanRecord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    :goto_1
    iget v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-wide v0, p0, Lcom/isaigu/gymapp/ble/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    return-void
.end method
