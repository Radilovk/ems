.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBPMType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

.field public static final enum ICBPMTypeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1454
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    const-string v1, "ICBPMTypeDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;->ICBPMTypeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    aput-object v0, v1, v2

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    .line 1450
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    .line 1450
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;

    return-object v0
.end method
