.class final Lcom/isaigu/gymapp/ai/WakeSetup$Shown;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Shown"
.end annotation


# instance fields
.field final pct:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Shown;->pct:I

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 299
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4d

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 300
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0423\u0447\u0430 \u0433\u043b\u0430\u0441\u0430 \u0442\u0438\u2026 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Shown;->pct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Learning your voice\u2026 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Shown;->pct:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_4d
    return-void
.end method
