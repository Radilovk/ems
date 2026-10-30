.class public final enum Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;
.super Ljava/lang/Enum;
.source "ICBlePublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBlePublishEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeConnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeCount:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeDisconnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypePostAdv:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeReadRSSI:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeReadValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeRequestMTU:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeStartScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeStopSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

.field public static final enum ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 18
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v1, "ICBlePublishEventTypeStartScan"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStartScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 23
    new-instance v1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v3, "ICBlePublishEventTypeStopScan"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 28
    new-instance v3, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v5, "ICBlePublishEventTypeSearch"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 34
    new-instance v5, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v7, "ICBlePublishEventTypeStopSearch"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopSearch:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 39
    new-instance v7, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v9, "ICBlePublishEventTypeConnect"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeConnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 44
    new-instance v9, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v11, "ICBlePublishEventTypeDisconnect"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDisconnect:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 49
    new-instance v11, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v13, "ICBlePublishEventTypeDiscoverService"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDiscoverService:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 54
    new-instance v13, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v15, "ICBlePublishEventTypeDiscoverCharacteristic"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeDiscoverCharacteristic:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 59
    new-instance v15, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v14, "ICBlePublishEventTypeReadValue"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeReadValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 64
    new-instance v14, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v12, "ICBlePublishEventTypeWriteValue"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 69
    new-instance v12, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v10, "ICBlePublishEventTypeSetNotify"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeSetNotify:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 74
    new-instance v10, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v8, "ICBlePublishEventTypeReadRSSI"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeReadRSSI:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 78
    new-instance v8, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v6, "ICBlePublishEventTypePostAdv"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypePostAdv:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 83
    new-instance v6, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v4, "ICBlePublishEventTypeRequestMTU"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeRequestMTU:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 89
    new-instance v4, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const-string v2, "ICBlePublishEventTypeCount"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeCount:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 13
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    .line 13
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    return-object v0
.end method
