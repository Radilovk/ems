.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;
.super Ljava/lang/Object;
.source "JZVideoPlayerStandard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 424
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 427
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 428
    return-void
.end method
