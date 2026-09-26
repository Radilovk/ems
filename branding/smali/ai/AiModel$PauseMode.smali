.class public final enum Lcom/isaigu/gymapp/ai/AiModel$PauseMode;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PauseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/ai/AiModel$PauseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

.field public static final enum ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

.field public static final enum AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

.field public static final enum PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 34
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    const-string v1, "PASSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$PauseMode;
    .registers 2

    .line 34
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$PauseMode;
    .registers 1

    .line 34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    return-object v0
.end method
