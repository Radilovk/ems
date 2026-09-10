.class public abstract Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field parameterType:Ljava/lang/reflect/Type;

.field targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    const/4 v4, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 453
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 454
    .local v2, "interfacesTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 455
    .local v1, "genericType":[Ljava/lang/reflect/Type;
    aget-object v3, v1, v4

    iput-object v3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    .line 456
    iget-object v3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->parameterType:Ljava/lang/reflect/Type;

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/reflect/Type;

    .prologue
    .line 458
    .local p0, "this":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;, "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;->targetType:Ljava/lang/reflect/Type;

    .line 460
    return-void
.end method


# virtual methods
.method public abstract httpResponse(ZLjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method
