.class public final enum Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
.super Ljava/lang/Enum;
.source "DataConsolidateFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "AVERAGE"

    const/4 v2, 0x0

    const-string v3, "Average"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "COUNT"

    const-string v2, "Count"

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "COUNT_NUMS"

    const-string v2, "Count"

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "MAX"

    const-string v2, "Max"

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "MIN"

    const-string v2, "Min"

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "PRODUCT"

    const/4 v2, 0x6

    const-string v3, "Product"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "STD_DEV"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "StdDev"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "STD_DEVP"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "StdDevp"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "SUM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "Sum"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "VAR"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "Var"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "VARP"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "Varp"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    .line 46
    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    return v0
.end method
