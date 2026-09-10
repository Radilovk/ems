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

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 76
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

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
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v1, v2, :cond_2

    .line 82
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 89
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 85
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
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
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 56
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 736
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 738
    .local v0, "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 752
    .end local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :goto_0
    return v1

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 745
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 746
    .restart local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 752
    .end local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .locals 1
    .param p1, "orinal"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 19
    .param p1, "hash"    # J

    .prologue
    .line 576
    const/4 v11, 0x0

    .line 577
    .local v11, "namingStrategies":[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    if-nez v15, :cond_3

    .line 578
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v11

    .line 580
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v15, v15

    array-length v0, v11

    move/from16 v16, v0

    mul-int v15, v15, v16

    new-array v3, v15, [J

    .line 581
    .local v3, "hashArray":[J
    const/4 v5, 0x0

    .line 582
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v15, v15

    if-ge v4, v15, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v15, v15, v4

    iget-object v15, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 584
    .local v9, "name":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v3, v5

    .line 586
    const/4 v7, 0x0

    .local v7, "j":I
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_1
    array-length v15, v11

    if-ge v7, v15, :cond_1

    .line 587
    aget-object v15, v11, v7

    invoke-virtual {v15, v9}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "name_t":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 586
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 591
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v3, v5

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_2

    .line 582
    .end local v10    # "name_t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 594
    .end local v7    # "j":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    invoke-static {v3, v15, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 596
    new-array v15, v5, [J

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 597
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v15, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    .end local v3    # "hashArray":[J
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    .line 601
    .local v14, "pos":I
    if-gez v14, :cond_4

    .line 602
    const/4 v15, 0x0

    .line 642
    :goto_3
    return-object v15

    .line 605
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    if-nez v15, :cond_b

    .line 606
    if-nez v11, :cond_5

    .line 607
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v11

    .line 610
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length v15, v15

    new-array v8, v15, [S

    .line 611
    .local v8, "mapping":[S
    const/4 v15, -0x1

    invoke-static {v8, v15}, Ljava/util/Arrays;->fill([SS)V

    .line 612
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v15, v15

    if-ge v4, v15, :cond_a

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v15, v15, v4

    iget-object v15, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 615
    .restart local v9    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 616
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v16

    .line 615
    invoke-static/range {v15 .. v17}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    .line 617
    .local v12, "p":I
    if-ltz v12, :cond_6

    .line 618
    int-to-short v15, v4

    aput-short v15, v8, v12

    .line 621
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5
    array-length v15, v11

    if-ge v7, v15, :cond_9

    .line 622
    aget-object v15, v11, v7

    invoke-virtual {v15, v9}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 623
    .restart local v10    # "name_t":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 621
    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 627
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 628
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v16

    .line 627
    invoke-static/range {v15 .. v17}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    .line 629
    .local v13, "p_t":I
    if-ltz v13, :cond_7

    .line 630
    int-to-short v15, v4

    aput-short v15, v8, v13

    goto :goto_6

    .line 612
    .end local v10    # "name_t":Ljava/lang/String;
    .end local v13    # "p_t":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 634
    .end local v7    # "j":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "p":I
    :cond_a
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    .line 637
    .end local v4    # "i":I
    .end local v8    # "mapping":[S
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short v2, v15, v14

    .line 638
    .local v2, "getterIndex":I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_c

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v15, v15, v2

    goto :goto_3

    .line 642
    :cond_c
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 549
    if-nez p1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-object v5

    .line 553
    :cond_1
    const/4 v3, 0x0

    .line 554
    .local v3, "low":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .line 556
    .local v2, "high":I
    :goto_1
    if-gt v3, v2, :cond_0

    .line 557
    add-int v6, v3, v2

    ushr-int/lit8 v4, v6, 0x1

    .line 559
    .local v4, "mid":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 561
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, "cmp":I
    if-gez v0, :cond_2

    .line 564
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    .line 565
    :cond_2
    if-lez v0, :cond_3

    .line 566
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 568
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v5, v5, v4

    goto :goto_0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
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

    .prologue
    .line 516
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    .line 517
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v1, :cond_0

    .line 518
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field not found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 525
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 526
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyHash"    # J
    .param p5, "throwFieldNotFoundException"    # Z

    .prologue
    .line 531
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    .line 532
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v1, :cond_1

    .line 533
    if-eqz p5, :cond_0

    .line 534
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field not found. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_0
    const/4 v2, 0x0

    .line 540
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 543
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 646
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 647
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 648
    .local v1, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v1    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
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
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 683
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 685
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 686
    .local v0, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_0
    return-object v1
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 656
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 658
    .local v2, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 659
    .local v0, "fieldClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 665
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    .end local v0    # "fieldClass":Ljava/lang/Class;
    .end local v2    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_2
    return-object v1
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "size":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 674
    .local v0, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 676
    add-int/lit8 v1, v1, 0x1

    .line 673
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    .end local v0    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .prologue
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

    .prologue
    .line 509
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 510
    .local v0, "mask":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v1, :cond_0

    and-int v1, p2, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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

    .prologue
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
    .locals 48
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

    .prologue
    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v36, v0

    .line 140
    .local v36, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 141
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v4, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v26, v0

    .line 157
    .local v26, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 158
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v8, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 162
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v45

    .line 165
    .local v45, "writeAsArray":Z
    if-eqz v45, :cond_9

    const/16 v42, 0x5b

    .line 166
    .local v42, "startSeperator":C
    :goto_2
    if-eqz v45, :cond_a

    const/16 v16, 0x5d

    .line 167
    .local v16, "endSeperator":C
    :goto_3
    if-nez p6, :cond_3

    .line 168
    :try_start_0
    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 171
    :cond_3
    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_4

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 176
    :cond_4
    const/4 v12, 0x0

    .line 178
    .local v12, "commaFlag":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v6

    if-nez v4, :cond_5

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v4, v4, p5

    if-nez v4, :cond_5

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 181
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    .line 184
    .local v35, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v35

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p4

    instance-of v4, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_b

    .line 185
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v43

    .line 190
    .local v43, "type":Ljava/lang/reflect/Type;
    :goto_4
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_6

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const/4 v12, 0x1

    .line 196
    .end local v35    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v43    # "type":Ljava/lang/reflect/Type;
    :cond_6
    if-eqz v12, :cond_c

    const/16 v39, 0x2c

    .line 198
    .local v39, "seperator":C
    :goto_5
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v4, :cond_d

    const/4 v14, 0x1

    .line 199
    .local v14, "directWritePrefix":Z
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v33

    .line 200
    .local v33, "newSeperator":C
    const/16 v4, 0x2c

    move/from16 v0, v33

    if-ne v0, v4, :cond_e

    const/4 v12, 0x1

    .line 202
    :goto_7
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v41

    .line 203
    .local v41, "skipTransient":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v29

    .line 205
    .local v29, "ignoreNonFieldGetter":Z
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_8
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_47

    .line 206
    aget-object v24, v26, v28

    .line 208
    .local v24, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v0

    .line 209
    .local v19, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v23, v0

    .line 210
    .local v23, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 211
    .local v10, "fieldInfoName":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    .line 213
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v41, :cond_f

    .line 214
    if-eqz v19, :cond_f

    .line 215
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_f

    .line 205
    :cond_7
    :goto_9
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 154
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "commaFlag":Z
    .end local v14    # "directWritePrefix":Z
    .end local v16    # "endSeperator":C
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v26    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v28    # "i":I
    .end local v29    # "ignoreNonFieldGetter":Z
    .end local v33    # "newSeperator":C
    .end local v39    # "seperator":C
    .end local v41    # "skipTransient":Z
    .end local v42    # "startSeperator":C
    .end local v45    # "writeAsArray":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v26, v0

    .restart local v26    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1

    .line 165
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v45    # "writeAsArray":Z
    :cond_9
    const/16 v42, 0x7b

    goto/16 :goto_2

    .line 166
    .restart local v42    # "startSeperator":C
    :cond_a
    const/16 v16, 0x7d

    goto/16 :goto_3

    .line 187
    .restart local v12    # "commaFlag":Z
    .restart local v16    # "endSeperator":C
    .restart local v35    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object/from16 v43, p4

    .restart local v43    # "type":Ljava/lang/reflect/Type;
    goto/16 :goto_4

    .line 196
    .end local v35    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v43    # "type":Ljava/lang/reflect/Type;
    :cond_c
    const/16 v39, 0x0

    goto :goto_5

    .line 198
    .restart local v39    # "seperator":C
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 200
    .restart local v14    # "directWritePrefix":Z
    .restart local v33    # "newSeperator":C
    :cond_e
    const/4 v12, 0x0

    goto :goto_7

    .line 221
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v28    # "i":I
    .restart local v29    # "ignoreNonFieldGetter":Z
    .restart local v41    # "skipTransient":Z
    :cond_f
    if-eqz v29, :cond_10

    .line 222
    if-eqz v19, :cond_7

    .line 227
    :cond_10
    const/16 v34, 0x0

    .line 228
    .local v34, "notApply":Z
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 230
    :cond_11
    if-eqz v45, :cond_7

    .line 231
    const/16 v34, 0x1

    .line 237
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    .line 238
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 239
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 245
    :cond_13
    if-eqz v34, :cond_24

    .line 246
    const/16 v37, 0x0

    .line 259
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_4b

    const-string/jumbo v4, "trim"

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 264
    if-eqz v37, :cond_4b

    .line 265
    check-cast v37, Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    .local v37, "propertyValue":Ljava/lang/String;
    move-object/from16 v11, v37

    .line 269
    .end local v37    # "propertyValue":Ljava/lang/String;
    :goto_b
    move-object/from16 v30, v10

    .line 270
    .local v30, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 273
    .local v11, "originalValue":Ljava/lang/Object;
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 276
    .local v37, "propertyValue":Ljava/lang/Object;
    if-nez v37, :cond_36

    .line 277
    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v40, v0

    .line 278
    .local v40, "serialzeFeatures":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v4, :cond_14

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    or-int v40, v40, v4

    .line 282
    :cond_14
    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_29

    .line 283
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 284
    .local v13, "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v32, v13, v4

    .line 285
    .local v32, "mask":I
    if-nez v45, :cond_15

    and-int v4, v40, v32

    if-nez v4, :cond_15

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v32

    if-eqz v4, :cond_7

    .line 287
    :cond_15
    and-int v4, v40, v13

    if-nez v4, :cond_16

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_17

    .line 288
    :cond_16
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_17
    move-object/from16 v6, v37

    .line 319
    .end local v13    # "defaultMask":I
    .end local v32    # "mask":I
    .end local v40    # "serialzeFeatures":I
    :goto_c
    if-eqz v6, :cond_1f

    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-nez v4, :cond_18

    move-object/from16 v0, v23

    iget v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_1f

    .line 324
    :cond_18
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 325
    .local v21, "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_19

    instance-of v4, v6, Ljava/lang/Byte;

    if-eqz v4, :cond_19

    move-object v0, v6

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 326
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-eqz v4, :cond_7

    .line 328
    :cond_19
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1a

    instance-of v4, v6, Ljava/lang/Short;

    if-eqz v4, :cond_1a

    move-object v0, v6

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    .line 329
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-eqz v4, :cond_7

    .line 331
    :cond_1a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1b

    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_1b

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 332
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    .line 334
    :cond_1b
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1c

    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_1c

    move-object v0, v6

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    .line 335
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v46, 0x0

    cmp-long v4, v8, v46

    if-eqz v4, :cond_7

    .line 337
    :cond_1c
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1d

    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_1d

    move-object v0, v6

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .line 338
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_7

    .line 340
    :cond_1d
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1e

    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_1e

    move-object v0, v6

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    .line 341
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v46, 0x0

    cmpl-double v4, v8, v46

    if-eqz v4, :cond_7

    .line 343
    :cond_1e
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1f

    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_1f

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 344
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    .end local v21    # "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    if-eqz v12, :cond_21

    .line 350
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v4, :cond_20

    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_20

    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 352
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 356
    :cond_20
    const/16 v4, 0x2c

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 357
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 362
    :cond_21
    move-object/from16 v0, v30

    if-eq v0, v10, :cond_37

    .line 363
    if-nez v45, :cond_22

    .line 364
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 367
    :cond_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 418
    :goto_d
    const/16 v25, 0x0

    .line 419
    .local v25, "fieldUnwrappedNull":Z
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v4, :cond_23

    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_23

    .line 421
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    move-object/from16 v31, v0

    .line 422
    .local v31, "map":Ljava/util/Map;
    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_44

    .line 423
    const/16 v25, 0x1

    .line 438
    .end local v31    # "map":Ljava/util/Map;
    :cond_23
    :goto_e
    if-nez v25, :cond_7

    .line 439
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 249
    .end local v11    # "originalValue":Ljava/lang/Object;
    .end local v25    # "fieldUnwrappedNull":Z
    .end local v30    # "key":Ljava/lang/String;
    :cond_24
    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v37

    .restart local v37    # "propertyValue":Ljava/lang/Object;
    goto/16 :goto_a

    .line 250
    .end local v37    # "propertyValue":Ljava/lang/Object;
    :catch_0
    move-exception v18

    .line 251
    .local v18, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 252
    const/16 v37, 0x0

    .restart local v37    # "propertyValue":Ljava/lang/Object;
    goto/16 :goto_a

    .line 254
    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_25
    throw v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "commaFlag":Z
    .end local v14    # "directWritePrefix":Z
    .end local v18    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v28    # "i":I
    .end local v29    # "ignoreNonFieldGetter":Z
    .end local v33    # "newSeperator":C
    .end local v34    # "notApply":Z
    .end local v39    # "seperator":C
    .end local v41    # "skipTransient":Z
    :catch_1
    move-exception v15

    .line 454
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v17, "write javaBean error, fastjson version 1.2.44"

    .line 455
    .local v17, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_26

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 458
    :cond_26
    if-eqz p3, :cond_27

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", fieldName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 461
    :cond_27
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 465
    :cond_28
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v17    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 290
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v11    # "originalValue":Ljava/lang/Object;
    .restart local v12    # "commaFlag":Z
    .restart local v14    # "directWritePrefix":Z
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v28    # "i":I
    .restart local v29    # "ignoreNonFieldGetter":Z
    .restart local v30    # "key":Ljava/lang/String;
    .restart local v33    # "newSeperator":C
    .restart local v34    # "notApply":Z
    .restart local v37    # "propertyValue":Ljava/lang/Object;
    .restart local v39    # "seperator":C
    .restart local v40    # "serialzeFeatures":I
    .restart local v41    # "skipTransient":Z
    :cond_29
    :try_start_5
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_2d

    .line 291
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 292
    .restart local v13    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v32, v13, v4

    .line 293
    .restart local v32    # "mask":I
    if-nez v45, :cond_2a

    and-int v4, v40, v32

    if-nez v4, :cond_2a

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v32

    if-eqz v4, :cond_7

    .line 295
    :cond_2a
    and-int v4, v40, v13

    if-nez v4, :cond_2b

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_2c

    .line 296
    :cond_2b
    const-string v37, ""

    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v6, v37

    .line 298
    goto/16 :goto_c

    .end local v13    # "defaultMask":I
    .end local v32    # "mask":I
    .restart local v37    # "propertyValue":Ljava/lang/Object;
    :cond_2d
    const-class v4, Ljava/lang/Number;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 299
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 300
    .restart local v13    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v32, v13, v4

    .line 301
    .restart local v32    # "mask":I
    if-nez v45, :cond_2e

    and-int v4, v40, v32

    if-nez v4, :cond_2e

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v32

    if-eqz v4, :cond_7

    .line 303
    :cond_2e
    and-int v4, v40, v13

    if-nez v4, :cond_2f

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_30

    .line 304
    :cond_2f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_30
    move-object/from16 v6, v37

    .line 306
    goto/16 :goto_c

    .end local v13    # "defaultMask":I
    .end local v32    # "mask":I
    .restart local v37    # "propertyValue":Ljava/lang/Object;
    :cond_31
    const-class v4, Ljava/util/Collection;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 307
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 308
    .restart local v13    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v32, v13, v4

    .line 309
    .restart local v32    # "mask":I
    if-nez v45, :cond_32

    and-int v4, v40, v32

    if-nez v4, :cond_32

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v32

    if-eqz v4, :cond_7

    .line 311
    :cond_32
    and-int v4, v40, v13

    if-nez v4, :cond_33

    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_34

    .line 312
    :cond_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v37

    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_34
    move-object/from16 v6, v37

    .line 314
    goto/16 :goto_c

    .end local v13    # "defaultMask":I
    .end local v32    # "mask":I
    .restart local v37    # "propertyValue":Ljava/lang/Object;
    :cond_35
    if-nez v45, :cond_36

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v4, :cond_36

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .end local v40    # "serialzeFeatures":I
    :cond_36
    move-object/from16 v6, v37

    goto/16 :goto_c

    .line 368
    .end local v37    # "propertyValue":Ljava/lang/Object;
    :cond_37
    if-eq v11, v6, :cond_39

    .line 369
    if-nez v45, :cond_38

    .line 370
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 372
    :cond_38
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 374
    :cond_39
    if-nez v45, :cond_3a

    .line 375
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v4, :cond_3a

    .line 376
    if-eqz v14, :cond_3d

    .line 377
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    const/4 v7, 0x0

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v8, v8

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 384
    :cond_3a
    :goto_f
    if-nez v45, :cond_43

    .line 385
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v20

    .line 386
    .local v20, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_41

    if-eqz v20, :cond_3b

    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/Void;

    if-ne v4, v7, :cond_41

    .line 387
    :cond_3b
    if-nez v6, :cond_3f

    .line 388
    move-object/from16 v0, v36

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_3c

    move-object/from16 v0, v24

    iget v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_3e

    .line 390
    :cond_3c
    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 379
    .end local v20    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3d
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_f

    .line 392
    .restart local v20    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3e
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_d

    .line 395
    :cond_3f
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v38, v0

    .line 397
    .local v38, "propertyValueString":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v4, :cond_40

    .line 398
    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 400
    :cond_40
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto/16 :goto_d

    .line 404
    .end local v38    # "propertyValueString":Ljava/lang/String;
    :cond_41
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v4, :cond_42

    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_42

    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 406
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_42

    .line 407
    const/4 v12, 0x0

    .line 408
    goto/16 :goto_9

    .line 411
    :cond_42
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 414
    .end local v20    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_43
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 424
    .restart local v25    # "fieldUnwrappedNull":Z
    .restart local v31    # "map":Ljava/util/Map;
    :cond_44
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 425
    const/16 v27, 0x0

    .line 426
    .local v27, "hasNotNull":Z
    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    .line 427
    .local v44, "value":Ljava/lang/Object;
    if-eqz v44, :cond_45

    .line 428
    const/16 v27, 0x1

    .line 432
    .end local v44    # "value":Ljava/lang/Object;
    :cond_46
    if-nez v27, :cond_23

    .line 433
    const/16 v25, 0x1

    goto/16 :goto_e

    .line 443
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v11    # "originalValue":Ljava/lang/Object;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v25    # "fieldUnwrappedNull":Z
    .end local v27    # "hasNotNull":Z
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "map":Ljava/util/Map;
    .end local v34    # "notApply":Z
    :cond_47
    if-eqz v12, :cond_4a

    const/16 v4, 0x2c

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 445
    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_48

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 450
    :cond_48
    if-nez p6, :cond_49

    .line 451
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 467
    :cond_49
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    .line 443
    :cond_4a
    const/4 v4, 0x0

    goto :goto_10

    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v34    # "notApply":Z
    :cond_4b
    move-object/from16 v11, v37

    goto/16 :goto_b
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .prologue
    .line 720
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 722
    .local v0, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 723
    goto :goto_0

    .line 726
    .end local v0    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 728
    .restart local v0    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 729
    goto :goto_1

    .line 732
    .end local v0    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
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

    .prologue
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

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 113
    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .prologue
    .line 703
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 705
    .local v0, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 706
    goto :goto_0

    .line 709
    .end local v0    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 711
    .restart local v0    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 712
    goto :goto_1

    .line 715
    .end local v0    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    :cond_1
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "typeKey"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 472
    if-nez p2, :cond_0

    .line 473
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 475
    :cond_0
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 476
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    .line 477
    .local v1, "typeName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 478
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 484
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 486
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 491
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 492
    .local v1, "mask":I
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    and-int v3, p3, v1

    if-eqz v3, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v2

    .line 496
    :cond_1
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 498
    const/4 v2, 0x1

    goto :goto_0
.end method
