.class final Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;
.super Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.source "XemsLocalApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloudMerge"
.end annotation


# static fields
.field static final PROGRAMS:I = 0x2

.field static final USERS:I = 0x1


# instance fields
.field private final kind:I

.field private final original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>(Ljava/lang/reflect/Type;)V

    .line 220
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    .line 221
    iput p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->kind:I

    .line 222
    return-void
.end method

.method static wrap(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 227
    :try_start_0
    const-class v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const-string v2, "targetType"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 230
    if-nez v0, :cond_0

    move-object v0, v1

    .line 233
    :goto_0
    return-object v0

    .line 230
    :cond_0
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;

    invoke-direct {v2, v0, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;-><init>(Ljava/lang/reflect/Type;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v2, "xems_local"

    const-string v3, "cloud merge"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 233
    goto :goto_0
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    if-eqz v1, :cond_0

    .line 242
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 243
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 247
    :cond_0
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 249
    if-eqz v0, :cond_1

    .line 250
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudUsers(Ljava/util/List;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 263
    :goto_0
    return-void

    .line 254
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 255
    if-eqz v0, :cond_3

    .line 256
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudPrograms(Ljava/util/List;)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "xems_local"

    const-string v2, "cloud merge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
