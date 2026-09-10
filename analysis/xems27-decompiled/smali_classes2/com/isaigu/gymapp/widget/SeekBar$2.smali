.class Lcom/isaigu/gymapp/widget/SeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeekBar.java"


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

    .line 352
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar$2;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$2;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$2;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->access$000(Lcom/isaigu/gymapp/widget/SeekBar;)Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar$2;->this$0:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->access$000(Lcom/isaigu/gymapp/widget/SeekBar;)Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method
