.class Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;
.super Ljava/lang/Object;
.source "ICSettingManagerImpl.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->handleFeedbackEvent(Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

.field final synthetic val$code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;->this$0:Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;->val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;->val$code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;->val$callback:Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$1;->val$code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 144
    invoke-interface {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;->onCallBack(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method
