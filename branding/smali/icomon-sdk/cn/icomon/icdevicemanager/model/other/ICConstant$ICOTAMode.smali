.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICOTAMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field public static final enum ICOTAMode1:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field public static final enum ICOTAMode2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field public static final enum ICOTAMode3:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field public static final enum ICOTAModeAuto:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1371
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    const-string v1, "ICOTAModeAuto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAModeAuto:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 1375
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    const-string v3, "ICOTAMode1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode1:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 1379
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    const-string v5, "ICOTAMode2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 1383
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    const-string v7, "ICOTAMode3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->ICOTAMode3:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 1367
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 1367
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    return-object v0
.end method
