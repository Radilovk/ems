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

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 750
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect()V

    .line 751
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0d0182

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100(Landroid/app/Activity;I)V

    .line 752
    return-void
.end method
