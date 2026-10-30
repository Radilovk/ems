.class Lcn/icomon/icdevicemanager/ICDeviceManager$2;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->__Init__(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$2;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$2;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 243
    check-cast p1, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-static {v0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$monHandleBleUploadEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V

    return-void
.end method
