.class final Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewPlan"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)V
    .registers 2

    .prologue
    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;->p:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 1196
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;->p:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 1201
    return-void
.end method
