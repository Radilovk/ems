.class Lcom/isaigu/gymapp/widget/XemsLocalApi$1;
.super Ljava/lang/Object;
.source "XemsLocalApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalApi;->answer(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

.field final synthetic val$r:Lcom/isaigu/gymapp/bean/vo/ResponseData;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$r:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v1, 0x1

    const-string v2, ""

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$r:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "xems_local"

    const-string v2, "callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
