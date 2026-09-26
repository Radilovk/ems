.class public final enum Lcom/isaigu/gymapp/ai/AiModel$Goal;
.super Ljava/lang/Enum;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Goal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/ai/AiModel$Goal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public static final enum CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public static final enum DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public static final enum FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public static final enum MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public static final enum TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 15
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-string v1, "TONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiModel$Goal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-string v1, "FAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-string v1, "MASSAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiModel$Goal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-string v1, "DRAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AiModel$Goal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const-string v1, "CELLULITE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiModel$Goal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v7, v1, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v1, v3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v1, v4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 2

    .line 15
    const-class v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->$VALUES:[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiModel$Goal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object v0
.end method
