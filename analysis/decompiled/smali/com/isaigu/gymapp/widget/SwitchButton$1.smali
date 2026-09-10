.class Lcom/isaigu/gymapp/widget/SwitchButton$1;
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

    .prologue
    .line 225
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton$1;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton$1;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->access$002(Lcom/isaigu/gymapp/widget/SwitchButton;F)F

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$1;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->postInvalidate()V

    .line 229
    return-void
.end method
