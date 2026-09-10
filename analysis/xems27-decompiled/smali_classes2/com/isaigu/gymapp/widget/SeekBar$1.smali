.class Lcom/isaigu/gymapp/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/SeekBar;->materialRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/SeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/SeekBar;

    .line 345
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar$1;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$1;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$1;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->access$000(Lcom/isaigu/gymapp/widget/SeekBar;)Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$1;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->access$000(Lcom/isaigu/gymapp/widget/SeekBar;)Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 350
    :cond_0
    return-void
.end method
