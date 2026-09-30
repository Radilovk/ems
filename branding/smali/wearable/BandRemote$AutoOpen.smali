.class final Lcom/isaigu/gymapp/wearable/BandRemote$AutoOpen;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoOpen"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1011
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1e

    :cond_e
    const/4 v0, 0x1

    .line 1012
    :goto_f
    if-eqz v0, :cond_1d

    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->visSeen:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$200()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1020
    :cond_1d
    :goto_1d
    return-void

    .line 1011
    :cond_1e
    const/4 v0, 0x0

    goto :goto_f

    .line 1015
    :cond_20
    const-string v0, "remote"

    const-string v1, "auto-open band app"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v0, ""

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->launch(Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 1017
    :catch_2d
    move-exception v0

    .line 1018
    const-string v1, "BandRemote.autoOpen"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
