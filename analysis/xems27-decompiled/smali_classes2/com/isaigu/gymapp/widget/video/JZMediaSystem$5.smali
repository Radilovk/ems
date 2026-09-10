.class Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;
.super Ljava/lang/Object;
.source "JZMediaSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    .line 196
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;->val$what:I

    iput p3, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;->val$what:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;->val$extra:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onError(II)V

    .line 202
    :cond_0
    return-void
.end method
