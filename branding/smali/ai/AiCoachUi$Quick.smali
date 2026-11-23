.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;
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
    name = "Quick"
.end annotation


# instance fields
.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;->text:Ljava/lang/String;

    .line 498
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 502
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;->text:Ljava/lang/String;

    # getter for: Lcom/isaigu/gymapp/ai/AiCoachUi;->panelLive:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$200()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiCoachUi;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 504
    return-void
.end method
