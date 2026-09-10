.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;
.super Landroid/content/BroadcastReceiver;
.source "JZVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;
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

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    const-string v2, "level"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    .local v2, "scale":I
    mul-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v2

    .line 84
    .local v3, "percent":I
    sput v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    .line 85
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setBatteryLevel()V

    .line 86
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->access$000(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    .end local v1    # "level":I
    .end local v2    # "scale":I
    .end local v3    # "percent":I
    :cond_0
    return-void
.end method
