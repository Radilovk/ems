.class public final enum Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;
.super Ljava/lang/Enum;
.source "ICWPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICWPublishEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

.field public static final enum ICWPublishEventTypeAddDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

.field public static final enum ICWPublishEventTypeAddOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

.field public static final enum ICWPublishEventTypeDeleteDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

.field public static final enum ICWPublishEventTypeDeleteOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 20
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const-string v1, "ICWPublishEventTypeAddDevices"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    .line 25
    new-instance v1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const-string v3, "ICWPublishEventTypeDeleteDevices"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeDeleteDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    .line 29
    new-instance v3, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const-string v5, "ICWPublishEventTypeAddOTADevices"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    .line 34
    new-instance v5, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const-string v7, "ICWPublishEventTypeDeleteOTADevices"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeDeleteOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->$VALUES:[Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    .line 15
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    return-object v0
.end method
