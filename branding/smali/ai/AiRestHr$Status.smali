.class public final enum Lcom/isaigu/gymapp/ai/AiRestHr$Status;
.super Ljava/lang/Enum;
.source "AiRestHr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiRestHr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiRestHr$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field public static final enum DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field public static final enum MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field public static final enum STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field public static final enum UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field public static final enum WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "MEASURING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "STALE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "DONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "UNSTABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->$values()[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 2

    .prologue
    .line 19
    const-class v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method
