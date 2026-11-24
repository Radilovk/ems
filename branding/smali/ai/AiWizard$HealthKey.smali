.class final Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HealthKey"
.end annotation


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;->key:Ljava/lang/String;

    .line 649
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 653
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 654
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->toggleHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 656
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->refreshHealth()V

    .line 657
    return-void
.end method
