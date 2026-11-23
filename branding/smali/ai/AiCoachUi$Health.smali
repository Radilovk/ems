.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Health;
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
    name = "Health"
.end annotation


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;->key:Ljava/lang/String;

    .line 483
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 487
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->toggleHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->rerender()V

    .line 490
    return-void
.end method
