.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Answer"
.end annotation


# instance fields
.field final index:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;->index:I

    .line 345
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 349
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 350
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$400()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;->index:I

    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$400()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_18

    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->busy:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$200()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 356
    :cond_18
    :goto_18
    return-void

    .line 353
    :cond_19
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->question:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$500()Ljava/lang/String;

    move-result-object v1

    .line 354
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->options:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$400()[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answer;->index:I

    aget-object v2, v0, v2

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->askedText:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->askedText:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$600()Ljava/lang/String;

    move-result-object v0

    :goto_33
    # invokes: Lcom/isaigu/gymapp/ai/AiBriefUi;->submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_37
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->text:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$700()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method
