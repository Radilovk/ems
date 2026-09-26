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
    .registers 4

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
    .registers 5

    .line 227
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const-string v2, "targetType"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 228
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 230
    if-nez v1, :cond_16

    goto :goto_1c

    :cond_16
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;

    invoke-direct {v2, v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;-><init>(Ljava/lang/reflect/Type;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    move-object v0, v2

    :goto_1c
    return-object v0

    .line 231
    :catchall_1d
    move-exception p0

    .line 232
    const-string p1, "xems_local"

    const-string v1, "cloud merge"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return-object v0
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 240
    const/4 p2, 0x0

    .line 241
    if-eqz p1, :cond_1e

    :try_start_3
    instance-of p1, p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    if-eqz p1, :cond_1e

    .line 242
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 243
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/util/List;

    if-eqz p1, :cond_1e

    .line 244
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    .line 247
    :cond_1e
    iget p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->kind:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_31

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 249
    if-eqz p2, :cond_2b

    .line 250
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudUsers(Ljava/util/List;)V

    .line 252
    :cond_2b
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_3e

    .line 254
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 255
    if-eqz p2, :cond_39

    .line 256
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudPrograms(Ljava/util/List;)V

    .line 258
    :cond_39
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3f

    .line 262
    :goto_3e
    goto :goto_47

    .line 260
    :catchall_3f
    move-exception p1

    .line 261
    const-string p2, "xems_local"

    const-string p3, "cloud merge"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    :goto_47
    return-void
.end method
