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

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1265
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_13

    .line 1267
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1300(Landroid/app/Activity;)V

    .line 1268
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1400(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    if-eqz v1, :cond_13

    .line 1270
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1281
    :goto_12
    return-void

    .line 1276
    :cond_13
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->fullReconnect(Landroid/app/Activity;)V

    .line 1277
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->startCalibration()V

    .line 1278
    const-string v1, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0435 \u0440\u0435\u0441\u0442\u0430\u0440\u0442\u0438\u0440\u0430 \u00b7 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 30 s"

    const-string v2, "Reconnecting the band \u00b7 30 s calibration"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1280
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$800()V

    goto :goto_12
.end method
