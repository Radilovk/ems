.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshIfDue(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 123
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"token\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "POST"

    const-string v2, "/v1/license/refresh"

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 125
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 126
    const/4 v1, 0x0

    const-string v2, "token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    const-string v1, "studio"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_94

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[2-9a-km-z]{8}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 129
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "xems_client_sync"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "studio"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_94} :catch_b8
    .catchall {:try_start_1 .. :try_end_94} :catchall_c1

    .line 140
    :cond_94
    :goto_94
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    .line 142
    :goto_97
    return-void

    .line 132
    :cond_98
    :try_start_98
    const-string v1, "revoked"

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    const-string v1, "unknown"

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 133
    :cond_b4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->revoke()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_b7} :catch_b8
    .catchall {:try_start_98 .. :try_end_b7} :catchall_c1

    goto :goto_94

    .line 137
    :catch_b8
    move-exception v0

    .line 140
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    goto :goto_97

    .line 135
    :cond_bd
    :try_start_bd
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->markChecked()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_b8
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_94

    .line 140
    :catchall_c1
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    .line 141
    throw v0
.end method
