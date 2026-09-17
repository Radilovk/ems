.class Lcom/isaigu/gymapp/beta/MusicReactiveController$StrengthApplier;
.super Ljava/lang/Object;
.source "MusicReactiveController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final target:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "target"    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/isaigu/gymapp/beta/MusicReactiveController$StrengthApplier;->target:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v1, p0, Lcom/isaigu/gymapp/beta/MusicReactiveController$StrengthApplier;->target:I

    if-ne v0, v1, :cond_apply

    return-void

    :cond_apply
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    return-void
.end method
