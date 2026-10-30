.class public final enum Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;
.super Ljava/lang/Enum;
.source "ICGPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICGPublishEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeDisableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeEnableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeEnterBackground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeEnterForeground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeMemoryWaring:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeSDKInitFinish:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeSDKModeChanged:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

.field public static final enum ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v1, "ICGPublishEventTypeSDKInitFinish"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeSDKInitFinish:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 25
    new-instance v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v3, "ICGPublishEventTypeMemoryWaring"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeMemoryWaring:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 30
    new-instance v3, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v5, "ICGPublishEventTypeEnterBackground"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnterBackground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 35
    new-instance v5, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v7, "ICGPublishEventTypeEnterForeground"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnterForeground:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 40
    new-instance v7, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v9, "ICGPublishEventTypeUpdateUserInfo"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfo:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 45
    new-instance v9, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v11, "ICGPublishEventTypeEnableBle"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeEnableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 50
    new-instance v11, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v13, "ICGPublishEventTypeDisableBle"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeDisableBle:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 55
    new-instance v13, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v15, "ICGPublishEventTypeUpdateUserInfoList"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeUpdateUserInfoList:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 60
    new-instance v15, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v14, "ICGPublishEventTypeSDKModeChanged"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeSDKModeChanged:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 61
    new-instance v14, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const-string v12, "ICGPublishEventTypeClearCache"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    .line 14
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    return-object v0
.end method
