.class public final enum Lcom/isaigu/gymapp/ai/AiModel$Sex;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiModel$Sex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public static final enum FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public static final enum MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiModel$Sex;
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Sex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const-string v1, "FEMALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Sex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->$values()[Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Sex;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;
    .registers 2

    .prologue
    .line 19
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$Sex;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$Sex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$Sex;

    return-object v0
.end method
