.class final Lcom/isaigu/gymapp/utils/TimerUtils$1;
.super Ljava/util/TimerTask;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/Timer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/TimerUtils$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/isaigu/gymapp/utils/TimerUtils$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/TimerUtils$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/TimerUtils$1;->val$timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 23
    return-void
.end method
