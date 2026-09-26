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

    .line 119
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 123
    const-string v0, "error"

    const-string v1, "token"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$2;->val$c:Landroid/content/Context;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\"token\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v4, "POST"

    const-string v5, "/v1/license/refresh"

    invoke-static {v4, v5, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 125
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "ok"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 126
    const/4 v0, 0x0

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_80

    .line 127
    :cond_5e
    const-string v1, "revoked"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "unknown"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_7b

    .line 130
    :cond_77
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->markChecked()V

    goto :goto_80

    .line 128
    :cond_7b
    :goto_7b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->revoke()V
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_7f

    goto :goto_80

    .line 132
    :catchall_7f
    move-exception v0

    .line 135
    :goto_80
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$102(Z)Z

    .line 136
    nop

    .line 137
    return-void
.end method
