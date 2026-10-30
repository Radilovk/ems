.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStateException:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStatePoweredOff:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStateUnauthorized:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStateUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

.field public static final enum ICBleStateUnsupported:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 65
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v1, "ICBleStateUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 70
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v3, "ICBleStateUnsupported"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnsupported:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 75
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v5, "ICBleStateUnauthorized"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateUnauthorized:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 80
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v7, "ICBleStatePoweredOff"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOff:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 85
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v9, "ICBleStatePoweredOn"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 90
    new-instance v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const-string v11, "ICBleStateException"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStateException:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 61
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    .line 61
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    return-object v0
.end method
