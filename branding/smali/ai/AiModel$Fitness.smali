.class public final enum Lcom/isaigu/gymapp/ai/AiModel$Fitness;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fitness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiModel$Fitness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public static final enum HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public static final enum LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public static final enum MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const-string v1, "MID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->$values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$Fitness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    return-object v0
.end method
