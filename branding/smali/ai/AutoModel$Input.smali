.class public final Lcom/isaigu/gymapp/ai/AutoModel$Input;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field public age:I

.field public chMuscle:[D

.field public channelFat:[D

.field public cond:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public doublePulse:Z

.field public extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

.field public fatObese:Z

.field public fatPct:D

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public focus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

.field public heightCm:I

.field public hoursSinceActive:D

.field public intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

.field public kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

.field public leanKg:D

.field public measured:Z

.field public muscleLow:Z

.field public operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

.field public programId:Ljava/lang/String;

.field public readiness:D

.field public scaleFocus:Ljava/lang/String;

.field public screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

.field public sessions:I

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public skeletalKg:D

.field public today:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public totalSeconds:Ljava/lang/Integer;

.field public variant:I

.field public weightKg:D


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 80
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 83
    const/16 v0, 0x23

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 84
    const-wide v0, 0x4051800000000000L    # 70.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 86
    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 88
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    .line 92
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    .line 94
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    .line 95
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 107
    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 109
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 111
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 113
    iput v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$Screening;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 118
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bmi()D
    .registers 5

    .prologue
    .line 126
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v0, :cond_7

    .line 127
    const-wide/16 v0, 0x0

    .line 130
    :goto_6
    return-wide v0

    .line 129
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 130
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    mul-double/2addr v0, v0

    div-double v0, v2, v0

    goto :goto_6
.end method

.method public solo()Z
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
