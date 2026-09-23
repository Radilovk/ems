.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayConnectListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 770
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 771
    if-eqz p1, :cond_9

    .line 772
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$600(Landroid/app/Activity;)V

    .line 774
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect()V

    .line 775
    const v0, 0x7f0d0182

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100(Landroid/app/Activity;I)V

    .line 776
    return-void
.end method
