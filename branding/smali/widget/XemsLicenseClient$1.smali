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

    .line 85
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 89
    const-string v0, "token"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$c:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->common(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\"key\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "POST"

    const-string v4, "/v1/license/activate"

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 91
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "ok"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 92
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$k:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    if-nez v0, :cond_61

    const/4 v3, 0x1

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    :goto_62
    if-nez v0, :cond_66

    const-string v0, "server"

    :cond_66
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 94
    goto :goto_79

    .line 95
    :cond_6a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v3, "error"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_7a

    .line 99
    :goto_79
    goto :goto_82

    .line 97
    :catchall_7a
    move-exception v0

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$1;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    const-string v2, "offline"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$000(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V

    .line 100
    :goto_82
    return-void
.end method
