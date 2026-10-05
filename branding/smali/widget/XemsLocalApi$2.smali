.class Lcom/isaigu/gymapp/widget/XemsLocalApi$2;
.super Ljava/lang/Object;
.source "XemsLocalApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalApi;->offline(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$2;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$2;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v1, 0x0

    const-string v2, "offline"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 214
    :goto_9
    return-void

    .line 211
    :catch_a
    move-exception v0

    .line 212
    const-string v1, "xems_local"

    const-string v2, "offline callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
