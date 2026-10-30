.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICConfigWifiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

.field public static final enum ICConfigWifiModeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

.field public static final enum ICConfigWifiModeEnter:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

.field public static final enum ICConfigWifiModeExit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1309
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    const-string v1, "ICConfigWifiModeDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ICConfigWifiModeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    .line 1313
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    const-string v3, "ICConfigWifiModeEnter"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ICConfigWifiModeEnter:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    .line 1317
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    const-string v5, "ICConfigWifiModeExit"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ICConfigWifiModeExit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    .line 1305
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    .line 1305
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    return-object v0
.end method
