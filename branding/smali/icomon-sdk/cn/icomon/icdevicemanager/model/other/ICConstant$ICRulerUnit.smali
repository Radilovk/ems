.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICRulerUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

.field public static final enum ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

.field public static final enum ICRulerUnitFtInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

.field public static final enum ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 385
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    const-string v1, "ICRulerUnitCM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 390
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    const-string v4, "ICRulerUnitInch"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 394
    new-instance v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    const-string v6, "ICRulerUnitFtInch"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitFtInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    new-array v6, v7, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->value:I

    return-void
.end method

.method public static valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitFtInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object p0

    :cond_e
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object p0

    :cond_11
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 380
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 380
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->value:I

    return v0
.end method
