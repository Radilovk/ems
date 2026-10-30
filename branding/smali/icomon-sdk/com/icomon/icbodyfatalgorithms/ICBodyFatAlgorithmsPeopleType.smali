.class public final enum Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;
.super Ljava/lang/Enum;
.source "ICBodyFatAlgorithmsPeopleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

.field public static final enum ICBodyFatAlgorithmsPeopleTypeNormal:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

.field public static final enum ICBodyFatAlgorithmsPeopleTypeSportsMan:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    const-string v1, "ICBodyFatAlgorithmsPeopleTypeNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->ICBodyFatAlgorithmsPeopleTypeNormal:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    .line 15
    new-instance v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    const-string v3, "ICBodyFatAlgorithmsPeopleTypeSportsMan"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->ICBodyFatAlgorithmsPeopleTypeSportsMan:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->ICBodyFatAlgorithmsPeopleTypeSportsMan:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-object p0

    :cond_a
    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->ICBodyFatAlgorithmsPeopleTypeNormal:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;
    .registers 2

    const-class v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-object p0
.end method

.method public static values()[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;
    .registers 1

    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    .line 7
    invoke-virtual {v0}, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->value:I

    return v0
.end method
