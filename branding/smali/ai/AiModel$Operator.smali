.class public final enum Lcom/isaigu/gymapp/ai/AiModel$Operator;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/ai/AiModel$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Operator;

.field public static final enum SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

.field public static final enum TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 23
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;

    const-string v1, "TRAINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;

    const-string v1, "SELF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiModel$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;
    .registers 2

    .line 23
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiModel$Operator;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$Operator;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Operator;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$Operator;

    return-object v0
.end method
