.class public final Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionInput"
.end annotation


# instance fields
.field public age:I

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public hrCapOverride:Ljava/lang/Integer;

.field public mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

.field public operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

.field public pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

.field public screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public totalSeconds:Ljava/lang/Integer;

.field public weightKg:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 58
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 59
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 61
    const-wide v0, 0x4052c00000000000L    # 75.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 62
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 66
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    return-void
.end method


# virtual methods
.method public isTraining()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
