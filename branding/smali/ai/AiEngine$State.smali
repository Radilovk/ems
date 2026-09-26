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
        "Ljava/lang/Enum<",
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
.method static constructor <clinit>()V
    .registers 12

    .line 30
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "RUN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "REST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "CHECKPOINT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "STIM_PAUSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "USER_PAUSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "RECOVERY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "DONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-string v1, "STOPPED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/isaigu/gymapp/ai/AiEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiEngine$State;

    sget-object v11, Lcom/isaigu/gymapp/ai/AiEngine$State;->READY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v11, v1, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v8

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->$VALUES:[Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 2

    .line 30
    const-class v0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiEngine$State;
    .registers 1

    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->$VALUES:[Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiEngine$State;

    return-object v0
.end method
