.class final Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;
.super Ljava/lang/Object;
.source "ImpulseMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ImpulseMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Lift"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/ImpulseMapView;)V
    .registers 2

    .prologue
    .line 509
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$000(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I

    move-result v0

    if-ltz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$100(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$000(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$100(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_26

    .line 525
    :cond_25
    :goto_25
    return-void

    .line 515
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # setter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$202(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    const/4 v1, 0x2

    # setter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$302(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I

    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # setter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$402(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$000(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I

    move-result v1

    # setter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$502(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I

    .line 519
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->performHapticFeedback(I)Z

    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$600(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$600(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    # getter for: Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->access$500(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;->onSelect(I)V

    .line 524
    :cond_67
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;->this$0:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    goto :goto_25
.end method
