.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;->which:I

    .line 417
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;->which:I

    packed-switch v0, :pswitch_data_76

    .line 445
    if-nez p1, :cond_70

    .line 446
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 447
    # setter for: Lcom/isaigu/gymapp/ai/AiCoachUi;->healthOpen:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$102(Z)Z

    .line 453
    :cond_12
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->rerender()V

    .line 454
    return-void

    .line 424
    :pswitch_16
    if-nez p1, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1a
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 425
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_12

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v2, :cond_12

    .line 426
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_12

    .line 424
    :cond_2d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_1a

    .line 430
    :pswitch_30
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->experience(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V

    goto :goto_12

    .line 433
    :pswitch_34
    # invokes: Lcom/isaigu/gymapp/ai/AiCoachUi;->goalsFor(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$000(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    .line 434
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 435
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 436
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 437
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    :goto_60
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_12

    :cond_63
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_60

    .line 442
    :pswitch_66
    if-nez p1, :cond_6d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    :goto_6a
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_12

    :cond_6d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_6a

    .line 449
    :cond_70
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/AiCoachUi;->healthOpen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$102(Z)Z

    goto :goto_12

    .line 422
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_16
        :pswitch_30
        :pswitch_34
        :pswitch_66
    .end packed-switch
.end method
