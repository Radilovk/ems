.class Lcn/icomon/icdevicemanager/ICDeviceManager$7;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->setUserList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$listUser:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 405
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_86

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 409
    invoke-static {v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 410
    iget v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    iget v5, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    if-ne v4, v5, :cond_2e

    iget-wide v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    iget-wide v6, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    sub-double/2addr v4, v6

    .line 411
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_2e

    iget-object v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    .line 412
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v4

    iget-object v5, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2e

    iget v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    iget v5, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    if-ne v4, v5, :cond_2e

    iget-wide v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    iget-wide v8, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    sub-double/2addr v4, v8

    .line 414
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_2e

    iget v4, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    iget v5, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    if-ne v4, v5, :cond_2e

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    if-nez v3, :cond_7e

    goto :goto_86

    .line 424
    :cond_7e
    invoke-virtual {v3, v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_86

    :cond_85
    return-void

    :cond_86
    :goto_86
    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 435
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    .line 438
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_af

    const/4 v1, 0x0

    :goto_9f
    if-ge v1, v2, :cond_b4

    iget-object v3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    .line 440
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_af
    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->val$listUser:Ljava/util/List;

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b4
    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 446
    invoke-static {v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 447
    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$7;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetuserInfoList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostGlobalEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    return-void
.end method
