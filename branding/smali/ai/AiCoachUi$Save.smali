.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Save;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Save"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 558
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->coachUserId()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AiProfile;->addCond(Landroid/content/Context;JLjava/util/Set;)V

    .line 560
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->savedLearned()V

    .line 561
    const-string v0, "\u0437\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v1, "saved to the profile"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    # invokes: Lcom/isaigu/gymapp/ai/AiCoachUi;->refreshPanel()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$500()V

    .line 563
    return-void
.end method
