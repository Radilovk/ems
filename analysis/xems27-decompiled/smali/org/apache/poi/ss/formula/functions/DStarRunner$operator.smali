.class final enum Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
.super Ljava/lang/Enum;
.source "DStarRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/DStarRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 104
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "largerThan"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    .line 105
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "largerEqualThan"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    .line 106
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "smallerThan"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    .line 107
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "smallerEqualThan"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    .line 108
    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "equal"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    .line 103
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    sget-object v7, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 103
    const-class v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    return-object v0
.end method
