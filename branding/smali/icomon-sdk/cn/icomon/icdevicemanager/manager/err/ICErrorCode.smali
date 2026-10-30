.class public final enum Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;
.super Ljava/lang/Enum;
.source "ICErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_CONNECT_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_DISCONNECT_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_DISCOVER_CHARACTERISTIC_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_DISCOVER_CHARACTERISTIC_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_DISCOVER_SERVICE_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_NOT_FOUND_CHARACTERISTIC:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_NOT_FOUND_SERVICE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_READDATA_CHARACTERISTIC_NOT_READ:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_READDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NOT_SUPPORT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_SETNOTIFY_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_SETNOTIFY_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_WRITEDATA_CHARACTERISTIC_NOT_WRITE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_WRITEDATA_DATA_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

.field public static final enum BLE_ERROR_WRITEDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 5
    new-instance v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v1, 0x2710

    const-string v2, "BLE_ERROR_CONNECT_IDENTIFIER_NIL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_IDENTIFIER_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 6
    new-instance v1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v2, 0x2711

    const-string v4, "BLE_ERROR_NOT_FOUND_SERVICE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NOT_FOUND_SERVICE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 7
    new-instance v2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v4, 0x2712

    const-string v6, "BLE_ERROR_NOT_FOUND_CHARACTERISTIC"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NOT_FOUND_CHARACTERISTIC:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 8
    new-instance v4, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v6, 0x2713

    const-string v8, "BLE_ERROR_DISCOVER_CHARACTERISTIC_MODEL_NIL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCOVER_CHARACTERISTIC_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 9
    new-instance v6, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v8, 0x2714

    const-string v10, "BLE_ERROR_READDATA_MODEL_NIL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_READDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 10
    new-instance v8, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v10, 0x2715

    const-string v12, "BLE_ERROR_READDATA_CHARACTERISTIC_NOT_READ"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_READDATA_CHARACTERISTIC_NOT_READ:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 11
    new-instance v10, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v12, 0x2716

    const-string v14, "BLE_ERROR_WRITEDATA_MODEL_NIL"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 12
    new-instance v12, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v14, 0x2717

    const-string v15, "BLE_ERROR_WRITEDATA_CHARACTERISTIC_NOT_WRITE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_CHARACTERISTIC_NOT_WRITE:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 13
    new-instance v14, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x2718

    const-string v13, "BLE_ERROR_WRITEDATA_DATA_NIL"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_WRITEDATA_DATA_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 14
    new-instance v13, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x2719

    const-string v11, "BLE_ERROR_SETNOTIFY_MODEL_NIL"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_MODEL_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 15
    new-instance v11, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271a

    const-string v9, "BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NOT_SUPPORT"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NOT_SUPPORT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 16
    new-instance v9, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271b

    const-string v7, "BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NIL"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_CHARACTERISTIC_NIL:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 17
    new-instance v7, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271c

    const-string v5, "BLE_ERROR_CONNECT_TIMEOUT"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_CONNECT_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 18
    new-instance v5, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271d

    const-string v3, "BLE_ERROR_DISCONNECT_TIMEOUT"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCONNECT_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 19
    new-instance v3, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271e

    const-string v7, "BLE_ERROR_DISCOVER_SERVICE_TIMEOUT"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCOVER_SERVICE_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 20
    new-instance v7, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x271f

    const-string v5, "BLE_ERROR_DISCOVER_CHARACTERISTIC_TIMEOUT"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_DISCOVER_CHARACTERISTIC_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 21
    new-instance v5, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x2720

    const-string v3, "BLE_ERROR_SETNOTIFY_TIMEOUT"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_SETNOTIFY_TIMEOUT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 22
    new-instance v3, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v15, 0x2721

    const-string v7, "BLE_ERROR_NO_CONNECT"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->BLE_ERROR_NO_CONNECT:Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/16 v7, 0x12

    new-array v7, v7, [Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v18, v7, v0

    const/16 v0, 0xf

    aput-object v19, v7, v0

    const/16 v0, 0x10

    aput-object v20, v7, v0

    aput-object v3, v7, v5

    sput-object v7, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->$VALUES:[Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->$VALUES:[Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    .line 3
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;->value:I

    return v0
.end method
