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
    .line 113
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 117
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

    .line 118
    const-string v1, "POST"

    const-string v2, "/v1/license/refresh"

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 119
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ok"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 120
    const/4 v1, 0x0

    const-string v2, "token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_62} :catch_86
    .catchall {:try_start_1 .. :try_end_62} :catchall_8f

    .line 129
    :goto_62
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    .line 131
    :goto_65
    return-void

    .line 121
    :cond_66
    :try_start_66
    const-string v1, "revoked"

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "unknown"

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 122
    :cond_82
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->revoke()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_85} :catch_86
    .catchall {:try_start_66 .. :try_end_85} :catchall_8f

    goto :goto_62

    .line 126
    :catch_86
    move-exception v0

    .line 129
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    goto :goto_65

    .line 124
    :cond_8b
    :try_start_8b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->markChecked()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8e} :catch_86
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_62

    .line 129
    :catchall_8f
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    .line 130
    throw v0
.end method
