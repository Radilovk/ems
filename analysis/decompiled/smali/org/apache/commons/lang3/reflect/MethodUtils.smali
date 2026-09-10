.class public Lorg/apache/commons/lang3/reflect/MethodUtils;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static distance([Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "toClassArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 767
    const/4 v0, 0x0

    .line 769
    .local v0, "answer":I
    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 770
    const/4 v3, -0x1

    move v1, v0

    .line 784
    .end local v0    # "answer":I
    .local v1, "answer":I
    :goto_0
    return v3

    .line 772
    .end local v1    # "answer":I
    .restart local v0    # "answer":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 774
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 772
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 776
    :cond_1
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4, v6}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    const/4 v5, 0x0

    .line 777
    invoke-static {v3, v4, v5}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 780
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    move v1, v0

    .end local v0    # "answer":I
    .restart local v1    # "answer":I
    move v3, v0

    .line 784
    goto :goto_0
.end method

.method public static varargs getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    :goto_0
    return-object v1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 554
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    const/4 p0, 0x0

    .line 574
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0

    .line 558
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 559
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 566
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 570
    if-nez p0, :cond_0

    .line 571
    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_3

    .line 624
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 625
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 627
    .local v0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 632
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 648
    .end local v0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_2
    return-object v2

    .line 634
    .restart local v0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 641
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 643
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    goto :goto_2

    .line 621
    .end local v0    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 648
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static varargs getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 590
    .local v1, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 600
    :cond_0
    :goto_1
    return-object v2

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 598
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 988
    const/4 v2, 0x0

    .line 1012
    :cond_0
    return-object v2

    .line 991
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v2, "allSuperClassesAndInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 993
    .local v3, "allSuperclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v6, 0x0

    .line 994
    .local v6, "superClassIndex":I
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 995
    .local v1, "allInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v4, 0x0

    .line 996
    .local v4, "interfaceIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 997
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 999
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 1000
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "superClassIndex":I
    .local v7, "superClassIndex":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v6, v7

    .line 1010
    .end local v7    # "superClassIndex":I
    .restart local v6    # "superClassIndex":I
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_4

    .line 1002
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "interfaceIndex":I
    .local v5, "interfaceIndex":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .restart local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v4, v5

    .end local v5    # "interfaceIndex":I
    .restart local v4    # "interfaceIndex":I
    goto :goto_1

    .line 1003
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-ge v4, v6, :cond_5

    .line 1004
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "interfaceIndex":I
    .restart local v5    # "interfaceIndex":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .restart local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v4, v5

    .end local v5    # "interfaceIndex":I
    .restart local v4    # "interfaceIndex":I
    goto :goto_1

    .line 1005
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    if-ge v6, v4, :cond_6

    .line 1006
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "superClassIndex":I
    .restart local v7    # "superClassIndex":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .restart local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v6, v7

    .end local v7    # "superClassIndex":I
    .restart local v6    # "superClassIndex":I
    goto :goto_1

    .line 1008
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "interfaceIndex":I
    .restart local v5    # "interfaceIndex":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .restart local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v4, v5

    .end local v5    # "interfaceIndex":I
    .restart local v4    # "interfaceIndex":I
    goto :goto_1
.end method

.method public static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;ZZ)Ljava/lang/annotation/Annotation;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<TA;>;ZZ)TA;"
        }
    .end annotation

    .prologue
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 946
    if-eqz p0, :cond_1

    move v6, v7

    :goto_0
    const-string v9, "The method must not be null"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 947
    if-eqz p1, :cond_2

    :goto_1
    const-string v6, "The annotation class must not be null"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 948
    if-nez p3, :cond_3

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 949
    const/4 v1, 0x0

    .line 973
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v6, v8

    .line 946
    goto :goto_0

    :cond_2
    move v7, v8

    .line 947
    goto :goto_1

    .line 952
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 954
    .local v1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 955
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 956
    .local v5, "mcls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v5}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 957
    .local v2, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 960
    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 966
    .local v4, "equivalentMethod":Ljava/lang/reflect/Method;
    :goto_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_4

    goto :goto_2

    .line 961
    .end local v4    # "equivalentMethod":Ljava/lang/reflect/Method;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_4

    .line 962
    :catch_0
    move-exception v3

    .line 964
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_3
.end method

.method public static varargs getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 677
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 679
    :catch_0
    move-exception v9

    .line 682
    const/4 v1, 0x0

    .line 683
    .local v1, "bestMatch":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 684
    .local v6, "methods":[Ljava/lang/reflect/Method;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v2, v6, v9

    .line 686
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 687
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 689
    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 690
    .local v0, "accessibleMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I

    move-result v11

    if-gez v11, :cond_1

    .line 694
    :cond_0
    move-object v1, v0

    .line 684
    .end local v0    # "accessibleMethod":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 698
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_2
    if-eqz v1, :cond_3

    .line 699
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z

    .line 702
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_4

    array-length v9, p2

    if-lez v9, :cond_4

    .line 703
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 704
    .local v5, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 705
    .local v3, "methodParameterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, "methodParameterComponentTypeName":Ljava/lang/String;
    array-length v9, p2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p2, v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "parameterTypeName":Ljava/lang/String;
    array-length v9, p2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p2, v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 709
    .local v8, "parameterTypeSuperClassName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 710
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 711
    const/4 v2, 0x0

    goto :goto_0

    .end local v3    # "methodParameterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "methodParameterComponentTypeName":Ljava/lang/String;
    .end local v5    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "parameterTypeName":Ljava/lang/String;
    .end local v8    # "parameterTypeSuperClassName":Ljava/lang/String;
    :cond_4
    move-object v2, v1

    .line 715
    goto :goto_0
.end method

.method public static varargs getMatchingMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 730
    const-string v6, "Null class not allowed."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v6, "Null or blank methodName not allowed."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 734
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 735
    .local v3, "methodArray":[Ljava/lang/reflect/Method;
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 736
    .local v4, "superclassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 737
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "methodArray":[Ljava/lang/reflect/Method;
    check-cast v3, [Ljava/lang/reflect/Method;

    .line 738
    .restart local v3    # "methodArray":[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 740
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    .line 741
    .local v0, "inexactMatch":Ljava/lang/reflect/Method;
    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v2, v3, v5

    .line 742
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 743
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {p2, v7}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 756
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_2
    return-object v2

    .line 745
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 746
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p2, v7, v8}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 747
    if-nez v0, :cond_3

    .line 748
    move-object v0, v2

    .line 741
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 749
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {p2, v7}, Lorg/apache/commons/lang3/reflect/MethodUtils;->distance([Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v7

    .line 750
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {p2, v8}, Lorg/apache/commons/lang3/reflect/MethodUtils;->distance([Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 751
    move-object v0, v2

    goto :goto_3

    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4
    move-object v2, v0

    .line 756
    goto :goto_2
.end method

.method public static getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    .line 859
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;
    .locals 10
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 903
    if-eqz p0, :cond_2

    move v5, v6

    :goto_0
    const-string v8, "The class must not be null"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 904
    if-eqz p1, :cond_3

    :goto_1
    const-string v5, "The annotation class must not be null"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 905
    if-eqz p2, :cond_4

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 907
    .local v2, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :goto_2
    invoke-interface {v2, v7, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 908
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 909
    .local v1, "annotatedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 910
    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 911
    .local v4, "methods":[Ljava/lang/reflect/Method;
    :goto_3
    array-length v8, v4

    move v5, v7

    :goto_4
    if-ge v5, v8, :cond_0

    aget-object v3, v4, v5

    .line 912
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 913
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "annotatedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v2    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    move v5, v7

    .line 903
    goto :goto_0

    :cond_3
    move v6, v7

    .line 904
    goto :goto_1

    .line 905
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 910
    .restart local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "annotatedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v2    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_3

    .line 917
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object v1
.end method

.method public static getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    .line 844
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 2
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "annotatedMethodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public static getOverrideHierarchy(Ljava/lang/reflect/Method;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/util/Set;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "interfacesBehavior"    # Lorg/apache/commons/lang3/ClassUtils$Interfaces;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lorg/apache/commons/lang3/ClassUtils$Interfaces;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 798
    .local v8, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-interface {v8, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 802
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 804
    .local v2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/ClassUtils;->hierarchy(Ljava/lang/Class;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 806
    .local v3, "hierarchy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 807
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 808
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 809
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v6}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 810
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 813
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 815
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v2, v10}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v9

    .line 820
    .local v9, "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v6

    if-ge v4, v10, :cond_2

    .line 821
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 822
    .local v1, "childType":Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 823
    .local v7, "parentType":Ljava/lang/reflect/Type;
    invoke-static {v1, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 820
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 827
    .end local v1    # "childType":Ljava/lang/reflect/Type;
    .end local v7    # "parentType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_3
    return-object v8
.end method

.method static getVarArgs([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 465
    array-length v4, p0

    array-length v5, p1

    if-ne v4, v5, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p0, v4

    .line 466
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    .end local p0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 472
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_0
    array-length v4, p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 475
    .local v0, "newArgs":[Ljava/lang/Object;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 479
    .local v1, "varArgComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, p0

    array-length v5, p1

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 481
    .local v2, "varArgLength":I
    invoke-static {v1}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "varArgsArray":Ljava/lang/Object;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    invoke-static {v3}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 491
    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v0, v4

    move-object p0, v0

    .line 494
    goto :goto_0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 304
    invoke-static {p2}, Lorg/apache/commons/lang3/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 305
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 332
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 335
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 336
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_0
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 519
    invoke-static {p2}, Lorg/apache/commons/lang3/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 520
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 367
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 368
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 369
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 370
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 371
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 147
    invoke-static {p2}, Lorg/apache/commons/lang3/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 148
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 178
    invoke-static {p3}, Lorg/apache/commons/lang3/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 204
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p4}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p4

    .line 205
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 211
    const-string v0, "No such method: "

    .line 212
    .local v0, "messagePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2, p4}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMatchingMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 223
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 224
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() on object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    .end local v0    # "messagePrefix":Ljava/lang/String;
    :cond_1
    const-string v0, "No such accessible method: "

    .line 219
    .restart local v0    # "messagePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2, p4}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {v1, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 230
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 404
    invoke-static {p2}, Lorg/apache/commons/lang3/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 405
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 435
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 436
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 438
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 439
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/lang3/reflect/MethodUtils;->toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 449
    .local v0, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getVarArgs([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 451
    .end local v0    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object p1
.end method
