.class final Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;
.super Ljava/lang/Object;
.source "XemsDossier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsDossier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PushRun"
.end annotation


# instance fields
.field final out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/widget/XemsDossier$Out;",
            ">;"
        }
    .end annotation
.end field

.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/widget/XemsDossier$Out;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->token:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    .line 205
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 209
    .line 211
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/isaigu/gymapp/widget/XemsDossier;->app:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"token\":"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"clients\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v1, v2

    .line 213
    :goto_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 214
    if-lez v1, :cond_4c

    const-string v0, ","

    :goto_37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->json:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 214
    :cond_4c
    const-string v0, ""

    goto :goto_37

    .line 216
    :cond_4f
    const-string v0, "]}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "POST"

    const-string v4, "/v1/clients"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 219
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 220
    const-string v1, "ids"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v0, v2

    .line 221
    :goto_79
    if-eqz v1, :cond_99

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_99

    .line 222
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_96

    .line 224
    const-string v5, "key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 227
    :cond_99
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move v3, v2

    .line 228
    :goto_a2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_181

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;

    .line 230
    iget-boolean v1, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->deleted:Z

    if-eqz v1, :cond_104

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    :goto_100
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a2

    .line 234
    :cond_104
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    if-eqz v1, :cond_12c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12c

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    :cond_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "h"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->hash:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_163} :catch_164
    .catchall {:try_start_1 .. :try_end_163} :catchall_1ab

    goto :goto_100

    .line 243
    :catch_164
    move-exception v0

    .line 244
    :try_start_165
    const-string v1, "xems_dossier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_165 .. :try_end_17d} :catchall_1ab

    .line 246
    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->pushing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$002(Z)Z

    .line 253
    :cond_180
    :goto_180
    return-void

    .line 240
    :cond_181
    :try_start_181
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_184} :catch_164
    .catchall {:try_start_181 .. :try_end_184} :catchall_1ab

    .line 241
    const/4 v0, 0x1

    .line 246
    :goto_185
    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->pushing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$002(Z)Z

    .line 248
    if-eqz v0, :cond_180

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_19a

    # getter for: Lcom/isaigu/gymapp/widget/XemsDossier;->queued:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 249
    :cond_19a
    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->queued:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$102(Z)Z

    .line 250
    # getter for: Lcom/isaigu/gymapp/widget/XemsDossier;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/widget/XemsDossier;->PUSH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$300()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_180

    .line 246
    :catchall_1ab
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->pushing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$002(Z)Z

    .line 252
    throw v0

    :cond_1b0
    move v0, v2

    goto :goto_185
.end method
