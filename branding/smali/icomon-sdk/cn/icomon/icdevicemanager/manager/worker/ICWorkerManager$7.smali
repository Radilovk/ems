.class synthetic Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;
.super Ljava/lang/Object;
.source "ICWorkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWUploadEvent$ICWUploadEventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1065
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->values()[Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWUploadEvent$ICWUploadEventType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeWorkerOver:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWUploadEvent$ICWUploadEventType:[I

    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeReConnect:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 953
    :catch_1d
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->values()[Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    :try_start_26
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeStateChanged:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$ble$model$ICBleUploadEvent$ICBleUploadEventType:[I

    sget-object v4, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ICBleUploadEventTypeScanDevice:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    .line 926
    :catch_43
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->values()[Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

    :try_start_4c
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeDeleteDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_68

    :catch_68
    const/4 v3, 0x4

    :try_start_69
    sget-object v4, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$worker$ICWPublishEvent$ICWPublishEventType:[I

    sget-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeDeleteOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    .line 892
    :catch_73
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->values()[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    :try_start_7c
    sget-object v5, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnterBackground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    sget-object v4, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnterForeground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$7;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a2} :catch_a2

    :catch_a2
    return-void
.end method
