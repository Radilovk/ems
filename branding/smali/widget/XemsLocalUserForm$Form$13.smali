.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->repeat(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$delay:[J

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$step:Ljava/lang/Runnable;

.field final synthetic val$tick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;[JLandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 486
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$step:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$delay:[J

    iput-object p4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$h:Landroid/os/Handler;

    iput-object p5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$tick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 488
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    :pswitch_0
    return v4

    .line 490
    :pswitch_1
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$step:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$delay:[J

    const-wide/16 v2, 0x190

    aput-wide v2, v0, v5

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$tick:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$delay:[J

    aget-wide v2, v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 497
    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 498
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->val$tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
