.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICWeightUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

.field public static final enum ICWeightUnitJin:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

.field public static final enum ICWeightUnitKg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

.field public static final enum ICWeightUnitLb:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

.field public static final enum ICWeightUnitSt:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 333
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    const-string v1, "ICWeightUnitKg"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitKg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 338
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    const-string v3, "ICWeightUnitLb"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitLb:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 343
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    const-string v5, "ICWeightUnitSt"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitSt:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 348
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    const-string v7, "ICWeightUnitJin"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitJin:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->value:I

    return-void
.end method

.method public static valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitJin:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object p0

    :cond_10
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitSt:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object p0

    :cond_13
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitLb:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object p0

    :cond_16
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitKg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 328
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 328
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->value:I

    return v0
.end method
