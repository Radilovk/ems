.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private volatile transient hashArray:[J

.field private volatile transient hashArrayMapping:[S

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .locals 5
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 73
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 76
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 78
    new-instance v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_2

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 85
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 86
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 46
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 56
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v3    # "alias":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "label"    # Ljava/lang/String;

    .line 736
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 738
    .local v2, "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v2, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 739
    return v1

    .line 741
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_0
    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 746
    .restart local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v2, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 747
    return v1

    .line 749
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_2
    goto :goto_1

    .line 752
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .locals 1
    .param p1, "orinal"    # I

    .line 693
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 13
    .param p1, "hash"    # J

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "namingStrategies":[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    if-nez v1, :cond_3

    .line 578
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    array-length v2, v0

    mul-int v1, v1, v2

    new-array v1, v1, [J

    .line 581
    .local v1, "hashArray":[J
    const/4 v2, 0x0

    .line 582
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 583
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 584
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 586
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 587
    aget-object v6, v0, v2

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "name_t":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 589
    goto :goto_2

    .line 591
    :cond_0
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "index":I
    .local v7, "index":I
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v1, v5

    move v5, v7

    .line 586
    .end local v6    # "name_t":Ljava/lang/String;
    .end local v7    # "index":I
    .restart local v5    # "index":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 582
    .end local v2    # "j":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 594
    .end local v3    # "i":I
    .end local v5    # "index":I
    .local v2, "index":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 596
    new-array v4, v2, [J

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 597
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    .end local v1    # "hashArray":[J
    .end local v2    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 601
    .local v1, "pos":I
    const/4 v2, 0x0

    if-gez v1, :cond_4

    .line 602
    return-object v2

    .line 605
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    const/4 v4, -0x1

    if-nez v3, :cond_b

    .line 606
    if-nez v0, :cond_5

    .line 607
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 610
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length v3, v3

    new-array v3, v3, [S

    .line 611
    .local v3, "mapping":[S
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([SS)V

    .line 612
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v7, v6

    if-ge v5, v7, :cond_a

    .line 613
    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 615
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 616
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    .line 615
    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 617
    .local v7, "p":I
    if-ltz v7, :cond_6

    .line 618
    int-to-short v8, v5

    aput-short v8, v3, v7

    .line 621
    :cond_6
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    array-length v9, v0

    if-ge v8, v9, :cond_9

    .line 622
    aget-object v9, v0, v8

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 623
    .local v9, "name_t":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 624
    goto :goto_5

    .line 627
    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 628
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v11

    .line 627
    invoke-static {v10, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    .line 629
    .local v10, "p_t":I
    if-ltz v10, :cond_8

    .line 630
    int-to-short v11, v5

    aput-short v11, v3, v10

    .line 621
    .end local v9    # "name_t":Ljava/lang/String;
    .end local v10    # "p_t":I
    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 612
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "p":I
    .end local v8    # "j":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 634
    .end local v5    # "i":I
    :cond_a
    iput-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    .line 637
    .end local v3    # "mapping":[S
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short v3, v3, v1

    .line 638
    .local v3, "getterIndex":I
    if-eq v3, v4, :cond_c

    .line 639
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v2, v2, v3

    return-object v2

    .line 642
    :cond_c
    return-object v2
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 549
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 550
    return-object v0

    .line 553
    :cond_0
    const/4 v1, 0x0

    .line 554
    .local v1, "low":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 556
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_3

    .line 557
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 559
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 561
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 563
    .local v5, "cmp":I
    if-gez v5, :cond_1

    .line 564
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 565
    :cond_1
    if-lez v5, :cond_2

    .line 566
    add-int/lit8 v2, v3, -0x1

    .line 570
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :goto_1
    goto :goto_0

    .line 568
    .restart local v3    # "mid":I
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "cmp":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, v3

    return-object v0

    .line 572
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :cond_3
    return-object v0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .line 697
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .line 516
    const-string v0, "getFieldValue error."

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    .line 517
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v1, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 523
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 524
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 518
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyHash"    # J
    .param p5, "throwFieldNotFoundException"    # Z

    .line 531
    const-string v0, "getFieldValue error."

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    .line 532
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v1, :cond_1

    .line 533
    if-nez p5, :cond_0

    .line 536
    const/4 v0, 0x0

    return-object v0

    .line 534
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 541
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 542
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 647
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 648
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    :cond_0
    return-object v0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 685
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 686
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    :cond_0
    return-object v0
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 658
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 659
    .local v5, "fieldClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 660
    goto :goto_1

    .line 662
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 663
    goto :goto_1

    .line 665
    :cond_1
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "fieldClass":Ljava/lang/Class;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    :cond_2
    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 674
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 675
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 676
    add-int/lit8 v0, v0, 0x1

    .line 673
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_1
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v0

    return v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "fieldFeatrues"    # I

    .line 509
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 510
    .local v0, "mask":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v1, :cond_1

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 121
    return-void
.end method

.method protected write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 33
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .param p6, "unwrapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    iget-object v13, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 140
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v9, :cond_0

    .line 141
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-virtual {v7, v8, v9, v12}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    return-void

    .line 151
    :cond_1
    iget-boolean v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object v14, v0

    .local v0, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_0

    .line 154
    .end local v0    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_2
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object v14, v0

    .line 157
    .local v14, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_0
    iget-object v15, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 158
    .local v15, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 162
    :cond_3
    invoke-virtual {v7, v8, v12}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v16

    .line 165
    .local v16, "writeAsArray":Z
    if-eqz v16, :cond_4

    const/16 v0, 0x5b

    goto :goto_1

    :cond_4
    const/16 v0, 0x7b

    :goto_1
    move v6, v0

    .line 166
    .local v6, "startSeperator":C
    if-eqz v16, :cond_5

    const/16 v0, 0x5d

    goto :goto_2

    :cond_5
    const/16 v0, 0x7d

    :goto_2
    move v5, v0

    .line 167
    .local v5, "endSeperator":C
    if-nez p6, :cond_6

    .line 168
    :try_start_0
    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 467
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    :catchall_0
    move-exception v0

    move-object v1, v9

    move-object v5, v10

    :goto_3
    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_1d

    .line 453
    :catch_0
    move-exception v0

    move-object v1, v9

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_1c

    .line 171
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    :cond_6
    :goto_4
    :try_start_1
    array-length v0, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-lez v0, :cond_7

    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :cond_7
    const/4 v0, 0x0

    .line 178
    .local v0, "commaFlag":Z
    :try_start_3
    iget-object v1, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    and-int/2addr v1, v2

    if-nez v1, :cond_8

    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v12

    if-nez v1, :cond_8

    .line 180
    invoke-virtual {v8, v11, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_a

    .line 181
    :cond_8
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 184
    .local v1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v11, :cond_9

    :try_start_6
    instance-of v2, v11, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_9

    .line 185
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "type":Ljava/lang/reflect/Type;
    goto :goto_5

    .line 187
    .end local v2    # "type":Ljava/lang/reflect/Type;
    :cond_9
    move-object/from16 v2, p4

    .line 190
    .restart local v2    # "type":Ljava/lang/reflect/Type;
    :goto_5
    if-eq v1, v2, :cond_a

    .line 191
    iget-object v3, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v7, v8, v3, v9}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    const/4 v0, 0x1

    .line 196
    .end local v1    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "type":Ljava/lang/reflect/Type;
    :cond_a
    if-eqz v0, :cond_b

    const/16 v1, 0x2c

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    move v2, v1

    .line 198
    .local v2, "seperator":C
    :try_start_7
    iget-boolean v1, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-eqz v1, :cond_c

    :try_start_8
    iget-boolean v1, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    move/from16 v18, v1

    .line 199
    .local v18, "directWritePrefix":Z
    :try_start_9
    invoke-virtual {v7, v8, v9, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v1

    .line 200
    .local v1, "newSeperator":C
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_d

    const/16 v17, 0x1

    goto :goto_8

    :cond_d
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    .line 202
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    move/from16 v20, v3

    .line 203
    .local v20, "skipTransient":Z
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    move/from16 v21, v3

    .line 205
    .local v21, "ignoreNonFieldGetter":Z
    const/4 v3, 0x0

    move/from16 v22, v0

    .end local v0    # "commaFlag":Z
    .local v3, "i":I
    .local v22, "commaFlag":Z
    :goto_9
    array-length v0, v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-ge v3, v0, :cond_49

    .line 206
    :try_start_a
    aget-object v0, v14, v3

    move-object/from16 v23, v0

    .line 208
    .local v23, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v12, v23

    .end local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v12, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v0, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    .line 209
    .local v23, "field":Ljava/lang/reflect/Field;
    iget-object v0, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    .line 210
    .local v24, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v10, v24

    .end local v24    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v10, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 211
    .local v24, "fieldInfoName":Ljava/lang/String;
    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v25, v0

    .line 213
    .local v25, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v20, :cond_e

    .line 214
    if-eqz v23, :cond_e

    .line 215
    :try_start_b
    iget-boolean v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_e

    .line 216
    move/from16 v25, v1

    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/16 v9, 0x2c

    goto/16 :goto_18

    .line 467
    .end local v1    # "newSeperator":C
    .end local v2    # "seperator":C
    .end local v3    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v18    # "directWritePrefix":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v23    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "fieldInfoName":Ljava/lang/String;
    .end local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_1
    move-exception v0

    move-object/from16 v5, p3

    move-object v1, v9

    goto/16 :goto_3

    .line 221
    .restart local v1    # "newSeperator":C
    .restart local v2    # "seperator":C
    .restart local v3    # "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v18    # "directWritePrefix":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "ignoreNonFieldGetter":Z
    .restart local v22    # "commaFlag":Z
    .restart local v23    # "field":Ljava/lang/reflect/Field;
    .restart local v24    # "fieldInfoName":Ljava/lang/String;
    .restart local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    if-eqz v21, :cond_f

    .line 222
    if-nez v23, :cond_f

    .line 223
    move/from16 v25, v1

    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/16 v9, 0x2c

    goto/16 :goto_18

    .line 227
    :cond_f
    const/4 v0, 0x0

    .line 228
    .local v0, "notApply":Z
    move-object/from16 v26, v15

    move-object/from16 v15, v24

    .end local v24    # "fieldInfoName":Ljava/lang/String;
    .local v15, "fieldInfoName":Ljava/lang/String;
    .local v26, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :try_start_c
    invoke-virtual {v7, v8, v9, v15}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v24, :cond_11

    :try_start_d
    iget-object v4, v10, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 229
    invoke-virtual {v7, v8, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    move/from16 v27, v0

    goto :goto_b

    .line 467
    .end local v0    # "notApply":Z
    .end local v1    # "newSeperator":C
    .end local v2    # "seperator":C
    .end local v3    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "fieldInfoName":Ljava/lang/String;
    .end local v18    # "directWritePrefix":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v23    # "field":Ljava/lang/reflect/Field;
    .end local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_2
    move-exception v0

    move-object/from16 v5, p3

    move-object v1, v9

    move-object v2, v14

    move-object/from16 v3, v26

    goto/16 :goto_1d

    .line 453
    :catch_1
    move-exception v0

    move-object v1, v9

    move-object v2, v14

    move-object/from16 v3, v26

    goto/16 :goto_1c

    .line 230
    .restart local v0    # "notApply":Z
    .restart local v1    # "newSeperator":C
    .restart local v2    # "seperator":C
    .restart local v3    # "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "fieldInfoName":Ljava/lang/String;
    .restart local v18    # "directWritePrefix":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "ignoreNonFieldGetter":Z
    .restart local v22    # "commaFlag":Z
    .restart local v23    # "field":Ljava/lang/reflect/Field;
    .restart local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    :goto_a
    if-eqz v16, :cond_47

    .line 231
    const/4 v0, 0x1

    move/from16 v27, v0

    .line 237
    .end local v0    # "notApply":Z
    .local v27, "notApply":Z
    :goto_b
    :try_start_e
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v0, :cond_12

    :try_start_f
    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    .line 238
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    invoke-virtual {v8, v11, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v0, :cond_12

    .line 240
    move/from16 v25, v1

    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    const/4 v6, 0x0

    const/16 v9, 0x2c

    goto/16 :goto_18

    .line 245
    :cond_12
    if-eqz v27, :cond_13

    .line 246
    const/4 v0, 0x0

    .local v0, "propertyValue":Ljava/lang/Object;
    goto :goto_c

    .line 249
    .end local v0    # "propertyValue":Ljava/lang/Object;
    :cond_13
    :try_start_10
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 256
    .restart local v0    # "propertyValue":Ljava/lang/Object;
    goto :goto_c

    .line 250
    .end local v0    # "propertyValue":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 251
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_11
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 252
    const/4 v4, 0x0

    move-object v0, v4

    .line 259
    .local v0, "propertyValue":Ljava/lang/Object;
    :goto_c
    invoke-virtual {v7, v8, v9, v15, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 260
    move/from16 v25, v1

    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    const/4 v6, 0x0

    const/16 v9, 0x2c

    goto/16 :goto_18

    .line 263
    :cond_14
    const-class v4, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v11, v25

    .end local v25    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v11, v4, :cond_15

    :try_start_12
    const-string v4, "trim"

    move/from16 v25, v1

    .end local v1    # "newSeperator":C
    .local v25, "newSeperator":C
    iget-object v1, v10, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 264
    if-eqz v0, :cond_16

    .line 265
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object v0, v1

    goto :goto_d

    .line 263
    .end local v25    # "newSeperator":C
    .restart local v1    # "newSeperator":C
    :cond_15
    move/from16 v25, v1

    .line 269
    .end local v1    # "newSeperator":C
    .restart local v25    # "newSeperator":C
    :cond_16
    :goto_d
    move-object v1, v15

    .line 270
    .local v1, "key":Ljava/lang/String;
    :try_start_13
    invoke-virtual {v7, v8, v9, v1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .end local v1    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    move-object v1, v0

    .line 273
    .local v1, "originalValue":Ljava/lang/Object;
    move/from16 v28, v3

    .end local v3    # "i":I
    .local v28, "i":I
    iget-object v3, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object/from16 v29, v14

    move-object v14, v1

    .end local v1    # "originalValue":Ljava/lang/Object;
    .local v14, "originalValue":Ljava/lang/Object;
    .local v29, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v1, p0

    move/from16 v30, v2

    .end local v2    # "seperator":C
    .local v30, "seperator":C
    move-object/from16 v2, p1

    move/from16 v17, v28

    const/16 v28, 0x0

    .end local v28    # "i":I
    .local v17, "i":I
    move-object/from16 v31, v4

    const/16 v9, 0x2c

    .end local v4    # "key":Ljava/lang/String;
    .local v31, "key":Ljava/lang/String;
    move-object/from16 v4, p2

    move/from16 v32, v5

    .end local v5    # "endSeperator":C
    .local v32, "endSeperator":C
    move-object v5, v15

    move/from16 v19, v6

    .end local v6    # "startSeperator":C
    .local v19, "startSeperator":C
    move-object v6, v0

    :try_start_14
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object v0, v1

    .line 276
    const-string v1, ""

    if-nez v0, :cond_28

    .line 277
    :try_start_15
    iget v2, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 278
    .local v2, "serialzeFeatures":I
    iget-object v3, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v3, :cond_17

    .line 279
    iget-object v3, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    or-int/2addr v2, v3

    .line 282
    :cond_17
    const-class v3, Ljava/lang/Boolean;

    if-ne v11, v3, :cond_1b

    .line 283
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 284
    .local v3, "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 285
    .local v4, "mask":I
    if-nez v16, :cond_18

    and-int v5, v2, v4

    if-nez v5, :cond_18

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_18

    .line 286
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 287
    :cond_18
    and-int v5, v2, v3

    if-nez v5, :cond_19

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_1a

    .line 288
    :cond_19
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    .line 290
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_1a
    goto/16 :goto_e

    :cond_1b
    const-class v3, Ljava/lang/String;

    if-ne v11, v3, :cond_1f

    .line 291
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 292
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 293
    .restart local v4    # "mask":I
    if-nez v16, :cond_1c

    and-int v5, v2, v4

    if-nez v5, :cond_1c

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_1c

    .line 294
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 295
    :cond_1c
    and-int v5, v2, v3

    if-nez v5, :cond_1d

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_1e

    .line 296
    :cond_1d
    move-object v0, v1

    .line 298
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_1e
    goto/16 :goto_e

    :cond_1f
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 299
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 300
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 301
    .restart local v4    # "mask":I
    if-nez v16, :cond_20

    and-int v5, v2, v4

    if-nez v5, :cond_20

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_20

    .line 302
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 303
    :cond_20
    and-int v5, v2, v3

    if-nez v5, :cond_21

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_22

    .line 304
    :cond_21
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    .line 306
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_22
    goto :goto_e

    :cond_23
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 307
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 308
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 309
    .restart local v4    # "mask":I
    if-nez v16, :cond_24

    and-int v5, v2, v4

    if-nez v5, :cond_24

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_24

    .line 310
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 311
    :cond_24
    and-int v5, v2, v3

    if-nez v5, :cond_25

    iget v5, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_26

    .line 312
    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 314
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_26
    goto :goto_e

    :cond_27
    if-nez v16, :cond_26

    iget-boolean v3, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v3, :cond_26

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 315
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 319
    .end local v2    # "serialzeFeatures":I
    :cond_28
    :goto_e
    if-eqz v0, :cond_30

    iget-boolean v2, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-nez v2, :cond_29

    iget v2, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-nez v2, :cond_29

    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_30

    .line 324
    :cond_29
    iget-object v2, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 325
    .local v2, "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2a

    instance-of v3, v0, Ljava/lang/Byte;

    if-eqz v3, :cond_2a

    move-object v3, v0

    check-cast v3, Ljava/lang/Byte;

    .line 326
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-nez v3, :cond_2a

    .line 327
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 328
    :cond_2a
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2b

    instance-of v3, v0, Ljava/lang/Short;

    if-eqz v3, :cond_2b

    move-object v3, v0

    check-cast v3, Ljava/lang/Short;

    .line 329
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    if-nez v3, :cond_2b

    .line 330
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 331
    :cond_2b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2c

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2c

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 332
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2c

    .line 333
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 334
    :cond_2c
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2d

    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_2d

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    .line 335
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v24, v3, v5

    if-nez v24, :cond_2d

    .line 336
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 337
    :cond_2d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2e

    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_2e

    move-object v3, v0

    check-cast v3, Ljava/lang/Float;

    .line 338
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    .line 339
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 340
    :cond_2e
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2f

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_2f

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    .line 341
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v24, v3, v5

    if-nez v24, :cond_2f

    .line 342
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 343
    :cond_2f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_30

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_30

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    .line 344
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_30

    .line 345
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 349
    .end local v2    # "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    if-eqz v22, :cond_32

    .line 350
    iget-boolean v2, v10, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v2, :cond_31

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_31

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .line 352
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_31

    .line 353
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 356
    :cond_31
    invoke-virtual {v13, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 357
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 362
    :cond_32
    move-object/from16 v2, v31

    .end local v31    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    if-eq v2, v15, :cond_34

    .line 363
    if-nez v16, :cond_33

    .line 364
    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_f

    .line 363
    :cond_33
    const/4 v3, 0x1

    .line 367
    :goto_f
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_14

    .line 368
    :cond_34
    const/4 v3, 0x1

    if-eq v14, v0, :cond_36

    .line 369
    if-nez v16, :cond_35

    .line 370
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 372
    :cond_35
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_14

    .line 374
    :cond_36
    if-nez v16, :cond_39

    .line 375
    iget-boolean v4, v10, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v4, :cond_38

    .line 376
    if-eqz v18, :cond_37

    .line 377
    iget-object v4, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v13, v4, v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_10

    .line 379
    :cond_37
    const/4 v6, 0x0

    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_10

    .line 375
    :cond_38
    const/4 v6, 0x0

    goto :goto_10

    .line 374
    :cond_39
    const/4 v6, 0x0

    .line 384
    :goto_10
    if-nez v16, :cond_41

    .line 385
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    .line 386
    .local v4, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const-class v5, Ljava/lang/String;

    if-ne v11, v5, :cond_3f

    if-eqz v4, :cond_3a

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v5

    const-class v3, Ljava/lang/Void;

    if-ne v5, v3, :cond_3f

    .line 387
    :cond_3a
    if-nez v0, :cond_3d

    .line 388
    iget v3, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v5

    if-nez v3, :cond_3c

    iget v3, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_3b

    goto :goto_11

    .line 392
    :cond_3b
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_13

    .line 390
    :cond_3c
    :goto_11
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_13

    .line 395
    :cond_3d
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, "propertyValueString":Ljava/lang/String;
    iget-boolean v3, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_3e

    .line 398
    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_12

    .line 400
    :cond_3e
    invoke-virtual {v13, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 402
    .end local v1    # "propertyValueString":Ljava/lang/String;
    :goto_12
    goto :goto_13

    .line 404
    :cond_3f
    iget-boolean v1, v10, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v1, :cond_40

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_40

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 406
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_40

    .line 407
    const/4 v1, 0x0

    .line 408
    .end local v22    # "commaFlag":Z
    .local v1, "commaFlag":Z
    move/from16 v22, v1

    goto/16 :goto_18

    .line 411
    .end local v1    # "commaFlag":Z
    .restart local v22    # "commaFlag":Z
    :cond_40
    invoke-virtual {v12, v8, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 413
    .end local v4    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_13
    goto :goto_14

    .line 414
    :cond_41
    invoke-virtual {v12, v8, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 418
    :goto_14
    const/4 v1, 0x0

    .line 419
    .local v1, "fieldUnwrappedNull":Z
    iget-boolean v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v3, :cond_45

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_45

    .line 421
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 422
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_42

    .line 423
    const/4 v1, 0x1

    goto :goto_17

    .line 424
    :cond_42
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 425
    const/4 v4, 0x0

    .line 426
    .local v4, "hasNotNull":Z
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 427
    .local v24, "value":Ljava/lang/Object;
    if-eqz v24, :cond_43

    .line 428
    const/4 v4, 0x1

    .line 429
    goto :goto_16

    .line 431
    .end local v24    # "value":Ljava/lang/Object;
    :cond_43
    goto :goto_15

    .line 432
    :cond_44
    :goto_16
    if-nez v4, :cond_45

    .line 433
    const/4 v1, 0x1

    .line 438
    .end local v3    # "map":Ljava/util/Map;
    .end local v4    # "hasNotNull":Z
    :cond_45
    :goto_17
    if-nez v1, :cond_48

    .line 439
    const/4 v3, 0x1

    move/from16 v22, v3

    .end local v22    # "commaFlag":Z
    .local v3, "commaFlag":Z
    goto :goto_18

    .line 254
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "i":I
    .end local v19    # "startSeperator":C
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v30    # "seperator":C
    .end local v32    # "endSeperator":C
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    .local v1, "newSeperator":C
    .local v2, "seperator":C
    .local v3, "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .local v14, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v22    # "commaFlag":Z
    .local v25, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_46
    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    move-object/from16 v11, v25

    move/from16 v25, v1

    .end local v1    # "newSeperator":C
    .end local v2    # "seperator":C
    .end local v3    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v13    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v16    # "writeAsArray":Z
    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "fieldType":Ljava/lang/reflect/Type;
    .end local p5    # "features":I
    .end local p6    # "unwrapped":Z
    .restart local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "i":I
    .restart local v19    # "startSeperator":C
    .local v25, "newSeperator":C
    .restart local v30    # "seperator":C
    .restart local v32    # "endSeperator":C
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 467
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "fieldInfoName":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "directWritePrefix":Z
    .end local v19    # "startSeperator":C
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v23    # "field":Ljava/lang/reflect/Field;
    .end local v25    # "newSeperator":C
    .end local v27    # "notApply":Z
    .end local v30    # "seperator":C
    .end local v32    # "endSeperator":C
    .restart local v13    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v16    # "writeAsArray":Z
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .restart local p2    # "object":Ljava/lang/Object;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p5    # "features":I
    .restart local p6    # "unwrapped":Z
    :catchall_3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v3, v26

    move-object/from16 v2, v29

    goto/16 :goto_1d

    .line 453
    :catch_3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v3, v26

    move-object/from16 v2, v29

    goto/16 :goto_1c

    .line 230
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v0, "notApply":Z
    .restart local v1    # "newSeperator":C
    .restart local v2    # "seperator":C
    .restart local v3    # "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "fieldInfoName":Ljava/lang/String;
    .restart local v18    # "directWritePrefix":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "ignoreNonFieldGetter":Z
    .restart local v22    # "commaFlag":Z
    .restart local v23    # "field":Ljava/lang/reflect/Field;
    .local v25, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    move-object/from16 v11, v25

    const/4 v6, 0x0

    const/16 v9, 0x2c

    move/from16 v25, v1

    .line 205
    .end local v0    # "notApply":Z
    .end local v1    # "newSeperator":C
    .end local v2    # "seperator":C
    .end local v3    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v12    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "field":Ljava/lang/reflect/Field;
    .restart local v17    # "i":I
    .restart local v19    # "startSeperator":C
    .local v25, "newSeperator":C
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v30    # "seperator":C
    .restart local v32    # "endSeperator":C
    :cond_48
    :goto_18
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v6, v19

    move/from16 v1, v25

    move-object/from16 v15, v26

    move-object/from16 v14, v29

    move/from16 v2, v30

    move/from16 v5, v32

    const/16 v4, 0x2c

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_9

    .line 467
    .end local v3    # "i":I
    .end local v18    # "directWritePrefix":Z
    .end local v19    # "startSeperator":C
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v25    # "newSeperator":C
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v30    # "seperator":C
    .end local v32    # "endSeperator":C
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object v2, v14

    move-object/from16 v3, v26

    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1d

    .line 453
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_4
    move-exception v0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, v26

    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1c

    .line 467
    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v15, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_5
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object v2, v14

    move-object v3, v15

    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1d

    .line 453
    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_5
    move-exception v0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object v3, v15

    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1c

    .line 205
    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "newSeperator":C
    .restart local v2    # "seperator":C
    .restart local v3    # "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v18    # "directWritePrefix":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "ignoreNonFieldGetter":Z
    .restart local v22    # "commaFlag":Z
    :cond_49
    move/from16 v25, v1

    move/from16 v30, v2

    move/from16 v17, v3

    move/from16 v32, v5

    move/from16 v19, v6

    move-object/from16 v29, v14

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/16 v9, 0x2c

    .line 443
    .end local v1    # "newSeperator":C
    .end local v2    # "seperator":C
    .end local v3    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "startSeperator":C
    .restart local v25    # "newSeperator":C
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v30    # "seperator":C
    .restart local v32    # "endSeperator":C
    if-eqz v22, :cond_4a

    const/16 v4, 0x2c

    goto :goto_19

    :cond_4a
    const/4 v4, 0x0

    :goto_19
    move-object/from16 v1, p2

    :try_start_16
    invoke-virtual {v7, v8, v1, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 445
    move-object/from16 v2, v29

    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v2, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_start_17
    array-length v0, v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-lez v0, :cond_4b

    :try_start_18
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_1a

    .line 467
    .end local v18    # "directWritePrefix":Z
    .end local v19    # "startSeperator":C
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v25    # "newSeperator":C
    .end local v30    # "seperator":C
    .end local v32    # "endSeperator":C
    :catchall_6
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v3, v26

    goto/16 :goto_1d

    .line 453
    :catch_6
    move-exception v0

    move-object/from16 v3, v26

    goto :goto_1c

    .line 450
    .restart local v18    # "directWritePrefix":Z
    .restart local v19    # "startSeperator":C
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "ignoreNonFieldGetter":Z
    .restart local v22    # "commaFlag":Z
    .restart local v25    # "newSeperator":C
    .restart local v30    # "seperator":C
    .restart local v32    # "endSeperator":C
    :cond_4b
    :goto_1a
    if-nez p6, :cond_4c

    .line 451
    move/from16 v3, v32

    .end local v32    # "endSeperator":C
    .local v3, "endSeperator":C
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_1b

    .line 450
    .end local v3    # "endSeperator":C
    .restart local v32    # "endSeperator":C
    :cond_4c
    move/from16 v3, v32

    .line 467
    .end local v18    # "directWritePrefix":Z
    .end local v19    # "startSeperator":C
    .end local v20    # "skipTransient":Z
    .end local v21    # "ignoreNonFieldGetter":Z
    .end local v22    # "commaFlag":Z
    .end local v25    # "newSeperator":C
    .end local v30    # "seperator":C
    .end local v32    # "endSeperator":C
    :goto_1b
    move-object/from16 v3, v26

    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v3, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v3, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 468
    nop

    .line 469
    return-void

    .line 467
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_7
    move-exception v0

    move-object/from16 v3, v26

    move-object/from16 v5, p3

    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_1d

    .line 453
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_7
    move-exception v0

    move-object/from16 v3, v26

    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_1c

    .line 467
    .end local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_8
    move-exception v0

    move-object/from16 v3, v26

    move-object/from16 v2, v29

    move-object/from16 v5, p3

    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_1d

    .line 453
    .end local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_8
    move-exception v0

    move-object/from16 v3, v26

    move-object/from16 v2, v29

    .end local v26    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_1c

    .line 467
    .end local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_9
    move-exception v0

    move-object v1, v9

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v5, p3

    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_1d

    .line 453
    .end local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_9
    move-exception v0

    move-object v1, v9

    move-object v2, v14

    move-object v3, v15

    .line 454
    .end local v14    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v15    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_1c
    :try_start_19
    const-string v4, "write javaBean error, fastjson version 1.2.44"

    .line 455
    .local v4, "errorMessage":Ljava/lang/String;
    if-eqz v1, :cond_4d

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move-object v4, v5

    .line 458
    :cond_4d
    move-object/from16 v5, p3

    if-eqz v5, :cond_4e

    .line 459
    :try_start_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", fieldName : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 461
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 465
    :cond_4f
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v6, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v13    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v16    # "writeAsArray":Z
    .end local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "fieldType":Ljava/lang/reflect/Type;
    .end local p5    # "features":I
    .end local p6    # "unwrapped":Z
    throw v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .restart local v2    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v13    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v16    # "writeAsArray":Z
    .restart local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .restart local p2    # "object":Ljava/lang/Object;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "fieldType":Ljava/lang/reflect/Type;
    .restart local p5    # "features":I
    .restart local p6    # "unwrapped":Z
    :catchall_a
    move-exception v0

    goto :goto_1d

    :catchall_b
    move-exception v0

    move-object/from16 v5, p3

    :goto_1d
    iput-object v3, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .line 720
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 722
    .local v1, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 723
    .end local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 728
    .restart local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 729
    .end local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    goto :goto_1

    .line 732
    :cond_1
    return p3
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 105
    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 113
    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .line 703
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 705
    .local v1, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 706
    .end local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 711
    .restart local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 712
    .end local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    goto :goto_1

    .line 715
    :cond_1
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "typeKey"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .line 472
    if-nez p2, :cond_0

    .line 473
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 475
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 476
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    .line 477
    .local v0, "typeName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 480
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 484
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 486
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 97
    return-void
.end method

.method public writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 129
    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldFeatures"    # I

    .line 490
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 491
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 492
    .local v1, "mask":I
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, p3, v1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 498
    const/4 v2, 0x1

    return v2

    .line 500
    :cond_1
    return v2

    .line 493
    :cond_2
    :goto_0
    return v2
.end method
