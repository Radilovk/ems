.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "JZVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 1230
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->post(Ljava/lang/Runnable;)Z

    .line 1245
    :cond_1
    return-void
.end method
