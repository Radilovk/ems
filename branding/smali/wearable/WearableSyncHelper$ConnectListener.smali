.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;
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
    name = "ConnectListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 907
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 908
    if-eqz p1, :cond_13

    .line 909
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1000(Landroid/app/Activity;)V

    .line 910
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1100(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_13

    .line 912
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 913
    return-void

    .line 916
    :cond_13
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 917
    const v0, 0x7f0d0182

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/app/Activity;I)V

    .line 918
    return-void
.end method
