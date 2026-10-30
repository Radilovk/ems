.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$14;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->checkAdvDataFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$14;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 2582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$14;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 2585
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_checkAdvDataFlow()V

    return-void
.end method
