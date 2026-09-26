.class final Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;
.super Ljava/lang/Object;
.source "BandAppInstall.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandAppInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Progress"
.end annotation


# instance fields
.field private final app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->app:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method public onDone(ZLjava/lang/String;)V
    .registers 6

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "ok "

    goto :goto_c

    :cond_a
    const-string v1, "failed "

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-eqz p1, :cond_46

    .line 259
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->app:Landroid/content/Context;

    const/16 p2, 0x3a

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppVersion(Landroid/content/Context;I)V

    .line 260
    const-string p1, "XEMS \u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2713"

    const-string p2, "XEMS is on the band \u2713"

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$200(Ljava/lang/String;)V

    .line 261
    # getter for: Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->app:Landroid/content/Context;

    const-string v1, "XEMS \u0435 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v2, "XEMS is installed on the band"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_65

    .line 264
    :cond_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u043c\u0438\u043d\u0430 ("

    const-string v1, "Install failed ("

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$200(Ljava/lang/String;)V

    .line 266
    :goto_65
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .registers 5

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026 "

    const-string v1, "Installing on the band\u2026 "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$200(Ljava/lang/String;)V

    .line 253
    return-void
.end method
