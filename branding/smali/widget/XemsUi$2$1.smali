.class Lcom/isaigu/gymapp/widget/XemsUi$2$1;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsUi$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$2;)V
    .registers 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    # operator++ for: Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi$2;->access$008(Lcom/isaigu/gymapp/widget/XemsUi$2;)I

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    iget v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$dir:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$OnStep;->onStep(I)V

    .line 431
    # getter for: Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsUi;->access$100()Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    # getter for: Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi$2;->access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_23

    const-wide/16 v0, 0x8c

    :goto_1f
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void

    .line 431
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    # getter for: Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi$2;->access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_30

    const-wide/16 v0, 0x46

    goto :goto_1f

    :cond_30
    const-wide/16 v0, 0x23

    goto :goto_1f
.end method
