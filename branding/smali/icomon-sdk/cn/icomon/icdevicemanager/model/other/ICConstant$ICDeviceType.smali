.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeHR:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeKitchenScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeUnKnown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

.field public static final enum ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 13
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v1, "ICDeviceTypeUnKnown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeUnKnown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 18
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v3, "ICDeviceTypeWeightScale"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 23
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v5, "ICDeviceTypeFatScale"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 28
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v7, "ICDeviceTypeFatScaleWithTemperature"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 33
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v9, "ICDeviceTypeKitchenScale"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeKitchenScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 38
    new-instance v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v11, "ICDeviceTypeRuler"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeRuler:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 43
    new-instance v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v13, "ICDeviceTypeBalance"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 47
    new-instance v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v15, "ICDeviceTypeSkip"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 52
    new-instance v15, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const-string v14, "ICDeviceTypeHR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeHR:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 9
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-object v0
.end method
