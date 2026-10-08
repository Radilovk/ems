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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 74
    return-void
.end method

.method private static hasCard(Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 115
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

    .line 116
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    const/4 v0, 0x1

    .line 115
    :cond_2f
    return v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsDossier;->isDemo(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 111
    :cond_a
    :goto_a
    return-void

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 83
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->hasCard(Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 84
    const-string v0, "report"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card skipped user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no e-mail / phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_a

    .line 108
    :catch_42
    move-exception v0

    .line 109
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

    goto :goto_a

    .line 87
    :cond_5c
    :try_start_5c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_a

    .line 91
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLang;->afterWebView(Landroid/app/Activity;)V

    .line 94
    const/16 v0, 0x500

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v2, 0x320

    const/high16 v3, 0x40000000    # 2.0f

    .line 95
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 94
    invoke-virtual {v6, v0, v2}, Landroid/webkit/WebView;->measure(II)V

    .line 96
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x500

    const/16 v4, 0x320

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V

    .line 97
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/wearable/ReportBridge;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ReportBridge;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/ReportBridge;->auto:Z

    .line 103
    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/ReportBridge;->setWebView(Landroid/webkit/WebView;)V

    .line 104
    const-string v1, "XemsReport"

    invoke-virtual {v6, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v0, "file:///android_asset/report/session-report.html"

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    # getter for: Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/CardPublisher;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;

    invoke-direct {v1, v6}, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
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
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_da} :catch_42

    goto/16 :goto_a
.end method
