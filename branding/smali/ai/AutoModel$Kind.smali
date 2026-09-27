.class public final enum Lcom/isaigu/gymapp/ai/AutoModel$Kind;
.super Ljava/lang/Enum;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AutoModel$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$Kind;

.field public static final enum ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

.field public static final enum PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AutoModel$Kind;
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const-string v1, "PASSIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->$values()[Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->$VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$Kind;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;
    .registers 2

    .prologue
    .line 16
    const-class v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AutoModel$Kind;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->$VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AutoModel$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    return-object v0
.end method
