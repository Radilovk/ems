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
.field private final status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->status:Landroid/widget/TextView;

    .line 84
    return-void
.end method

.method private post(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 100
    # getter for: Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->status:Landroid/widget/TextView;

    invoke-direct {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method


# virtual methods
.method public onDone(ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 93
    const-string v1, "install"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_28

    const-string v0, "ok "

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_2b

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e: XEMS \u0435 \u0432 \u0441\u043f\u0438\u0441\u044a\u043a\u0430 \u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Done: XEMS is in the band\'s app list"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->post(Ljava/lang/String;)V

    .line 97
    return-void

    .line 93
    :cond_28
    const-string v0, "failed "

    goto :goto_b

    .line 96
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0435\u0443\u0441\u043f\u0435\u0445 ("

    const-string v2, "Failed ("

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public onProgress(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435\u2026 "

    const-string v2, "Installing\u2026 "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;->post(Ljava/lang/String;)V

    .line 89
    return-void
.end method
