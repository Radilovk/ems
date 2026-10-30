.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICPeopleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

.field public static final enum ICPeopleTypeNormal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

.field public static final enum ICPeopleTypeSportman:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1136
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    const-string v1, "ICPeopleTypeNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ICPeopleTypeNormal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    .line 1141
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    const-string v3, "ICPeopleTypeSportman"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ICPeopleTypeSportman:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    .line 1132
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    .line 1132
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    return-object v0
.end method
