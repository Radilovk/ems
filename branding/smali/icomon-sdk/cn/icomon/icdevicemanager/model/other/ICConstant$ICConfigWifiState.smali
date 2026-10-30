.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICConfigWifiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStatePasswordFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateServerConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateServerConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateWifiConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

.field public static final enum ICConfigWifiStateWifiConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1290
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v1, "ICConfigWifiStateSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1291
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v3, "ICConfigWifiStateWifiConnecting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateWifiConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1292
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v5, "ICConfigWifiStateServerConnecting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateServerConnecting:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1293
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v7, "ICConfigWifiStateWifiConnectFail"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateWifiConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1294
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v9, "ICConfigWifiStateServerConnectFail"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateServerConnectFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1295
    new-instance v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v11, "ICConfigWifiStatePasswordFail"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStatePasswordFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1296
    new-instance v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const-string v13, "ICConfigWifiStateFail"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->ICConfigWifiStateFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1289
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    .line 1289
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;

    return-object v0
.end method
