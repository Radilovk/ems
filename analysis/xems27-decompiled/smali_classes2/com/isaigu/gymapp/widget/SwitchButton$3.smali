.class Lcom/isaigu/gymapp/widget/SwitchButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwitchButton.java"


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

    .line 244
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton$3;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$3;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setClickable(Z)V

    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton$3;->this$0:Lcom/isaigu/gymapp/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setClickable(Z)V

    .line 248
    return-void
.end method
