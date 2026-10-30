.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICRulerBodyPartsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeBicep:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeCalf:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeChest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeHip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeThigh:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public static final enum ICRulerPartsTypeWaist:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 468
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v1, "ICRulerPartsTypeShoulder"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 473
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v4, "ICRulerPartsTypeBicep"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeBicep:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 478
    new-instance v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v6, "ICRulerPartsTypeChest"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeChest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 483
    new-instance v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v8, "ICRulerPartsTypeWaist"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeWaist:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 488
    new-instance v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v10, "ICRulerPartsTypeHip"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeHip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 493
    new-instance v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v12, "ICRulerPartsTypeThigh"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeThigh:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 498
    new-instance v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    const-string v14, "ICRulerPartsTypeCalf"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeCalf:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    new-array v14, v15, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 502
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeCalf:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeThigh:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeHip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_e
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeWaist:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_11
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeChest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_14
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeBicep:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_17
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 464
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 464
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->value:I

    return v0
.end method
