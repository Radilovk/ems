.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameWatch"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 520
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 521
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$100()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 522
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$202(Z)Z

    .line 523
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    .line 525
    :cond_27
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 513
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 516
    return-void
.end method
