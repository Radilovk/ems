.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;
.super Ljava/util/TimerTask;
.source "JZVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissControlViewTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    .line 921
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dissmissControlView()V

    .line 926
    return-void
.end method
