.class Lcom/isaigu/gymapp/train/utils/MusicSync$StrengthApplier;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final target:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$StrengthApplier;->target:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_skip_item

    return-void

    :cond_skip_item
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_skip_program

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    if-eqz v0, :cond_skip_program

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$StrengthApplier;->target:I

    if-ne v0, v1, :cond_skip_program

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_skip_program
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method
