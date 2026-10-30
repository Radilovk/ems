.class public final enum Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;
.super Ljava/lang/Enum;
.source "ICBleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icbleprotocol/ICBleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBleProtocolVer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerAppBoradcast:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerBalanceScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerBaseSTOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerBroadcastScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerBroadcastScaleBM15:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerJumpRope:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerJumpRopeOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerJumpRopeS2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerJumpRopeSt:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerJumpRopeStHW:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerKitchenScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerKitchenScaleGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerNone:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerRuler:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerRulerGem:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerRulerGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerScaleA4:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerScaleAE:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerScaleNew:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerScaleNew2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerWeightGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerWeightGeneralV2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public static final enum ICBleProtocolVerWeightScaleOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 27

    .line 23
    new-instance v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const-string v1, "ICBleProtocolVerNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerNone:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 28
    new-instance v1, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v3, 0x64

    const-string v4, "ICBleProtocolVerScale"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 33
    new-instance v3, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v4, 0x65

    const-string v6, "ICBleProtocolVerBroadcastScale"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBroadcastScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 38
    new-instance v4, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v6, 0x66

    const-string v8, "ICBleProtocolVerBroadcastScaleBM15"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBroadcastScaleBM15:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 43
    new-instance v6, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v8, 0x67

    const-string v10, "ICBleProtocolVerScaleAE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleAE:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 48
    new-instance v8, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v10, 0x68

    const-string v12, "ICBleProtocolVerScaleA4"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleA4:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 53
    new-instance v10, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v12, 0x69

    const-string v14, "ICBleProtocolVerScaleNew"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleNew:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 58
    new-instance v12, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v14, 0x6a

    const-string v15, "ICBleProtocolVerScaleNew2"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleNew2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 62
    new-instance v14, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x6b

    const-string v13, "ICBleProtocolVerWeightGeneral"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 67
    new-instance v13, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x6c

    const-string v11, "ICBleProtocolVerWeightGeneralV2"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneralV2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 72
    new-instance v11, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x6d

    const-string v9, "ICBleProtocolVerBalanceScale"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBalanceScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 77
    new-instance v9, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x6e

    const-string v7, "ICBleProtocolVerKitchenScale"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerKitchenScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 81
    new-instance v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x6f

    const-string v5, "ICBleProtocolVerKitchenScaleGeneral"

    const/16 v2, 0xc

    invoke-direct {v7, v5, v2, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerKitchenScaleGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 86
    new-instance v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0xc8

    const-string v2, "ICBleProtocolVerRuler"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v2, v7, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRuler:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 91
    new-instance v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0xc9

    const-string v7, "ICBleProtocolVerRulerGem"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v2, v7, v5, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRulerGem:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 96
    new-instance v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0xca

    const-string v5, "ICBleProtocolVerRulerGeneral"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v7, v5, v2, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRulerGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 101
    new-instance v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x12c

    const-string v2, "ICBleProtocolVerJumpRope"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v2, v7, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRope:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 105
    new-instance v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x12d

    const-string v7, "ICBleProtocolVerJumpRopeSt"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v2, v7, v5, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeSt:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 109
    new-instance v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x12e

    const-string v5, "ICBleProtocolVerJumpRopeS2"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v7, v5, v2, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeS2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 114
    new-instance v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x12f

    const-string v2, "ICBleProtocolVerJumpRopeStHW"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v2, v7, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeStHW:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 119
    new-instance v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x190

    const-string v7, "ICBleProtocolVerAppBoradcast"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v2, v7, v5, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerAppBoradcast:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 124
    new-instance v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x1f4

    const-string v5, "ICBleProtocolVerWeightScaleOTA"

    move-object/from16 v24, v2

    const/16 v2, 0x15

    invoke-direct {v7, v5, v2, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightScaleOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 129
    new-instance v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v15, 0x16

    const/16 v2, 0x1f5

    move-object/from16 v25, v7

    const-string v7, "ICBleProtocolVerJumpRopeOTA"

    invoke-direct {v5, v7, v15, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 133
    new-instance v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v7, 0x17

    const/16 v15, 0x1f6

    move-object/from16 v26, v5

    const-string v5, "ICBleProtocolVerBaseSTOTA"

    invoke-direct {v2, v5, v7, v15}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBaseSTOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/16 v5, 0x18

    new-array v5, v5, [Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v2, v5, v0

    sput-object v5, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->$VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;
    .registers 2

    const-class v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 18
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;
    .registers 1

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->$VALUES:[Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 18
    invoke-virtual {v0}, [Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->value:I

    return v0
.end method
