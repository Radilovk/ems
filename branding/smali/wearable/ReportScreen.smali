.class public final Lcom/isaigu/gymapp/wearable/ReportScreen;
.super Ljava/lang/Object;
.source "ReportScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;
    }
.end annotation


# static fields
.field static final PAGE:Ljava/lang/String; = "file:///android_asset/report/session-report.html"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V

    .line 25
    return-void
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/Object;J)V
    .registers 14

    .prologue
    .line 29
    if-eqz p0, :cond_6

    :try_start_2
    instance-of v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v2, :cond_7

    .line 55
    :cond_6
    :goto_6
    return-void

    .line 32
    :cond_7
    new-instance v4, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v4, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ReportBridge;->isDark()Z

    move-result v2

    if-eqz v2, :cond_84

    const v2, -0xf4f2ef

    :goto_1d
    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 35
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 36
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 38
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 41
    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge;

    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v5, v0

    move-object v3, p0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/ReportBridge;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V

    .line 42
    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/wearable/ReportBridge;->setWebView(Landroid/webkit/WebView;)V

    .line 43
    const-string v3, "XemsReport"

    invoke-virtual {v8, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v2, "file:///android_asset/report/session-report.html"

    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 50
    new-instance v3, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;

    invoke-direct {v3, v8, p0, v2}, Lcom/isaigu/gymapp/wearable/ReportScreen$Cleanup;-><init>(Landroid/webkit/WebView;Landroid/app/Activity;I)V

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_69} :catch_6a

    goto :goto_6

    .line 52
    :catch_6a
    move-exception v2

    .line 53
    const-string v3, "report"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 34
    :cond_84
    const v2, -0x110e0b

    goto :goto_1d
.end method
