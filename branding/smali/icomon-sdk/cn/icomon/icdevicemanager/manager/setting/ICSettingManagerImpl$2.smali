.class Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;
.super Ljava/lang/Object;
.source "ICSettingManagerImpl.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->postEvent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

.field final synthetic val$event:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->this$0:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$event:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->this$0:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    .line 160
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->_callbackMaps:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$2;->val$event:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;

    .line 161
    invoke-static {v0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    return-void
.end method
