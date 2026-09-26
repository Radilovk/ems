.class public final enum Lcom/isaigu/gymapp/ai/AiSession$Stage;
.super Ljava/lang/Enum;
.source "AiSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isaigu/gymapp/ai/AiSession$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

.field public static final enum SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 27
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "REST_HR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "PLAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "CALIB"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "RUNNING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "REPORT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/isaigu/gymapp/ai/AiSession$Stage;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v9, v1, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v1, v3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v1, v4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v1, v5

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v1, v6

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->$VALUES:[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 2

    .line 27
    const-class v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object p0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->$VALUES:[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiSession$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method
