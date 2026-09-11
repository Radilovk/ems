.class public Lcom/isaigu/gymapp/utils/DemoUtils;
.super Ljava/lang/Object;
.source "DemoUtils.java"


# static fields
.field private static sDemoModeActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/utils/DemoUtils;->sDemoModeActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStoredDemoMode(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMode(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/utils/DemoUtils;->sDemoModeActive:Z

    return-void
.end method

.method public static bindDemoSwitch(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;

    if-eqz p0, :cond_end

    if-nez p1, :cond_has_root

    goto :goto_end

    :cond_has_root
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "demo_switch_button"

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_has_id

    goto :goto_end

    :cond_has_id
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    if-nez v0, :cond_has_switch

    goto :goto_end

    :cond_has_switch
    new-instance v1, Lcom/isaigu/gymapp/utils/DemoUtils$DemoSwitchListener;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/utils/DemoUtils$DemoSwitchListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    :cond_end
    :goto_end
    return-void
.end method

.method public static createDemoBleDevice(Ljava/lang/String;)Lcom/clj/fastble/data/BleDevice;
    .locals 2
    .param p0, "mac"    # Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_has_adapter

    const/4 v0, 0x0

    return-object v0

    :cond_has_adapter
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    new-instance v1, Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v1, v0}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v1
.end method

.method public static ensureDemoDeviceInList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-nez v0, :cond_continue

    return-void

    :cond_continue
    if-nez p0, :cond_has_list

    return-void

    :cond_has_list
    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->getDemoMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_check
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_add

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_next

    return-void

    :cond_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_check

    :cond_add
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    const-string v2, "XEMS-DEMO"

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static getDemoMac()Ljava/lang/String;
    .locals 1

    const-string v0, "AA:BB:CC:DD:EE:FF"

    return-object v0
.end method

.method public static isDemoMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "demo_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDemoModeActive()Z
    .locals 1

    sget-boolean v0, Lcom/isaigu/gymapp/utils/DemoUtils;->sDemoModeActive:Z

    return v0
.end method

.method public static setDemoMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "demoMode"    # Z

    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "demo_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-boolean p1, Lcom/isaigu/gymapp/utils/DemoUtils;->sDemoModeActive:Z

    return-void
.end method

.method public static simulateConnectByMac(Ljava/lang/String;)V
    .locals 3
    .param p0, "mac"    # Ljava/lang/String;

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/DemoUtils;->createDemoBleDevice(Ljava/lang/String;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-nez v0, :cond_has_device

    return-void

    :cond_has_device
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static simulateDeviceDiscover(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)V
    .locals 2
    .param p0, "adapter"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->isDemoModeActive()Z

    move-result v0

    if-eqz v0, :cond_end

    if-nez p0, :cond_has_adapter

    goto :goto_end

    :cond_has_adapter
    invoke-static {}, Lcom/isaigu/gymapp/utils/DemoUtils;->getDemoMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->discoverDevice(Ljava/lang/String;Ljava/lang/String;)V

    :cond_end
    :goto_end
    return-void
.end method
