.class Lcom/isaigu/gymapp/widget/SwitchButton$2;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 233
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton$2;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$2;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->access$102(Lcom/isaigu/gymapp/widget/SwitchButton;I)I

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$2;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->access$200(Lcom/isaigu/gymapp/widget/SwitchButton;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton$2;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->access$100(Lcom/isaigu/gymapp/widget/SwitchButton;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$2;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->postInvalidate()V

    .line 238
    return-void
.end method
