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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appCode(Landroid/content/Context;)I

    move-result v2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v1/app/update?app=xems&channel=stable&code="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&device_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->parseFlat(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 161
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;-><init>()V

    .line 162
    const-string v4, "version_code"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->num(Ljava/lang/Object;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    .line 163
    const-string v4, "version_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    .line 164
    const-string v4, "url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    .line 165
    const-string v4, "sha256"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->sha256:Ljava/lang/String;

    .line 166
    const-string v4, "notes"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    .line 167
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "mandatory"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    .line 168
    iget v3, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-le v3, v2, :cond_0

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->url:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v3, v2

    .line 169
    :goto_0
    if-eqz v3, :cond_1

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$202(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    .line 170
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    if-eqz v3, :cond_2

    :goto_2
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_3
    return-void

    .line 168
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 169
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    const-string v2, "offline"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->access$300(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    goto :goto_3
.end method
