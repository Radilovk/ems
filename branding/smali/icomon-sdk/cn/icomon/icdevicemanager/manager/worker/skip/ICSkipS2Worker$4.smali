.class synthetic Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;
.super Ljava/lang/Object;
.source "ICSkipS2Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 867
    invoke-static {}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    :try_start_9
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
