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

    .line 1235
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1238
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v7

    .line 1239
    .local v7, "position":J
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v9

    .line 1240
    .local v9, "duration":J
    const-wide/16 v0, 0x64

    mul-long v0, v0, v7

    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    move-wide v2, v9

    :goto_0
    div-long/2addr v0, v2

    long-to-int v11, v0

    .line 1241
    .local v11, "progress":I
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move v2, v11

    move-wide v3, v7

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setProgressAndText(IJJ)V

    .line 1242
    return-void
.end method
