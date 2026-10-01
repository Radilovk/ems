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

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;-><init>(Ljava/lang/reflect/Type;)V

    .line 215
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    .line 216
    iput p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->kind:I

    .line 217
    return-void
.end method

.method static wrap(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 222
    :try_start_1
    const-class v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    const-string v2, "targetType"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 223
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 225
    if-nez v0, :cond_17

    move-object v0, v1

    .line 228
    :goto_16
    return-object v0

    .line 225
    :cond_17
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;

    invoke-direct {v2, v0, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;-><init>(Ljava/lang/reflect/Type;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1e

    move-object v0, v2

    goto :goto_16

    .line 226
    :catch_1e
    move-exception v0

    .line 227
    const-string v2, "xems_local"

    const-string v3, "cloud merge"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 228
    goto :goto_16
.end method


# virtual methods
.method public httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    if-eqz p1, :cond_1d

    :try_start_3
    instance-of v1, p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    if-eqz v1, :cond_1d

    .line 237
    check-cast p3, Lcom/isaigu/gymapp/bean/vo/ResponseData;

    .line 238
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1d

    .line 239
    invoke-virtual {p3}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    :cond_1d
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 243
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 244
    if-eqz v0, :cond_2a

    .line 245
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudUsers(Ljava/util/List;)V

    .line 247
    :cond_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerUsers(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 258
    :goto_2f
    return-void

    .line 249
    :cond_30
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 250
    if-eqz v0, :cond_38

    .line 251
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->mergeCloudPrograms(Ljava/util/List;)V

    .line 253
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalApi$CloudMerge;->original:Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->answerPrograms(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3d} :catch_3e

    goto :goto_2f

    .line 255
    :catch_3e
    move-exception v0

    .line 256
    const-string v1, "xems_local"

    const-string v2, "cloud merge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method
