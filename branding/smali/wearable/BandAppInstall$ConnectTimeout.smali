.class final Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;
.super Ljava/lang/Object;
.source "BandAppInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandAppInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectTimeout"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 198
    # getter for: Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1b

    # invokes: Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$100()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 199
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$002(Z)Z

    .line 200
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0430. \u0421\u043f\u0440\u0438 Mi Fitness / Notify / Gadgetbridge \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a"

    const-string v1, "The band did not connect. Force-stop Mi Fitness / Notify / Gadgetbridge and retry"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$200(Ljava/lang/String;)V

    .line 203
    :cond_1b
    return-void
.end method
