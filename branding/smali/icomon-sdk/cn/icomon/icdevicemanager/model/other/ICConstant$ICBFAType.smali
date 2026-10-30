.class public final enum Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
.super Ljava/lang/Enum;
.source "ICConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/model/other/ICConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICBFAType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public static final enum ICBFATypeRev:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public static final enum ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public static final enum ICBFATypeWLA01:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 734
    new-instance v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const-string v1, "ICBFATypeWLA01"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeWLA01:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 956
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const/16 v3, 0x64

    const-string v4, "ICBFATypeUnknown"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 957
    new-instance v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const/16 v4, 0x65

    const-string v6, "ICBFATypeRev"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeRev:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    sput-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeRev:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object p0

    :cond_5
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeWLA01:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 729
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->$VALUES:[Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 729
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->value:I

    return v0
.end method
