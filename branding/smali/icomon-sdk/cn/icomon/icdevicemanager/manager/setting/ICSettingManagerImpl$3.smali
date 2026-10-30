.class synthetic Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$3;
.super Ljava/lang/Object;
.source "ICSettingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 117
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->values()[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl$3;->$SwitchMap$cn$icomon$icdevicemanager$notify$global$ICGPublishEvent$ICGPublishEventType:[I

    :try_start_9
    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeSDKInitFinish:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
