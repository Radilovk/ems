.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;
.super Ljava/lang/Object;
.source "JZVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    .line 1239
    .local v2, "position":J
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v4

    .line 1240
    .local v4, "duration":J
    const-wide/16 v6, 0x64

    mul-long v8, v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const-wide/16 v6, 0x1

    :goto_0
    div-long v6, v8, v6

    long-to-int v1, v6

    .line 1241
    .local v1, "progress":I
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setProgressAndText(IJJ)V

    .line 1242
    return-void

    .end local v1    # "progress":I
    :cond_0
    move-wide v6, v4

    .line 1240
    goto :goto_0
.end method
