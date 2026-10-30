.class public final enum Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;
.super Ljava/lang/Enum;
.source "ICBodyFatAlgorithmsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

.field public static final enum ICBodyFatAlgorithmsTypeRev:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

.field public static final enum ICBodyFatAlgorithmsTypeWLA01:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

.field public static final enum ICBodyFatAlgorithmsTypeWLA28:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 12
    new-instance v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    const-string v1, "ICBodyFatAlgorithmsTypeWLA01"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->ICBodyFatAlgorithmsTypeWLA01:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    .line 167
    new-instance v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    const/16 v3, 0x1b

    const-string v4, "ICBodyFatAlgorithmsTypeWLA28"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->ICBodyFatAlgorithmsTypeWLA28:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    .line 232
    new-instance v3, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    const/16 v4, 0x63

    const-string v6, "ICBodyFatAlgorithmsTypeRev"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->ICBodyFatAlgorithmsTypeRev:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    sput-object v4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;
    .registers 2

    if-eqz p0, :cond_b

    const/16 v0, 0x63

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->ICBodyFatAlgorithmsTypeRev:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-object p0

    :cond_b
    sget-object p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->ICBodyFatAlgorithmsTypeWLA01:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;
    .registers 2

    const-class v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-object p0
.end method

.method public static values()[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;
    .registers 1

    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->$VALUES:[Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    .line 7
    invoke-virtual {v0}, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->value:I

    return v0
.end method
