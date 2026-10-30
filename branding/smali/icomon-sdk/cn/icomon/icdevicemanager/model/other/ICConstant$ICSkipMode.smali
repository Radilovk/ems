.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICSkipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public static final enum ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public static final enum ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public static final enum ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public static final enum ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public static final enum ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1197
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v1, "ICSkipModeFreedom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1202
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v3, "ICSkipModeTiming"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1207
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v5, "ICSkipModeCount"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1212
    new-instance v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v7, "ICSkipModeInterruptTime"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1217
    new-instance v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v9, "ICSkipModeInterruptCount"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1193
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 1193
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-object v0
.end method
