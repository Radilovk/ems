.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICUpgradeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

.field public static final enum ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

.field public static final enum ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

.field public static final enum ICUpgradeStatusFailNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

.field public static final enum ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

.field public static final enum ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1264
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v1, "ICUpgradeStatusSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1268
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v3, "ICUpgradeStatusUpgrading"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1272
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v5, "ICUpgradeStatusFail"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1276
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v7, "ICUpgradeStatusFailFileInvalid"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1280
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const-string v9, "ICUpgradeStatusFailNotSupport"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1260
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    .line 1260
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    return-object v0
.end method
