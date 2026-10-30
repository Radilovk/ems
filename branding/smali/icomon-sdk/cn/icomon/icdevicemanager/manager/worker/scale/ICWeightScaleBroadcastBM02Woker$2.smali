.class synthetic Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$2;
.super Ljava/lang/Object;
.source "ICWeightScaleBroadcastBM02Woker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 794
    invoke-static {}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$2;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

    :try_start_9
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$2;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$2;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
