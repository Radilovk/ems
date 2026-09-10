.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;
.super Ljava/lang/Object;
.source "JZVideoPlayerManager.java"


# static fields
.field public static FIRST_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

.field public static SECOND_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeAll()V
    .locals 2

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onCompletion()V

    .line 40
    sput-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 42
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onCompletion()V

    .line 44
    sput-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 46
    :cond_1
    return-void
.end method

.method public static getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .locals 1

    .line 31
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .locals 1

    .line 15
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    return-object v0
.end method

.method public static getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .locals 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    return-object v0
.end method

.method public static setFirstFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V
    .locals 0
    .param p0, "jzVideoPlayer"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 19
    sput-object p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 20
    return-void
.end method

.method public static setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V
    .locals 0
    .param p0, "jzVideoPlayer"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 27
    sput-object p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 28
    return-void
.end method
