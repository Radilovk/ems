.class Lcom/isaigu/gymapp/widget/video/JZMediaSystem$2;
.super Ljava/lang/Object;
.source "JZMediaSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    .line 155
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAutoCompletion()V

    .line 161
    :cond_0
    return-void
.end method
