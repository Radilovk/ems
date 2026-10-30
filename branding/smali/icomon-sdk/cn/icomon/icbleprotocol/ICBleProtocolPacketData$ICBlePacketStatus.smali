.class public final enum Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;
.super Ljava/lang/Enum;
.source "ICBleProtocolPacketData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBlePacketStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

.field public static final enum ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

.field public static final enum ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

.field public static final enum ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

.field public static final enum ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 16
    new-instance v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const-string v1, "ICBlePacketStatusError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 20
    new-instance v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const-string v3, "ICBlePacketStatusPerfect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 24
    new-instance v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const-string v5, "ICBlePacketStatusImperfect"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 29
    new-instance v5, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const-string v7, "ICBlePacketStatusVerifyError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->$VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;
    .registers 2

    const-class v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;
    .registers 1

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->$VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 11
    invoke-virtual {v0}, [Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    return-object v0
.end method
