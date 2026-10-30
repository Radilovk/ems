.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICSkipStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

.field public static final enum ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

.field public static final enum ICSkipStatusJumping:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

.field public static final enum ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1395
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    const-string v1, "ICSkipStatusJumping"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumping:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 1399
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    const-string v3, "ICSkipStatusJumpOver"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 1403
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    const-string v5, "ICSkipStatusRest"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 1391
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 1391
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    return-object v0
.end method
