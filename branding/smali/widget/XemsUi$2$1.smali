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

    .line 426
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

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

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    # getter for: Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi$2;->access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_20

    const-wide/16 v1, 0x8c

    goto :goto_2f

    :cond_20
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsUi$2;

    # getter for: Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi$2;->access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2d

    const-wide/16 v1, 0x46

    goto :goto_2f

    :cond_2d
    const-wide/16 v1, 0x23

    :goto_2f
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method
