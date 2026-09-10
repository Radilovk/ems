.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 25
    .param p5, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p8, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 66
    if-eqz p7, :cond_3

    .line 67
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, "typeName":Ljava/lang/String;
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v19

    .line 69
    .local v19, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .end local v19    # "typeKey":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2

    .line 72
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_1
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "orders":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    if-nez v21, :cond_0

    const/4 v14, 0x0

    .end local v14    # "orders":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    .end local v20    # "typeName":Ljava/lang/String;
    :goto_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 88
    .local v18, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 89
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    .local v12, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    aget-object v5, v22, v21

    .line 91
    .local v5, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 69
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v12    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v19    # "typeKey":Ljava/lang/String;
    .restart local v20    # "typeName":Ljava/lang/String;
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 74
    .end local v19    # "typeKey":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 79
    .end local v20    # "typeName":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto/16 :goto_2

    .line 93
    .restart local v12    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    const/4 v8, 0x0

    .line 94
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v10, v22, v21

    .line 95
    .local v10, "item":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 96
    .restart local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v5, :cond_13

    .line 97
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aput-object v5, v18, v9

    .line 98
    invoke-virtual {v12, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_5
    add-int/lit8 v21, v21, 0x1

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    .line 101
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 102
    .restart local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aput-object v5, v18, v8

    move v8, v9

    .line 103
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_6

    .line 105
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "i":I
    .end local v12    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 112
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 114
    if-eqz p3, :cond_c

    .line 115
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 122
    :goto_7
    if-eqz p4, :cond_12

    .line 123
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 126
    const/4 v13, 0x0

    .line 137
    .local v13, "match":Z
    :cond_9
    :goto_8
    if-nez v13, :cond_12

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v11

    .line 139
    .local v11, "kotlin":Z
    if-eqz v11, :cond_11

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 142
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    .line 143
    .local v16, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_12

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_12

    .line 144
    aget-object v17, v16, v8

    .line 145
    .local v17, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v6, 0x0

    .line 146
    .local v6, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_a
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v15, v17, v21

    .line 147
    .local v15, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v0, v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    move-object v6, v15

    .line 148
    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 152
    .end local v15    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_a
    if-eqz v6, :cond_b

    .line 153
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "fieldAnnotationName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_b

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v7, v21, v8

    .line 143
    .end local v7    # "fieldAnnotationName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 116
    .end local v6    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "i":I
    .end local v11    # "kotlin":Z
    .end local v13    # "match":Z
    .end local v16    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v17    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_c
    if-eqz p5, :cond_d

    .line 117
    invoke-virtual/range {p5 .. p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto/16 :goto_7

    .line 119
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto/16 :goto_7

    .line 128
    :cond_e
    const/4 v13, 0x1

    .line 129
    .restart local v13    # "match":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 131
    const/4 v13, 0x0

    .line 132
    goto/16 :goto_8

    .line 129
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 146
    .restart local v6    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v11    # "kotlin":Z
    .restart local v15    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v16    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v17    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 160
    .end local v6    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "i":I
    .end local v15    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v16    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v17    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_11
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 164
    .end local v11    # "kotlin":Z
    .end local v13    # "match":Z
    :cond_12
    return-void

    .restart local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "i":I
    .restart local v10    # "item":Ljava/lang/String;
    .restart local v12    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_13
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_5
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 185
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    .line 182
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 195
    .restart local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    .line 197
    .local v2, "result":I
    if-gez v2, :cond_4

    .line 198
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 78
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .param p4, "compatibleWithJavaBean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 221
    .local v11, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v11, :cond_0

    .line 222
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v63

    .line 223
    .local v63, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    if-eqz v63, :cond_0

    sget-object v4, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v0, v63

    if-eq v0, v4, :cond_0

    .line 224
    move-object/from16 p2, v63

    .line 228
    .end local v63    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v6

    .line 230
    .local v6, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v57

    .line 231
    .local v57, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v67

    .line 233
    .local v67, "methods":[Ljava/lang/reflect/Method;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v64

    .line 234
    .local v64, "kotlin":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v54

    .line 236
    .local v54, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    .line 237
    .local v7, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v64, :cond_1

    move-object/from16 v0, v54

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 238
    :cond_1
    if-nez v6, :cond_3

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 245
    :cond_2
    :goto_0
    const/16 v55, 0x0

    .line 246
    .local v55, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    .line 247
    .local v10, "buildMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 249
    .local v9, "factoryMethod":Ljava/lang/reflect/Method;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-eqz p3, :cond_5

    .line 252
    move-object/from16 v56, p0

    .local v56, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v56, :cond_4

    .line 253
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v58

    .line 255
    .local v58, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v58

    invoke-static {v0, v1, v2, v12, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 252
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v56

    goto :goto_1

    .line 241
    .end local v9    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v10    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v56    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v58    # "fields":[Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    goto :goto_0

    .line 257
    .restart local v9    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v56    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v8, v55

    .line 771
    .end local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v56    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    return-object v4

    .line 260
    .end local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_6
    const/16 v61, 0x1

    .line 261
    .local v61, "isInterfaceOrAbstract":Z
    :goto_3
    if-nez v7, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    if-eqz v61, :cond_28

    .line 262
    :cond_8
    invoke-static/range {v54 .. v54}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 264
    .end local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v8, :cond_10

    if-nez v61, :cond_10

    .line 265
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 267
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 269
    .local v76, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v65, 0x0

    .line 270
    .local v65, "lookupParameterNames":[Ljava/lang/String;
    move-object/from16 v0, v76

    array-length v4, v0

    if-lez v4, :cond_29

    .line 271
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v70

    .line 272
    .local v70, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v59, 0x0

    .local v59, "i":I
    :goto_4
    move-object/from16 v0, v76

    array-length v4, v0

    move/from16 v0, v59

    if-ge v0, v4, :cond_29

    .line 273
    aget-object v71, v70, v59

    .line 274
    .local v71, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v34, 0x0

    .line 275
    .local v34, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v71

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v69, v71, v4

    .line 276
    .local v69, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v69

    instance-of v15, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v15, :cond_f

    move-object/from16 v34, v69

    .line 277
    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 282
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_9
    aget-object v16, v76, v59

    .line 283
    .local v16, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v59

    .line 285
    .local v17, "fieldType":Ljava/lang/reflect/Type;
    const/4 v14, 0x0

    .line 286
    .local v14, "fieldName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 287
    .local v18, "field":Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    .local v19, "ordinal":I
    const/16 v20, 0x0

    .local v20, "serialzeFeatures":I
    const/16 v21, 0x0

    .line 288
    .local v21, "parserFeatures":I
    if-eqz v34, :cond_a

    .line 289
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 290
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 291
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 292
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 293
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    .line 296
    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 297
    :cond_b
    if-nez v65, :cond_c

    .line 298
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v65

    .line 300
    :cond_c
    aget-object v14, v65, v59

    .line 303
    :cond_d
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v21}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 305
    .local v13, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 272
    add-int/lit8 v59, v59, 0x1

    goto :goto_4

    .line 260
    .end local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "fieldName":Ljava/lang/String;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v59    # "i":I
    .end local v61    # "isInterfaceOrAbstract":Z
    .end local v65    # "lookupParameterNames":[Ljava/lang/String;
    .end local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_e
    const/16 v61, 0x0

    goto/16 :goto_3

    .line 275
    .end local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v59    # "i":I
    .restart local v61    # "isInterfaceOrAbstract":Z
    .restart local v65    # "lookupParameterNames":[Ljava/lang/String;
    .restart local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 310
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v59    # "i":I
    .end local v65    # "lookupParameterNames":[Ljava/lang/String;
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 311
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 313
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 314
    .restart local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v4, v0

    if-lez v4, :cond_29

    .line 315
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v70

    .line 316
    .restart local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v59, 0x0

    .restart local v59    # "i":I
    :goto_6
    move-object/from16 v0, v76

    array-length v4, v0

    move/from16 v0, v59

    if-ge v0, v4, :cond_14

    .line 317
    aget-object v71, v70, v59

    .line 318
    .restart local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v34, 0x0

    .line 319
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v71

    array-length v5, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_11

    aget-object v69, v71, v4

    .line 320
    .restart local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v69

    instance-of v15, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v15, :cond_12

    move-object/from16 v34, v69

    .line 321
    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 325
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_11
    if-nez v34, :cond_13

    .line 326
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    .restart local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 329
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_13
    aget-object v16, v76, v59

    .line 330
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v59

    .line 331
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 332
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 333
    .restart local v19    # "ordinal":I
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 334
    .restart local v20    # "serialzeFeatures":I
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 335
    .restart local v21    # "parserFeatures":I
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v22, v13

    move-object/from16 v24, p0

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v20

    move/from16 v30, v21

    invoke-direct/range {v22 .. v30}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 337
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 316
    add-int/lit8 v59, v59, 0x1

    goto :goto_6

    .line 340
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_14
    new-instance v22, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v6

    move-object/from16 v27, v9

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    invoke-direct/range {v22 .. v30}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v4, v22

    goto/16 :goto_2

    .line 342
    .end local v59    # "i":I
    .end local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_15
    if-nez v61, :cond_29

    .line 343
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    .line 345
    .local v52, "className":Ljava/lang/String;
    const/16 v72, 0x0

    .line 346
    .local v72, "paramNames":[Ljava/lang/String;
    if-eqz v64, :cond_1a

    move-object/from16 v0, v54

    array-length v4, v0

    if-lez v4, :cond_1a

    .line 347
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v72

    .line 348
    invoke-static/range {v54 .. v54}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 349
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 407
    :cond_16
    :goto_8
    const/16 v76, 0x0

    .line 408
    .restart local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v72, :cond_17

    .line 409
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 412
    :cond_17
    if-eqz v72, :cond_27

    move-object/from16 v0, v76

    array-length v4, v0

    move-object/from16 v0, v72

    array-length v5, v0

    if-ne v4, v5, :cond_27

    .line 414
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v70

    .line 415
    .restart local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v59, 0x0

    .restart local v59    # "i":I
    :goto_9
    move-object/from16 v0, v76

    array-length v4, v0

    move/from16 v0, v59

    if-ge v0, v4, :cond_26

    .line 416
    aget-object v71, v70, v59

    .line 417
    .restart local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    aget-object v23, v72, v59

    .line 419
    .local v23, "paramName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 420
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v71

    array-length v5, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_18

    aget-object v69, v71, v4

    .line 421
    .restart local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v69

    instance-of v15, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v15, :cond_22

    move-object/from16 v34, v69

    .line 422
    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 427
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_18
    aget-object v16, v76, v59

    .line 428
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v17, v4, v59

    .line 429
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 430
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-eqz v18, :cond_19

    .line 431
    if-nez v34, :cond_19

    .line 432
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v34

    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 436
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_19
    if-nez v34, :cond_24

    .line 437
    const/16 v19, 0x0

    .line 438
    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .line 440
    .restart local v20    # "serialzeFeatures":I
    const-string v4, "org.springframework.security.core.userdetails.User"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "password"

    .line 441
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 442
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v21, v0

    .line 455
    .restart local v21    # "parserFeatures":I
    :goto_b
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v13

    move-object/from16 v24, p0

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v20

    move/from16 v30, v21

    invoke-direct/range {v22 .. v30}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 457
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 415
    add-int/lit8 v59, v59, 0x1

    goto :goto_9

    .line 352
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v23    # "paramName":Ljava/lang/String;
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v59    # "i":I
    .end local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1a
    move-object/from16 v0, v54

    array-length v5, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v5, :cond_16

    aget-object v53, v54, v4

    .line 353
    .local v53, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v73

    .line 355
    .local v73, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v15, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 356
    move-object/from16 v0, v73

    array-length v15, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x0

    aget-object v15, v73, v15

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x1

    aget-object v15, v73, v15

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1b

    .line 357
    move-object/from16 v8, v53

    .line 358
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 359
    invoke-static/range {v53 .. v53}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v72

    .line 360
    goto/16 :goto_8

    .line 364
    :cond_1b
    const-string v15, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 365
    move-object/from16 v0, v73

    array-length v15, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x0

    aget-object v15, v73, v15

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x1

    aget-object v15, v73, v15

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x2

    aget-object v15, v73, v15

    const-class v22, Ljava/util/Collection;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1c

    .line 369
    move-object/from16 v8, v53

    .line 370
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 371
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v72, v0

    .end local v72    # "paramNames":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "principal"

    aput-object v5, v72, v4

    const/4 v4, 0x1

    const-string v5, "credentials"

    aput-object v5, v72, v4

    const/4 v4, 0x2

    const-string v5, "authorities"

    aput-object v5, v72, v4

    .line 372
    .restart local v72    # "paramNames":[Ljava/lang/String;
    goto/16 :goto_8

    .line 376
    :cond_1c
    const-string v15, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 377
    move-object/from16 v0, v73

    array-length v15, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_1d

    const/4 v15, 0x0

    aget-object v15, v73, v15

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1d

    .line 379
    move-object/from16 v8, v53

    .line 380
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v72, v0

    .end local v72    # "paramNames":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "authority"

    aput-object v5, v72, v4

    .line 381
    .restart local v72    # "paramNames":[Ljava/lang/String;
    goto/16 :goto_8

    .line 388
    :cond_1d
    invoke-virtual/range {v53 .. v53}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_1f

    const/16 v62, 0x1

    .line 389
    .local v62, "is_public":Z
    :goto_d
    if-nez v62, :cond_20

    .line 352
    :cond_1e
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 388
    .end local v62    # "is_public":Z
    :cond_1f
    const/16 v62, 0x0

    goto :goto_d

    .line 392
    .restart local v62    # "is_public":Z
    :cond_20
    invoke-static/range {v53 .. v53}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v65

    .line 393
    .restart local v65    # "lookupParameterNames":[Ljava/lang/String;
    if-eqz v65, :cond_1e

    move-object/from16 v0, v65

    array-length v15, v0

    if-eqz v15, :cond_1e

    .line 397
    if-eqz v8, :cond_21

    if-eqz v72, :cond_21

    move-object/from16 v0, v65

    array-length v15, v0

    move-object/from16 v0, v72

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v15, v0, :cond_1e

    .line 402
    :cond_21
    move-object/from16 v72, v65

    .line 403
    move-object/from16 v8, v53

    goto :goto_e

    .line 420
    .end local v53    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v62    # "is_public":Z
    .end local v65    # "lookupParameterNames":[Ljava/lang/String;
    .end local v73    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v23    # "paramName":Ljava/lang/String;
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v59    # "i":I
    .restart local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 444
    .end local v69    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    .restart local v19    # "ordinal":I
    .restart local v20    # "serialzeFeatures":I
    :cond_23
    const/16 v21, 0x0

    .restart local v21    # "parserFeatures":I
    goto/16 :goto_b

    .line 447
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    :cond_24
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v68

    .line 448
    .local v68, "nameAnnotated":Ljava/lang/String;
    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_25

    .line 449
    move-object/from16 v23, v68

    .line 451
    :cond_25
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 452
    .restart local v19    # "ordinal":I
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 453
    .restart local v20    # "serialzeFeatures":I
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .restart local v21    # "parserFeatures":I
    goto/16 :goto_b

    .line 460
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v23    # "paramName":Ljava/lang/String;
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v68    # "nameAnnotated":Ljava/lang/String;
    .end local v71    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_26
    if-nez v64, :cond_29

    .line 461
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "javax.servlet.http.Cookie"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 462
    new-instance v24, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, v6

    move-object/from16 v28, v8

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    invoke-direct/range {v24 .. v32}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v4, v24

    goto/16 :goto_2

    .line 465
    .end local v59    # "i":I
    .end local v70    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_27
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "default constructor not found. "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v52    # "className":Ljava/lang/String;
    .end local v72    # "paramNames":[Ljava/lang/String;
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_28
    move-object/from16 v8, v55

    .line 470
    .end local v55    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_29
    if-eqz v7, :cond_2a

    .line 471
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 474
    :cond_2a
    if-eqz v6, :cond_39

    .line 475
    const/16 v77, 0x0

    .line 477
    .local v77, "withPrefix":Ljava/lang/String;
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v48

    check-cast v48, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 478
    .local v48, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    if-eqz v48, :cond_2b

    .line 479
    invoke-interface/range {v48 .. v48}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v77

    .line 482
    :cond_2b
    if-eqz v77, :cond_2c

    invoke-virtual/range {v77 .. v77}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    .line 483
    :cond_2c
    const-string/jumbo v77, "with"

    .line 486
    :cond_2d
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v15, v5

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v15, :cond_33

    aget-object v26, v5, v4

    .line 487
    .local v26, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 486
    :cond_2e
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 491
    :cond_2f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 495
    const/16 v19, 0x0

    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .restart local v20    # "serialzeFeatures":I
    const/16 v21, 0x0

    .line 497
    .restart local v21    # "parserFeatures":I
    const-class v22, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 499
    .local v33, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v33, :cond_30

    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v33

    .line 503
    :cond_30
    if-eqz v33, :cond_31

    .line 504
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 508
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 509
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 510
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 512
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_31

    .line 513
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 514
    .local v25, "propertyName":Ljava/lang/String;
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v27, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-direct/range {v24 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_10

    .line 520
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v66

    .line 522
    .local v66, "methodName":Ljava/lang/String;
    const-string v22, "set"

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_32

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_32

    .line 523
    new-instance v74, Ljava/lang/StringBuilder;

    const/16 v22, 0x3

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v74

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .local v74, "properNameBuilder":Ljava/lang/StringBuilder;
    :goto_11
    const/16 v22, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v50

    .line 537
    .local v50, "c0":C
    invoke-static/range {v50 .. v50}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 541
    const/16 v22, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v24

    move-object/from16 v0, v74

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 543
    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 545
    .restart local v25    # "propertyName":Ljava/lang/String;
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v27, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-direct/range {v24 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_10

    .line 525
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v50    # "c0":C
    .end local v74    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_32
    move-object/from16 v0, v66

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 529
    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v77 .. v77}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_2e

    .line 533
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-virtual/range {v77 .. v77}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v74

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v74    # "properNameBuilder":Ljava/lang/StringBuilder;
    goto :goto_11

    .line 549
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v66    # "methodName":Ljava/lang/String;
    .end local v74    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_33
    if-eqz v6, :cond_39

    .line 550
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v49

    check-cast v49, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 552
    .local v49, "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    const/16 v47, 0x0

    .line 553
    .local v47, "buildMethodName":Ljava/lang/String;
    if-eqz v49, :cond_34

    .line 554
    invoke-interface/range {v49 .. v49}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v47

    .line 557
    :cond_34
    if-eqz v47, :cond_35

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_36

    .line 558
    :cond_35
    const-string v47, "build"

    .line 562
    :cond_36
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 569
    :goto_12
    if-nez v10, :cond_37

    .line 571
    :try_start_1
    const-string v4, "create"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 579
    :cond_37
    :goto_13
    if-nez v10, :cond_38

    .line 580
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "buildMethod not found."

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_38
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 587
    .end local v47    # "buildMethodName":Ljava/lang/String;
    .end local v48    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v49    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v77    # "withPrefix":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v67

    array-length v5, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v5, :cond_4a

    aget-object v26, v67, v4

    .line 588
    .restart local v26    # "method":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    .restart local v19    # "ordinal":I
    const/16 v20, 0x0

    .restart local v20    # "serialzeFeatures":I
    const/16 v21, 0x0

    .line 589
    .restart local v21    # "parserFeatures":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v66

    .line 591
    .restart local v66    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 587
    :cond_3a
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 596
    :cond_3b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v75

    .line 597
    .local v75, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v75

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, v75

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 601
    :cond_3c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-eq v15, v0, :cond_3a

    .line 605
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 607
    .restart local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v15, v0

    if-eqz v15, :cond_3a

    move-object/from16 v0, v76

    array-length v15, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v15, v0, :cond_3a

    .line 611
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 612
    .restart local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v33, :cond_3d

    move-object/from16 v0, v76

    array-length v15, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v15, v0, :cond_3d

    const/4 v15, 0x0

    aget-object v15, v76, v15

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_3d

    const/4 v15, 0x1

    aget-object v15, v76, v15

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_3d

    .line 616
    new-instance v34, Lcom/alibaba/fastjson/util/FieldInfo;

    const-string v35, ""

    const/16 v37, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v36, v26

    move-object/from16 v38, p0

    move-object/from16 v39, p1

    move/from16 v40, v19

    move/from16 v41, v20

    move/from16 v42, v21

    move-object/from16 v43, v33

    invoke-direct/range {v34 .. v45}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_15

    .line 621
    :cond_3d
    move-object/from16 v0, v76

    array-length v15, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_3a

    .line 625
    if-nez v33, :cond_3e

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v33

    .line 629
    :cond_3e
    if-nez v33, :cond_3f

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v15, v0, :cond_3a

    .line 633
    :cond_3f
    if-eqz v33, :cond_40

    .line 634
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 638
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 639
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 640
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 642
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_40

    .line 643
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 644
    .restart local v25    # "propertyName":Ljava/lang/String;
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v27, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-direct/range {v24 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 650
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_40
    if-nez v33, :cond_41

    const-string v15, "set"

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 654
    :cond_41
    const/4 v15, 0x3

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v51

    .line 657
    .local v51, "c3":C
    invoke-static/range {v51 .. v51}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v15

    if-nez v15, :cond_42

    const/16 v15, 0x200

    move/from16 v0, v51

    if-le v0, v15, :cond_45

    .line 660
    :cond_42
    sget-boolean v15, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v15, :cond_44

    .line 661
    const/4 v15, 0x3

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 675
    .restart local v25    # "propertyName":Ljava/lang/String;
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 676
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-nez v18, :cond_43

    const/4 v15, 0x0

    aget-object v15, v76, v15

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_43

    .line 677
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "is"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v22, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v22, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 678
    .local v60, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 681
    .end local v60    # "isFieldName":Ljava/lang/String;
    :cond_43
    const/16 v34, 0x0

    .line 682
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v18, :cond_48

    .line 683
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v34

    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 685
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v34, :cond_48

    .line 686
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 690
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 691
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 692
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v21

    .line 694
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_48

    .line 695
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 696
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v35, 0x0

    move-object/from16 v27, v18

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-direct/range {v24 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 663
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_44
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x3

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v22, 0x4

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 665
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_45
    const/16 v15, 0x5f

    move/from16 v0, v51

    if-ne v0, v15, :cond_46

    .line 666
    const/4 v15, 0x4

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 667
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_46
    const/16 v15, 0x66

    move/from16 v0, v51

    if-ne v0, v15, :cond_47

    .line 668
    const/4 v15, 0x3

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 669
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_47
    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v22, 0x5

    move/from16 v0, v22

    if-lt v15, v0, :cond_3a

    const/4 v15, 0x4

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 670
    const/4 v15, 0x3

    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "propertyName":Ljava/lang/String;
    goto/16 :goto_16

    .line 704
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_48
    if-eqz p2, :cond_49

    .line 705
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 708
    :cond_49
    new-instance v24, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v35, 0x0

    move-object/from16 v27, v18

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v30, v19

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-direct/range {v24 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_15

    .line 712
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v51    # "c3":C
    .end local v66    # "methodName":Ljava/lang/String;
    .end local v75    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v76    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v58

    .line 713
    .restart local v58    # "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v58

    invoke-static {v0, v1, v2, v12, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v15, v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v15, :cond_52

    aget-object v26, v5, v4

    .line 716
    .restart local v26    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v66

    .line 717
    .restart local v66    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_4c

    .line 715
    :cond_4b
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 721
    :cond_4c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    if-nez v22, :cond_4b

    .line 725
    if-nez v6, :cond_4b

    const-string v22, "get"

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4b

    const/16 v22, 0x3

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v22

    if-eqz v22, :cond_4b

    .line 726
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_4b

    .line 730
    const-class v22, Ljava/util/Collection;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_4d

    const-class v22, Ljava/util/Map;

    .line 731
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_4d

    const-class v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 732
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4d

    const-class v22, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 733
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4d

    const-class v22, Ljava/util/concurrent/atomic/AtomicLong;

    .line 734
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4b

    .line 738
    :cond_4d
    const-class v22, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 739
    .restart local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v33, :cond_4e

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v22

    if-nez v22, :cond_4b

    .line 743
    :cond_4e
    if-eqz v33, :cond_51

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_51

    .line 744
    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 757
    .restart local v25    # "propertyName":Ljava/lang/String;
    :cond_4f
    if-eqz p2, :cond_50

    .line 758
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 761
    :cond_50
    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v13

    .line 762
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v13, :cond_4b

    .line 766
    new-instance v35, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v36, v25

    move-object/from16 v37, v26

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v44, v33

    invoke-direct/range {v35 .. v46}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_18

    .line 746
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v25    # "propertyName":Ljava/lang/String;
    :cond_51
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x3

    move-object/from16 v0, v66

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x4

    move-object/from16 v0, v66

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 748
    .restart local v25    # "propertyName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 749
    .restart local v18    # "field":Ljava/lang/reflect/Field;
    if-eqz v18, :cond_4f

    .line 750
    const-class v22, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v34

    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 751
    .restart local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v34, :cond_4f

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v22

    if-nez v22, :cond_4f

    goto/16 :goto_18

    .line 771
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v25    # "propertyName":Ljava/lang/String;
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v34    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v66    # "methodName":Ljava/lang/String;
    :cond_52
    new-instance v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    goto/16 :goto_2

    .line 574
    .end local v58    # "fields":[Ljava/lang/reflect/Field;
    .restart local v47    # "buildMethodName":Ljava/lang/String;
    .restart local v48    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v49    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v77    # "withPrefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_13

    .line 572
    :catch_1
    move-exception v4

    goto/16 :goto_13

    .line 565
    :catch_2
    move-exception v4

    goto/16 :goto_12

    .line 563
    :catch_3
    move-exception v4

    goto/16 :goto_12
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 21
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v5, p4, v19

    .line 776
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    .line 777
    .local v17, "modifiers":I
    and-int/lit8 v2, v17, 0x8

    if-eqz v2, :cond_1

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_0

    .line 781
    :cond_1
    and-int/lit8 v2, v17, 0x10

    if-eqz v2, :cond_3

    .line 782
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 783
    .local v15, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/Collection;

    .line 784
    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 785
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 786
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 787
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const/16 v18, 0x1

    .line 788
    .local v18, "supportReadOnly":Z
    :goto_2
    if-eqz v18, :cond_0

    .line 793
    .end local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "supportReadOnly":Z
    :cond_3
    const/4 v14, 0x0

    .line 794
    .local v14, "contains":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 795
    .local v16, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 796
    const/4 v14, 0x1

    .line 801
    .end local v16    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    if-nez v14, :cond_0

    .line 805
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/4 v9, 0x0

    .local v9, "serialzeFeatures":I
    const/4 v10, 0x0

    .line 806
    .local v10, "parserFeatures":I
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "propertyName":Ljava/lang/String;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 810
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_6

    .line 811
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 816
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 817
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 819
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 820
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 824
    :cond_6
    if-eqz p2, :cond_7

    .line 825
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_1

    .line 787
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v14    # "contains":Z
    .restart local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 831
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "modifiers":I
    :cond_9
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 4
    .param p1, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 947
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    const-string v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 961
    :cond_0
    :goto_0
    return-object v0

    .line 951
    :cond_1
    if-nez p1, :cond_2

    move-object v0, v1

    .line 952
    goto :goto_0

    .line 955
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v0

    .line 957
    .local v0, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 958
    goto :goto_0
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 19
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 864
    const/4 v4, 0x0

    .line 866
    .local v4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    array-length v13, v0

    const/4 v12, 0x0

    move-object v6, v4

    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v6, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v3, p0, v12

    .line 867
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 868
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v1, :cond_c

    .line 869
    if-eqz v6, :cond_0

    .line 870
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "multi-JSONCreator"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 873
    :cond_0
    move-object v4, v3

    .line 866
    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object v6, v4

    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 877
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    if-eqz v6, :cond_2

    move-object v4, v6

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v5, v6

    .line 914
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    return-object v5

    .line 881
    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    move-object/from16 v0, p0

    array-length v15, v0

    const/4 v12, 0x0

    move v14, v12

    :goto_3
    if-ge v14, v15, :cond_9

    aget-object v2, p0, v14

    .line 882
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 883
    .local v10, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v12, v10

    if-nez v12, :cond_3

    move-object v4, v6

    .line 881
    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_4
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move-object v6, v4

    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_3

    .line 886
    :cond_3
    const/4 v7, 0x1

    .line 887
    .local v7, "match":Z
    array-length v0, v10

    move/from16 v16, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v9, v10, v13

    .line 888
    .local v9, "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    const/4 v11, 0x0

    .line 889
    .local v11, "paramMatch":Z
    array-length v0, v9

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    aget-object v8, v9, v12

    .line 890
    .local v8, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v0, v8, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 891
    const/4 v11, 0x1

    .line 895
    .end local v8    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_4
    if-nez v11, :cond_7

    .line 896
    const/4 v7, 0x0

    .line 901
    .end local v9    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v11    # "paramMatch":Z
    :cond_5
    if-eqz v7, :cond_b

    .line 902
    if-eqz v6, :cond_8

    .line 903
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "multi-JSONCreator"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 889
    .restart local v8    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v9    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .restart local v11    # "paramMatch":Z
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 887
    .end local v8    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_5

    .line 906
    .end local v9    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v11    # "paramMatch":Z
    :cond_8
    move-object v4, v2

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_4

    .line 910
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "match":Z
    .end local v10    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_9
    if-eqz v6, :cond_a

    move-object v4, v6

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v5, v6

    .line 911
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_2

    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_a
    move-object v4, v6

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v5, v6

    .line 914
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_2

    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "match":Z
    .restart local v10    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_b
    move-object v4, v6

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_4

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "match":Z
    .end local v10    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_c
    move-object v4, v6

    .end local v6    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 834
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    const/4 v1, 0x0

    .line 860
    :cond_0
    :goto_0
    return-object v1

    .line 838
    :cond_1
    const/4 v1, 0x0

    .line 840
    .local v1, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v5, p1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, p1, v3

    .line 841
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_3

    .line 842
    move-object v1, v0

    .line 847
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v1, :cond_0

    .line 848
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v0, p1, v3

    .line 851
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    aget-object v6, v2, v4

    .line 852
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 853
    move-object v1, v0

    .line 854
    goto :goto_0

    .line 840
    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 850
    .restart local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 920
    .local v1, "factoryMethod":Ljava/lang/reflect/Method;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p1, v3

    .line 921
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 920
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 929
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 930
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_0

    .line 931
    if-eqz v1, :cond_2

    .line 932
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "multi-JSONCreator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 935
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 939
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 168
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return-object v1

    .line 172
    .restart local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    iget-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 173
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 177
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
