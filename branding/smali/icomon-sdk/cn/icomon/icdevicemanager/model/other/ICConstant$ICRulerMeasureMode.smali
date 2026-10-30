.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICRulerMeasureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

.field public static final enum ICRulerMeasureModeGirth:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

.field public static final enum ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 430
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    const-string v1, "ICRulerMeasureModeLength"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 435
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    const-string v4, "ICRulerMeasureModeGirth"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeGirth:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    new-array v4, v5, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeGirth:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object p0

    :cond_b
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 425
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 425
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->value:I

    return v0
.end method
