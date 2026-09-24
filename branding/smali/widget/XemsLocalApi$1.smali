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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$r:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$cb:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const/4 v1, 0x1

    const-string v2, ""

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$1;->val$r:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 283
    goto :goto_13

    .line 281
    :catchall_b
    move-exception v0

    .line 282
    const-string v1, "xems_local"

    const-string v2, "callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_13
    return-void
.end method
