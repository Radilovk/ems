.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->activate(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

.field final synthetic val$k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$c:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",\"key\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v3, "POST"

    const-string v4, "/v1/license/activate"

    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "token"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 96
    const-string v0, "setup"

    const-string v3, "phase"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "setup_code"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    move v3, v1

    .line 98
    :goto_70
    if-eqz v3, :cond_a7

    const/4 v0, 0x0

    :goto_73
    const-string v5, "token"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_97

    .line 100
    const-string v5, "phase"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyPhase(Ljava/lang/Object;)V

    .line 101
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$c:Landroid/content/Context;

    const-string v6, "studio"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->saveStudio(Landroid/content/Context;Ljava/lang/Object;)V

    .line 103
    :cond_97
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-nez v0, :cond_aa

    :goto_9b
    if-nez v0, :cond_a1

    if-eqz v3, :cond_ac

    const-string v0, "setup"

    :cond_a1
    :goto_a1
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v4, v1, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 110
    :goto_a4
    return-void

    :cond_a5
    move v3, v2

    .line 96
    goto :goto_70

    .line 98
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    goto :goto_73

    :cond_aa
    move v1, v2

    .line 103
    goto :goto_9b

    :cond_ac
    const-string v0, "server"

    goto :goto_a1

    .line 105
    :cond_af
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const/4 v1, 0x0

    const-string v3, "error"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_bf} :catch_c0

    goto :goto_a4

    .line 107
    :catch_c0
    move-exception v0

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v1, "offline"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    goto :goto_a4
.end method
