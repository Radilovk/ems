.class final Lcom/isaigu/gymapp/wearable/CardPublisher$Run;
.super Ljava/lang/Object;
.source "CardPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/CardPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Run"
.end annotation


# instance fields
.field final user:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 36
    return-void
.end method

.method private static hasCard(Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_2f

    const-string v2, "xems_client_cards"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 69
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    const/4 v0, 0x1

    .line 68
    :cond_2f
    return v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 42
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->hasCard(Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 64
    :cond_14
    :goto_14
    return-void

    .line 45
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_14

    .line 49
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 54
    new-instance v0, Lcom/isaigu/gymapp/wearable/ReportBridge;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ReportBridge;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/ReportBridge;->auto:Z

    .line 56
    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/ReportBridge;->setWebView(Landroid/webkit/WebView;)V

    .line 57
    const-string v1, "XemsReport"

    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v0, "file:///android_asset/report/session-report.html"

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    # getter for: Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/CardPublisher;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;

    invoke-direct {v1, v6}, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    const-string v0, "report"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card publish user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_74} :catch_75

    goto :goto_14

    .line 61
    :catch_75
    move-exception v0

    .line 62
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card publish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
