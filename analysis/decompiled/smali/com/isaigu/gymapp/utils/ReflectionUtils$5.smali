.class final Lcom/isaigu/gymapp/utils/ReflectionUtils$5;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/ReflectionUtils;->getUniqueDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$methods:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWith(Ljava/lang/reflect/Method;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "knownSignature":Z
    const/4 v2, 0x0

    .line 357
    .local v2, "methodBeingOverriddenWithCovariantReturnType":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 359
    .local v3, "var4":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 361
    .local v0, "existingMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 363
    move-object v2, v0

    .line 372
    .end local v0    # "existingMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 373
    iget-object v4, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->isCglibRenamedMethod(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;->val$methods:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_3
    return-void

    .line 367
    .restart local v0    # "existingMethod":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v1, 0x1

    .line 368
    goto :goto_0
.end method
