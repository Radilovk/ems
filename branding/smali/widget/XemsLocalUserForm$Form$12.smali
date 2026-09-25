.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;[JLandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 479
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$step:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$delay:[J

    iput-object p4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$step:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$delay:[J

    const-wide/16 v2, 0x28

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$delay:[J

    aget-wide v4, v1, v8

    const-wide/16 v6, 0x3c

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v0, v8

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$delay:[J

    aget-wide v2, v1, v8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    return-void
.end method
