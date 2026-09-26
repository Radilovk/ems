.class final Lcom/isaigu/gymapp/wearable/BandLaunch$Launched;
.super Ljava/lang/Object;
.source "BandLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Launched"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 112
    # getter for: Lcom/isaigu/gymapp/wearable/BandLaunch;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandLaunch;->access$100()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/BandLaunch;->timeout:Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandLaunch;->access$000()Lcom/isaigu/gymapp/wearable/BandLaunch$Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    const-string v0, "XEMS \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Opening XEMS on the band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->toast(Ljava/lang/String;)V

    .line 114
    return-void
.end method
