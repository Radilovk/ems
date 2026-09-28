.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;
.super Landroid/webkit/WebViewClient;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiWebClient"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;)V
    .registers 2

    .prologue
    .line 1337
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1338
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    .line 1339
    return-void
.end method

.method static injectHook(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 1348
    :try_start_0
    const-string v0, "(function(){if(window.__xh)return;window.__xh=1;function rep(t){try{if(t&&String(t).indexOf(\'ssecurity\')>=0)XemsX.report(String(t));}catch(e){}}var o=XMLHttpRequest.prototype.send;XMLHttpRequest.prototype.send=function(){var x=this;x.addEventListener(\'load\',function(){try{rep(x.responseText);}catch(e){}});return o.apply(this,arguments);};if(window.fetch){var f=window.fetch;window.fetch=function(){return f.apply(this,arguments).then(function(r){try{r.clone().text().then(rep);}catch(e){}return r;});};}})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 1351
    :goto_6
    return-void

    .line 1349
    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1355
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->injectHook(Landroid/webkit/WebView;)V

    .line 1357
    :try_start_3
    const-string v0, "(function(){var t=document.body?document.body.innerText:\'\';if(t.indexOf(\'ssecurity\')>=0)XemsX.report(t);})()"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_1d

    .line 1361
    :goto_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->isProbe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1362
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->readProbe()V

    .line 1366
    :goto_16
    return-void

    .line 1364
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebLogin;->check()V

    goto :goto_16

    .line 1359
    :catch_1d
    move-exception v0

    goto :goto_9
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 1343
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiWebClient;->injectHook(Landroid/webkit/WebView;)V

    .line 1344
    return-void
.end method
