.class public final enum Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;
.super Ljava/lang/Enum;
.source "ICBodyFatAlgorithmsSex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

.field public static final enum Female:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

.field public static final enum Male:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    const-string v1, "Male"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->Male:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    .line 5
    new-instance v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    const-string v4, "Female"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->Female:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    new-array v4, v5, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->Male:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-object p0

    :cond_6
    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->Female:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;
    .registers 2

    const-class v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-object p0
.end method

.method public static values()[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;
    .registers 1

    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    .line 3
    invoke-virtual {v0}, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->value:I

    return v0
.end method
