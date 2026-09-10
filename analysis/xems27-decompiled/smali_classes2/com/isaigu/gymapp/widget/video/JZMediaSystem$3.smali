.class Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;
.super Ljava/lang/Object;
.source "JZMediaSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    .line 167
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;->val$percent:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setBufferProgress(I)V

    .line 173
    :cond_0
    return-void
.end method
