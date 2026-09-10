.class public final enum Lorg/apache/poi/ss/usermodel/charts/LegendPosition;
.super Ljava/lang/Enum;
.source "LegendPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/charts/LegendPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

.field public static final enum BOTTOM:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

.field public static final enum LEFT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

.field public static final enum RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

.field public static final enum TOP:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 27
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->LEFT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 28
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP_RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->LEFT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->TOP_RIGHT:Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/charts/LegendPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/charts/LegendPosition;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/charts/LegendPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/charts/LegendPosition;

    return-object v0
.end method
