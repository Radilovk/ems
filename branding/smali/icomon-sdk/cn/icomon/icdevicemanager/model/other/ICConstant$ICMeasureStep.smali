.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICMeasureStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepHrResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepHrStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

.field public static final enum ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1154
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v1, "ICMeasureStepMeasureWeightData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1159
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v3, "ICMeasureStepMeasureCenterData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1164
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v5, "ICMeasureStepAdcStart"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1169
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v7, "ICMeasureStepAdcResult"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1174
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v9, "ICMeasureStepHrStart"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1179
    new-instance v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v11, "ICMeasureStepHrResult"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1184
    new-instance v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const-string v13, "ICMeasureStepMeasureOver"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1150
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 1150
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    return-object v0
.end method
