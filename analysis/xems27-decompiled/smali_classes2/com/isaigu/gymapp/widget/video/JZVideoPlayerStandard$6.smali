.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;
.super Ljava/lang/Object;
.source "JZVideoPlayerStandard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dissmissControlView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    .line 904
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 916
    return-void
.end method
