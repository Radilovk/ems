.class public final enum Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
.super Ljava/lang/Enum;
.source "AiRestHr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiRestHr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiRestHr$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

.field public static final enum DRIFT:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

.field public static final enum FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

.field public static final enum NOISY:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

.field public static final enum NONE:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NONE:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NOISY:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->DRIFT:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NONE:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    const-string v1, "FEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    const-string v1, "NOISY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NOISY:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    const-string v1, "DRIFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->DRIFT:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->$values()[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
    .registers 2

    .prologue
    .line 34
    const-class v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    return-object v0
.end method
