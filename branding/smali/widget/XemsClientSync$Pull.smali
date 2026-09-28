.class final Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;
.super Ljava/lang/Object;
.source "XemsClientSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsClientSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pull"
.end annotation


# instance fields
.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;->token:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 153
    :try_start_1
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "since"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"token\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;->token:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"device_id\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"since\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->pullField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "POST"

    const-string v3, "/v1/inbox"

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v0, "ok"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_66} :catch_ea
    .catchall {:try_start_1 .. :try_end_66} :catchall_11e

    move-result v0

    if-nez v0, :cond_83

    .line 172
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 173
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$300()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 174
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_82
    :goto_82
    return-void

    .line 161
    :cond_83
    :try_start_83
    const-string v0, "items"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 162
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "okAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_bc

    .line 164
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;

    const-string v4, "more"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;-><init>(Lorg/json/JSONArray;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_bc
    const-string v0, "clients"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 167
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_d0} :catch_ea
    .catchall {:try_start_83 .. :try_end_d0} :catchall_11e

    .line 172
    :cond_d0
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 173
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$300()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 174
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_82

    .line 169
    :catch_ea
    move-exception v0

    .line 170
    :try_start_eb
    const-string v1, "xems_sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_eb .. :try_end_103} :catchall_11e

    .line 172
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 173
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$300()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 174
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_82

    .line 172
    :catchall_11e
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 173
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$300()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 174
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$400()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_138
    throw v0
.end method
