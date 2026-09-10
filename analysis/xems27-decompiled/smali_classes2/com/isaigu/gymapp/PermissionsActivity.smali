.class public Lcom/isaigu/gymapp/PermissionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_CODE_OPEN_GPS:I = 0x1

.field private static final REQUEST_CODE_PERMISSION_LOCATION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkGPSIsOpen()Z
    .locals 2

    .line 85
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/PermissionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 86
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    return v1

    .line 88
    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onPermissionGranted(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x70918bc1

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/isaigu/gymapp/PermissionsActivity;->checkGPSIsOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/PermissionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 78
    :cond_3
    invoke-direct {p0}, Lcom/isaigu/gymapp/PermissionsActivity;->startScan()V

    .line 82
    :goto_2
    return-void
.end method

.method private startScan()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->start()V

    .line 28
    return-void
.end method


# virtual methods
.method public checkPermissions()V
    .locals 7

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 51
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "permissions":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "permissionDeniedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 58
    .local v5, "permission":Ljava/lang/String;
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 59
    .local v6, "permissionCheck":I
    if-nez v6, :cond_1

    .line 60
    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/PermissionsActivity;->onPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "permissionCheck":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 67
    .local v3, "deniedPermissions":[Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {p0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 69
    .end local v3    # "deniedPermissions":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/isaigu/gymapp/PermissionsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/isaigu/gymapp/PermissionsActivity;->checkGPSIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/PermissionsActivity;->startScan()V

    .line 99
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 36
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 40
    aget v1, p3, v0

    if-nez v1, :cond_1

    .line 41
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/PermissionsActivity;->onPermissionGranted(Ljava/lang/String;)V

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
