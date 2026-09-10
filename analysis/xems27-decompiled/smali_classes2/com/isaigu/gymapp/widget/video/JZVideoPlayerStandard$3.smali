.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;
.super Ljava/lang/Object;
.source "JZVideoPlayerStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->showWifiDialog()V
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

    .line 408
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startVideo()V

    .line 414
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    .line 415
    return-void
.end method
