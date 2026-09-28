.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoRun"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;->c:Landroid/content/Context;

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    .line 179
    const-wide/32 v0, 0x1499700

    .line 181
    :try_start_6
    const-string v4, "POST"

    const-string v5, "/v1/license/auto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 182
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "ok"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    const-string v5, "token"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8b

    const/4 v5, 0x0

    const-string v6, "token"

    .line 184
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8b

    .line 185
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$AutoRun;->c:Landroid/content/Context;

    const-string v6, "studio"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->saveStudio(Landroid/content/Context;Ljava/lang/Object;)V

    .line 186
    const-string v5, "locked"

    const-string v6, "phase"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->finishSetup()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_7e} :catch_a9
    .catchall {:try_start_6 .. :try_end_7e} :catchall_cb

    .line 190
    :cond_7e
    :try_start_7e
    # getter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$LicenseChanged;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$LicenseChanged;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_8a} :catch_a9
    .catchall {:try_start_7e .. :try_end_8a} :catchall_eb

    move-wide v0, v2

    .line 195
    :cond_8b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "auto_next"

    cmp-long v6, v0, v2

    if-lez v6, :cond_9e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_9e
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$302(Z)Z

    .line 198
    :goto_a8
    return-void

    .line 192
    :catch_a9
    move-exception v0

    .line 193
    const-wide/32 v0, 0x927c0

    .line 195
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "auto_next"

    cmp-long v6, v0, v2

    if-lez v6, :cond_c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_c0
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$302(Z)Z

    goto :goto_a8

    .line 195
    :catchall_cb
    move-exception v4

    move-wide v6, v0

    :goto_cd
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_next"

    cmp-long v5, v6, v2

    if-lez v5, :cond_e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    :cond_e0
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoRunning:Z
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$302(Z)Z

    .line 197
    throw v4

    .line 195
    :catchall_eb
    move-exception v0

    move-object v4, v0

    move-wide v6, v2

    goto :goto_cd
.end method
