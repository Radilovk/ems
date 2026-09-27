.class public final enum Lcom/isaigu/gymapp/ai/AutoModel$HrUse;
.super Ljava/lang/Enum;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HrUse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AutoModel$HrUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

.field public static final enum CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

.field public static final enum CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

.field public static final enum NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->NONE:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    const-string v1, "CAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    const-string v1, "CORRIDOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->$values()[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->$VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

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

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$HrUse;
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->$VALUES:[Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    return-object v0
.end method
