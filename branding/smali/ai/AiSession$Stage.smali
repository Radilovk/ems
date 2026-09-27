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
        "Ljava/lang/Enum",
        "<",
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
.method private static synthetic $values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "SETUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "REST_HR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "PLAN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "CALIB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "RUNNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v1, "REPORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->$values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->$VALUES:[Lcom/isaigu/gymapp/ai/AiSession$Stage;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->$VALUES:[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/ai/AiSession$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/ai/AiSession$Stage;

    return-object v0
.end method
