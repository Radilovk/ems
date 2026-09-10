.class public final enum Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
.super Ljava/lang/Enum;
.source "AxisTickMark.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

.field public static final enum CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

.field public static final enum IN:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

.field public static final enum NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

.field public static final enum OUT:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 27
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    const-string v1, "CROSS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 28
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    const-string v1, "IN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->IN:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    const-string v1, "OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->OUT:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    .line 25
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    sget-object v6, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->IN:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    return-object v0
.end method
