.class public final enum Lcom/isaigu/gymapp/ai/AiEngine$State;
.super Ljava/lang/Enum;
.source "AiEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/ai/AiEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

.field public static final enum USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 3

    .prologue
    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "RUN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "REST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "CHECKPOINT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "STIM_PAUSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "USER_PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "RECOVERY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "DONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "STOPPED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiEngine$State;->$values()[Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->$VALUES:[Lcom/isaigu/gymapp/ai/AiEngine$State;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .prologue
    .line 30
    const-class v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->$VALUES:[Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method
