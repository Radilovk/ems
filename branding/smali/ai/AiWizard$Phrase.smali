.class final Lcom/isaigu/gymapp/ai/AiWizard$Phrase;
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
    name = "Phrase"
.end annotation


# instance fields
.field final phrase:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;->phrase:Ljava/lang/String;

    .line 987
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 991
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 992
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 993
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;->phrase:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->addToDraft(Ljava/lang/String;)V

    .line 997
    :goto_d
    return-void

    .line 996
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;->phrase:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_d
.end method
