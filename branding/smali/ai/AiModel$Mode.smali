.class public final enum Lcom/isaigu/gymapp/ai/AiModel$Mode;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/ai/AiModel$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Mode;

.field public static final enum ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

.field public static final enum PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 17
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;

    const-string v1, "PASSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiModel$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;
    .registers 2

    .line 17
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiModel$Mode;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$Mode;
    .registers 1

    .line 17
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$Mode;

    return-object v0
.end method
