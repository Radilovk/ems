.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 157
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$c:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v1/app/update?app=xems&channel=stable&code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&device_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, "GET"

    invoke-static {v3, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 161
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;-><init>()V

    .line 162
    const-string v4, "version_code"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    .line 163
    const-string v4, "version_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    .line 164
    const-string v4, "url"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    .line 165
    const-string v4, "sha256"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    .line 166
    const-string v4, "notes"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    .line 167
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "mandatory"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    .line 168
    iget v2, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-le v2, v1, :cond_98

    iget-object v1, v3, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    const/4 v1, 0x1

    goto :goto_99

    :cond_98
    const/4 v1, 0x0

    .line 169
    :goto_99
    if-eqz v1, :cond_9d

    move-object v2, v3

    goto :goto_9e

    :cond_9d
    move-object v2, v0

    :goto_9e
    # setter for: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$202(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    .line 170
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    if-eqz v1, :cond_a6

    goto :goto_a7

    :cond_a6
    move-object v3, v0

    :goto_a7
    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ab

    .line 173
    goto :goto_b3

    .line 171
    :catchall_ab
    move-exception v1

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    const-string v2, "offline"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    .line 174
    :goto_b3
    return-void
.end method
