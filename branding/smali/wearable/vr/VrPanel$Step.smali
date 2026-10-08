.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Step;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 431
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$800()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v1

    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setFloorPercent(Landroid/content/Context;I)V

    .line 432
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$500()Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 433
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$500()Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v3, "of the trainer\'s strength"

    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_3a
    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->updateReset()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$1100()V

    .line 436
    return-void
.end method
