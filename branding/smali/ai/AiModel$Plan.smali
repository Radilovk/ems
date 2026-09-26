.class public final Lcom/isaigu/gymapp/ai/AiModel$Plan;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plan"
.end annotation


# instance fields
.field public cr10Hi:I

.field public cr10Lo:I

.field public fMax:D

.field public fRec:D

.field public pauseAvailable:Z

.field public pauseOn:Z

.field public final phases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/ai/AiModel$Phase;",
            ">;"
        }
    .end annotation
.end field

.field public phiMax:D

.field public qBudget:D

.field public qPlan:D

.field public qPlanPauseOff:D

.field public qPlanPauseOn:D

.field public tauR:D

.field public totalS:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    .line 177
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    return-void
.end method
