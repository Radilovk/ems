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
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;->token:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 147
    :try_start_1
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "since"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 148
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

    .line 149
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

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "POST"

    const-string v3, "/v1/inbox"

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v0, "ok"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5e} :catch_a2
    .catchall {:try_start_1 .. :try_end_5e} :catchall_bf

    move-result v0

    if-nez v0, :cond_65

    .line 163
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 165
    :goto_64
    return-void

    .line 155
    :cond_65
    :try_start_65
    const-string v0, "items"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 156
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$100()Landroid/content/Context;

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

    .line 157
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9e

    .line 158
    # getter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;

    const-string v4, "more"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;-><init>(Lorg/json/JSONArray;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_9e} :catch_a2
    .catchall {:try_start_65 .. :try_end_9e} :catchall_bf

    .line 163
    :cond_9e
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    goto :goto_64

    .line 160
    :catch_a2
    move-exception v0

    .line 161
    :try_start_a3
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
    :try_end_bb
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_bf

    .line 163
    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    goto :goto_64

    :catchall_bf
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$202(Z)Z

    .line 164
    throw v0
.end method
