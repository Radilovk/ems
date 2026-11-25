.class final Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;
.super Ljava/lang/Object;
.source "VoiceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Usage"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;->a:Landroid/app/Activity;

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->ttsUsage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-nez v0, :cond_9

    .line 220
    :cond_8
    :goto_8
    return-void

    .line 210
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 211
    const-string v1, "used"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    const-string v2, "limit"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 214
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;->a:Landroid/app/Activity;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->noteUsage(Landroid/content/Context;II)V

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/ai/VoiceSettings$Show;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/VoiceSettings$Show;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_8

    .line 217
    :catch_41
    move-exception v0

    .line 218
    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
