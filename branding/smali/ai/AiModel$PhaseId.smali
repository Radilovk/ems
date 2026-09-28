.class public final enum Lcom/isaigu/gymapp/ai/AiModel$PhaseId;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhaseId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiModel$PhaseId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public static final enum COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public static final enum MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public static final enum METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public static final enum WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-string v1, "WARMUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-string v1, "MAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-string v1, "METABOLIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    const-string v1, "COOLDOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->COOLDOWN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->$values()[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
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

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PhaseId;
    .registers 2

    .prologue
    .line 25
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    return-object v0
.end method
