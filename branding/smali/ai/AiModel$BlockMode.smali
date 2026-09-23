.class public final enum Lcom/isaigu/gymapp/ai/AiModel$BlockMode;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiModel$BlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

.field public static final enum CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

.field public static final enum FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    const-string v1, "FATIGUE_DRIVEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->$values()[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$BlockMode;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    return-object v0
.end method
