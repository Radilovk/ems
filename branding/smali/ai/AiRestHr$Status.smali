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
        "Ljava/lang/Enum<",
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
.method static constructor <clinit>()V
    .registers 8

    .line 19
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "MEASURING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "STALE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "DONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const-string v1, "UNSTABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v7, v1, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 2

    .line 19
    const-class v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 1

    .line 19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->$VALUES:[Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method
