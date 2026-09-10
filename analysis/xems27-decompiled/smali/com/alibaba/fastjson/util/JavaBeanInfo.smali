.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
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
    .locals 19
    .param p5, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p8, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    iput-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object v2, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object v3, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v7

    iput v7, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    iput-object v4, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 66
    const/4 v8, 0x0

    if-eqz v4, :cond_3

    .line 67
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "typeName":Ljava/lang/String;
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "typeKey":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    move-object v11, v8

    :goto_0
    iput-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 72
    iput-object v9, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_1
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "orders":[Ljava/lang/String;
    array-length v12, v11

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v11

    :goto_2
    iput-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 78
    .end local v9    # "typeName":Ljava/lang/String;
    .end local v10    # "typeKey":Ljava/lang/String;
    .end local v11    # "orders":[Ljava/lang/String;
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    iput-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    iput-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    :goto_3
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    move-object/from16 v9, p8

    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    iget-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v8

    new-array v10, v10, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    .local v10, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 89
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    .local v8, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    iget-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v13, v11

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    .line 91
    .local v15, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v12, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v15    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 93
    :cond_4
    const/4 v11, 0x0

    .line 94
    .local v11, "i":I
    iget-object v12, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    .line 95
    .local v15, "item":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 96
    .local v17, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v17, :cond_5

    .line 97
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "i":I
    .local v18, "i":I
    aput-object v17, v10, v11

    .line 98
    invoke-virtual {v8, v15}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v11, v18

    .line 94
    .end local v15    # "item":Ljava/lang/String;
    .end local v17    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "i":I
    .restart local v11    # "i":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 101
    :cond_6
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 102
    .local v13, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "i":I
    .local v14, "i":I
    aput-object v13, v10, v11

    .line 103
    .end local v13    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    move v11, v14

    goto :goto_6

    .line 104
    .end local v8    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v14    # "i":I
    :cond_7
    goto :goto_7

    .line 105
    :cond_8
    array-length v11, v8

    const/4 v12, 0x0

    invoke-static {v8, v12, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :goto_7
    iget-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v8, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 110
    iget-object v10, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 112
    :cond_9
    iput-object v10, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 114
    if-eqz v1, :cond_a

    .line 115
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    iput v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    const/4 v12, 0x0

    goto :goto_8

    .line 116
    :cond_a
    if-eqz v3, :cond_b

    .line 117
    invoke-virtual/range {p5 .. p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    iput v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    const/4 v12, 0x0

    goto :goto_8

    .line 119
    :cond_b
    const/4 v12, 0x0

    iput v12, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 122
    :goto_8
    if-eqz v2, :cond_14

    .line 123
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 125
    array-length v8, v8

    iget-object v11, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v11

    if-eq v8, v11, :cond_c

    .line 126
    const/4 v8, 0x0

    .local v8, "match":Z
    goto :goto_a

    .line 128
    .end local v8    # "match":Z
    :cond_c
    const/4 v8, 0x1

    .line 129
    .restart local v8    # "match":Z
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    iget-object v13, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v14, v13

    if-ge v11, v14, :cond_e

    .line 130
    aget-object v13, v13, v11

    iget-object v14, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v14, v14, v11

    iget-object v14, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v13, v14, :cond_d

    .line 131
    const/4 v8, 0x0

    .line 132
    goto :goto_a

    .line 129
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 137
    .end local v11    # "i":I
    :cond_e
    :goto_a
    if-nez v8, :cond_14

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v11

    .line 139
    .local v11, "kotlin":Z
    if-eqz v11, :cond_13

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 142
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    .line 143
    .local v13, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    iget-object v15, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_12

    array-length v15, v13

    if-ge v14, v15, :cond_12

    .line 144
    aget-object v15, v13, v14

    .line 145
    .local v15, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v16, 0x0

    .line 146
    .local v16, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v12, v15

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v12, :cond_10

    aget-object v2, v15, v1

    .line 147
    .local v2, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v3, v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_f

    .line 148
    move-object/from16 v16, v2

    check-cast v16, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 149
    goto :goto_d

    .line 146
    .end local v2    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_c

    .line 152
    :cond_10
    :goto_d
    if-eqz v16, :cond_11

    .line 153
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "fieldAnnotationName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 155
    iget-object v2, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object v1, v2, v14

    .line 143
    .end local v1    # "fieldAnnotationName":Ljava/lang/String;
    .end local v15    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v12, 0x0

    goto :goto_b

    .line 159
    .end local v13    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v14    # "i":I
    :cond_12
    goto :goto_e

    .line 160
    :cond_13
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 164
    .end local v8    # "match":Z
    .end local v11    # "kotlin":Z
    :cond_14
    :goto_e
    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 182
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 185
    .local v2, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_0

    .line 187
    goto :goto_1

    .line 190
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    goto :goto_2

    .line 195
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v3

    .line 197
    .local v3, "result":I
    if-gez v3, :cond_2

    .line 198
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    goto :goto_2

    .line 201
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 182
    .end local v2    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "result":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 211
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 55
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .param p4, "compatibleWithJavaBean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 220
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 221
    .local v12, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v12, :cond_0

    .line 222
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 223
    .local v0, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    .line 224
    move-object v1, v0

    move-object v11, v1

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v1, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    goto :goto_0

    .line 228
    .end local v0    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v1    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_0
    move-object/from16 v11, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v11, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_0
    invoke-static {v14, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v10

    .line 230
    .local v10, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 231
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 233
    .local v9, "methods":[Ljava/lang/reflect/Method;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v19

    .line 234
    .local v19, "kotlin":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 236
    .local v8, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v0, 0x0

    .line 237
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    if-eqz v19, :cond_2

    array-length v1, v8

    if-ne v1, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v20, v0

    goto :goto_2

    .line 238
    :cond_2
    :goto_1
    if-nez v10, :cond_3

    .line 239
    invoke-static {v14, v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v20, v0

    .line 245
    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v20, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    const/4 v0, 0x0

    .line 246
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x0

    .line 247
    .local v21, "buildMethod":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 249
    .local v16, "factoryMethod":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 251
    .local v6, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-eqz p3, :cond_5

    .line 252
    move-object/from16 v1, p0

    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 255
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v14, v13, v11, v6, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 252
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 257
    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v17, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v4, v20

    move-object v7, v6

    .end local v6    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v7, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v6, v16

    move-object/from16 p2, v7

    .end local v7    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local p2, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v7, v21

    move-object/from16 v22, v8

    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    move-object v8, v12

    move-object v13, v9

    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .local v13, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v17

    .line 260
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v6    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v8    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    move-object/from16 p2, v6

    move-object/from16 v22, v8

    move-object v13, v9

    .end local v6    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v13    # "methods":[Ljava/lang/reflect/Method;
    .restart local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    move/from16 v23, v1

    .line 261
    .local v23, "isInterfaceOrAbstract":Z
    if-nez v20, :cond_8

    if-eqz v10, :cond_9

    :cond_8
    if-eqz v23, :cond_31

    .line 262
    :cond_9
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_12

    if-nez v23, :cond_12

    .line 265
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 269
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 270
    .local v1, "lookupParameterNames":[Ljava/lang/String;
    array-length v2, v5

    if-lez v2, :cond_11

    .line 271
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v17

    .line 272
    .local v17, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    move v4, v2

    .local v4, "i":I
    :goto_6
    array-length v2, v5

    if-ge v4, v2, :cond_10

    .line 273
    aget-object v3, v17, v4

    .line 274
    .local v3, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 275
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v6, v3

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_b

    aget-object v8, v3, v7

    .line 276
    .local v8, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v9, v8, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v9, :cond_a

    .line 277
    move-object v2, v8

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 278
    move-object/from16 v27, v2

    goto :goto_8

    .line 275
    .end local v8    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v27, v2

    .line 282
    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v27, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_8
    aget-object v28, v5, v4

    .line 283
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v29, v2, v4

    .line 285
    .local v29, "fieldType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 286
    .local v2, "fieldName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 287
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .local v7, "ordinal":I
    const/4 v8, 0x0

    .local v8, "serialzeFeatures":I
    const/4 v9, 0x0

    .line 288
    .local v9, "parserFeatures":I
    if-eqz v27, :cond_c

    .line 289
    move-object/from16 v30, v2

    .end local v2    # "fieldName":Ljava/lang/String;
    .local v30, "fieldName":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 290
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 291
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 292
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 293
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    .end local v30    # "fieldName":Ljava/lang/String;
    .restart local v2    # "fieldName":Ljava/lang/String;
    goto :goto_9

    .line 288
    :cond_c
    move-object/from16 v30, v2

    .end local v2    # "fieldName":Ljava/lang/String;
    .restart local v30    # "fieldName":Ljava/lang/String;
    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v30, v6

    .line 296
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "ordinal":I
    .end local v8    # "serialzeFeatures":I
    .end local v9    # "parserFeatures":I
    .restart local v2    # "fieldName":Ljava/lang/String;
    .local v30, "field":Ljava/lang/reflect/Field;
    .local v31, "ordinal":I
    .local v32, "serialzeFeatures":I
    .local v33, "parserFeatures":I
    :goto_9
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v34, v1

    move-object/from16 v35, v2

    goto :goto_b

    .line 297
    :cond_e
    :goto_a
    if-nez v1, :cond_f

    .line 298
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_f
    aget-object v2, v1, v4

    move-object/from16 v34, v1

    move-object/from16 v35, v2

    .line 303
    .end local v1    # "lookupParameterNames":[Ljava/lang/String;
    .end local v2    # "fieldName":Ljava/lang/String;
    .local v34, "lookupParameterNames":[Ljava/lang/String;
    .local v35, "fieldName":Ljava/lang/String;
    :goto_b
    new-instance v36, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    move-object/from16 v37, v3

    .end local v3    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v37, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v3, p0

    move/from16 v38, v4

    .end local v4    # "i":I
    .local v38, "i":I
    move-object/from16 v4, v28

    move-object/from16 v39, v5

    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v39, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v5, v29

    const/4 v9, 0x3

    move-object/from16 v6, v30

    const/4 v8, 0x1

    move/from16 v7, v31

    move-object/from16 v24, v11

    move-object/from16 v18, v12

    const/4 v11, 0x1

    const/4 v12, 0x2

    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v18, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v24, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move/from16 v8, v32

    const/4 v11, 0x0

    move/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 305
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v9, p2

    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v9, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v9, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 272
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v27    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "fieldType":Ljava/lang/reflect/Type;
    .end local v30    # "field":Ljava/lang/reflect/Field;
    .end local v31    # "ordinal":I
    .end local v32    # "serialzeFeatures":I
    .end local v33    # "parserFeatures":I
    .end local v35    # "fieldName":Ljava/lang/String;
    .end local v37    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v4, v38, 0x1

    move-object/from16 v12, v18

    move-object/from16 v11, v24

    move-object/from16 v1, v34

    move-object/from16 v5, v39

    const/4 v7, 0x1

    .end local v38    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_6

    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v34    # "lookupParameterNames":[Ljava/lang/String;
    .end local v39    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v1, "lookupParameterNames":[Ljava/lang/String;
    .restart local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_10
    move-object/from16 v9, p2

    move/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v24, v11

    move-object/from16 v18, v12

    const/4 v11, 0x0

    const/4 v12, 0x2

    .end local v4    # "i":I
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v38    # "i":I
    .restart local v39    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_c

    .line 270
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v38    # "i":I
    .end local v39    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_11
    move-object/from16 v9, p2

    move-object/from16 v39, v5

    move-object/from16 v24, v11

    move-object/from16 v18, v12

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 310
    .end local v1    # "lookupParameterNames":[Ljava/lang/String;
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_c
    move-object v12, v9

    move-object/from16 v40, v10

    move-object v11, v14

    move-object/from16 v39, v16

    move-object/from16 v38, v22

    move-object/from16 v16, v0

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v15, v24

    move-object/from16 v24, v18

    goto/16 :goto_1b

    .line 264
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_12
    move-object/from16 v9, p2

    move-object/from16 v24, v11

    move-object/from16 v18, v12

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 310
    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v8, v15

    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    move-object v15, v1

    .end local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_18

    .line 311
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 313
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 314
    .local v7, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v7

    if-lez v1, :cond_17

    .line 315
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v25

    .line 316
    .local v25, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_d
    array-length v1, v7

    if-ge v12, v1, :cond_16

    .line 317
    aget-object v6, v25, v12

    .line 318
    .local v6, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .line 319
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v2, v6

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_14

    aget-object v4, v6, v3

    .line 320
    .local v4, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v5, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_13

    .line 321
    move-object v1, v4

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 322
    move-object/from16 v16, v1

    goto :goto_f

    .line 319
    .end local v4    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_14
    move-object/from16 v16, v1

    .line 325
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v16, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_f
    if-eqz v16, :cond_15

    .line 329
    aget-object v17, v7, v12

    .line 330
    .local v17, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v26, v1, v12

    .line 331
    .local v26, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v27

    .line 332
    .local v27, "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v28

    .line 333
    .local v28, "ordinal":I
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    .line 334
    .local v29, "serialzeFeatures":I
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 335
    .local v30, "parserFeatures":I
    new-instance v31, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, v31

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v26

    move-object/from16 v32, v6

    .end local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v32, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v6, v27

    move-object/from16 v33, v7

    .end local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v33, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move/from16 v7, v28

    move-object/from16 v41, v8

    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v41, "declaredFields":[Ljava/lang/reflect/Field;
    move/from16 v8, v29

    move-object v14, v9

    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v14, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v9, v30

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 337
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v14, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 316
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "fieldType":Ljava/lang/reflect/Type;
    .end local v27    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "ordinal":I
    .end local v29    # "serialzeFeatures":I
    .end local v30    # "parserFeatures":I
    .end local v32    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v12, v12, 0x1

    move-object v9, v14

    move-object/from16 v7, v33

    move-object/from16 v8, v41

    move-object/from16 v14, p0

    goto :goto_d

    .line 326
    .end local v14    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v33    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal json creator"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    .end local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_16
    move-object/from16 v33, v7

    move-object/from16 v41, v8

    move-object v14, v9

    .line 340
    .end local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v12    # "i":I
    .restart local v14    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v33    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v9, v10

    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v9, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v10, v1

    move-object/from16 v8, v24

    .end local v24    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v8, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v11, p0

    move-object/from16 v24, v18

    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v24, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object v12, v9

    move-object/from16 v7, p1

    move-object v6, v13

    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v13, v2

    move-object/from16 v5, p0

    move-object v4, v14

    .end local v14    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v4, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v14, v3

    move-object/from16 v17, v24

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v1

    .line 314
    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v33    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    .local v9, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v24, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_17
    move-object/from16 v33, v7

    move-object/from16 v41, v8

    move-object v4, v9

    move-object v9, v10

    move-object v6, v13

    move-object v5, v14

    move-object/from16 v8, v24

    move-object/from16 v7, p1

    move-object/from16 v24, v18

    .line 342
    .end local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v9, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v24, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    move-object v12, v4

    move-object v11, v5

    move-object v14, v6

    move-object/from16 v40, v9

    move-object/from16 v39, v15

    move-object/from16 v38, v22

    move-object/from16 v13, v41

    move-object v15, v8

    goto/16 :goto_1a

    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    .local v9, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v24, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_18
    move-object/from16 v7, p1

    move-object/from16 v41, v8

    move-object v4, v9

    move-object v9, v10

    move-object v6, v13

    move-object v5, v14

    move-object/from16 v8, v24

    move-object/from16 v24, v18

    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v9, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v24, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v23, :cond_30

    .line 343
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 346
    .local v1, "paramNames":[Ljava/lang/String;
    if-eqz v19, :cond_19

    move-object/from16 v13, v22

    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v13, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v2, v13

    if-lez v2, :cond_1a

    .line 347
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object v11, v1

    goto/16 :goto_14

    .line 346
    .end local v13    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    :cond_19
    move-object/from16 v13, v22

    .line 352
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v13    # "constructors":[Ljava/lang/reflect/Constructor;
    :cond_1a
    array-length v2, v13

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_25

    aget-object v14, v13, v3

    .line 353
    .local v14, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 355
    .local v11, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v12, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 356
    array-length v12, v11

    move/from16 v16, v2

    const/4 v2, 0x2

    if-ne v12, v2, :cond_1c

    const/4 v2, 0x0

    aget-object v12, v11, v2

    const-class v2, Ljava/lang/String;

    if-ne v12, v2, :cond_1c

    const/4 v2, 0x1

    aget-object v12, v11, v2

    const-class v2, Ljava/lang/String;

    if-ne v12, v2, :cond_1c

    .line 357
    move-object v0, v14

    .line 358
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 359
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    .line 360
    move-object v11, v1

    goto/16 :goto_14

    .line 355
    :cond_1b
    move/from16 v16, v2

    .line 364
    :cond_1c
    const-string v2, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 365
    array-length v2, v11

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1d

    const/4 v2, 0x0

    aget-object v12, v11, v2

    const-class v2, Ljava/lang/Object;

    if-ne v12, v2, :cond_1d

    const/4 v2, 0x1

    aget-object v12, v11, v2

    const-class v2, Ljava/lang/Object;

    if-ne v12, v2, :cond_1d

    const/4 v12, 0x2

    aget-object v2, v11, v12

    const-class v12, Ljava/util/Collection;

    if-ne v2, v12, :cond_1d

    .line 369
    move-object v0, v14

    .line 370
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 371
    const-string v2, "principal"

    const-string v3, "credentials"

    const-string v12, "authorities"

    filled-new-array {v2, v3, v12}, [Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 372
    move-object v11, v1

    goto/16 :goto_14

    .line 376
    :cond_1d
    const-string v2, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 377
    array-length v2, v11

    const/4 v12, 0x1

    if-ne v2, v12, :cond_1e

    const/4 v12, 0x0

    aget-object v2, v11, v12

    const-class v12, Ljava/lang/String;

    if-ne v2, v12, :cond_1e

    .line 379
    move-object v0, v14

    .line 380
    const-string v2, "authority"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 381
    move-object v11, v1

    goto :goto_14

    .line 388
    :cond_1e
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    const/4 v12, 0x1

    and-int/2addr v2, v12

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    .line 389
    .local v2, "is_public":Z
    :goto_11
    if-nez v2, :cond_20

    .line 390
    move-object/from16 v22, v0

    goto :goto_12

    .line 392
    :cond_20
    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v12

    .line 393
    .local v12, "lookupParameterNames":[Ljava/lang/String;
    if-eqz v12, :cond_24

    move/from16 p2, v2

    .end local v2    # "is_public":Z
    .local p2, "is_public":Z
    array-length v2, v12

    if-nez v2, :cond_21

    .line 394
    move-object/from16 v22, v0

    goto :goto_12

    .line 397
    :cond_21
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    array-length v2, v12

    move-object/from16 v22, v0

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v22, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v0, v1

    if-gt v2, v0, :cond_23

    .line 399
    goto :goto_12

    .line 397
    .end local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_22
    move-object/from16 v22, v0

    .line 402
    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_23
    move-object v0, v12

    .line 403
    .end local v1    # "paramNames":[Ljava/lang/String;
    .local v0, "paramNames":[Ljava/lang/String;
    move-object v1, v14

    move-object/from16 v54, v1

    move-object v1, v0

    move-object/from16 v0, v54

    .end local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_13

    .line 393
    .end local p2    # "is_public":Z
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "paramNames":[Ljava/lang/String;
    .restart local v2    # "is_public":Z
    :cond_24
    move-object/from16 v22, v0

    move/from16 p2, v2

    .line 352
    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "is_public":Z
    .end local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "lookupParameterNames":[Ljava/lang/String;
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_12
    move-object/from16 v0, v22

    .end local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_13
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    const/4 v11, 0x0

    const/4 v12, 0x2

    goto/16 :goto_10

    :cond_25
    move-object/from16 v22, v0

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v11, v1

    .line 407
    .end local v1    # "paramNames":[Ljava/lang/String;
    .end local v22    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "paramNames":[Ljava/lang/String;
    :goto_14
    const/4 v1, 0x0

    .line 408
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v11, :cond_26

    .line 409
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    move-object v12, v1

    goto :goto_15

    .line 408
    :cond_26
    move-object v12, v1

    .line 412
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_15
    if-eqz v11, :cond_2f

    array-length v1, v12

    array-length v2, v11

    if-ne v1, v2, :cond_2f

    .line 414
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v14

    .line 415
    .local v14, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_16
    array-length v1, v12

    if-ge v3, v1, :cond_2d

    .line 416
    aget-object v2, v14, v3

    .line 417
    .local v2, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    aget-object v1, v11, v3

    .line 419
    .local v1, "paramName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 420
    .restart local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 p2, v4

    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local p2, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    array-length v4, v2

    move-object/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .local v22, "methods":[Ljava/lang/reflect/Method;
    :goto_17
    if-ge v6, v4, :cond_28

    move/from16 v27, v4

    aget-object v4, v2, v6

    .line 421
    .local v4, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v28, v2

    .end local v2    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v28, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    instance-of v2, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_27

    .line 422
    move-object/from16 v16, v4

    check-cast v16, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 423
    goto :goto_18

    .line 420
    .end local v4    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_27
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v27

    move-object/from16 v2, v28

    goto :goto_17

    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v2    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_28
    move-object/from16 v28, v2

    .line 427
    .end local v2    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :goto_18
    aget-object v27, v12, v3

    .line 428
    .local v27, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v29, v2, v3

    .line 429
    .local v29, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v6, v41

    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v6, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v5, v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 430
    .local v4, "field":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_29

    .line 431
    if-nez v16, :cond_29

    .line 432
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 436
    :cond_29
    if-nez v16, :cond_2b

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "ordinal":I
    const/16 v30, 0x0

    .line 440
    .local v30, "serialzeFeatures":I
    move/from16 v31, v2

    .end local v2    # "ordinal":I
    .restart local v31    # "ordinal":I
    const-string v2, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 441
    const-string v2, "password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 442
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v32, v2

    move/from16 v33, v30

    move-object/from16 v30, v1

    .local v2, "parserFeatures":I
    goto :goto_19

    .line 444
    .end local v2    # "parserFeatures":I
    :cond_2a
    const/4 v2, 0x0

    move/from16 v32, v2

    move/from16 v33, v30

    move-object/from16 v30, v1

    .restart local v2    # "parserFeatures":I
    goto :goto_19

    .line 447
    .end local v2    # "parserFeatures":I
    .end local v30    # "serialzeFeatures":I
    .end local v31    # "ordinal":I
    :cond_2b
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "nameAnnotated":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_2c

    .line 449
    move-object v1, v2

    .line 451
    :cond_2c
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v30

    .line 452
    .local v30, "ordinal":I
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v31

    .line 453
    .local v31, "serialzeFeatures":I
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v32

    move/from16 v33, v31

    move/from16 v31, v30

    move-object/from16 v30, v1

    .line 455
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "nameAnnotated":Ljava/lang/String;
    .local v30, "paramName":Ljava/lang/String;
    .local v31, "ordinal":I
    .local v32, "parserFeatures":I
    .local v33, "serialzeFeatures":I
    :goto_19
    new-instance v34, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v1, v34

    move-object/from16 v2, v30

    move/from16 v35, v3

    .end local v3    # "i":I
    .local v35, "i":I
    move-object/from16 v3, p0

    move-object/from16 v37, v4

    move-object/from16 v36, v12

    move-object/from16 v12, p2

    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v36, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v37, "field":Ljava/lang/reflect/Field;
    move-object/from16 v4, v27

    move-object/from16 p2, v11

    move-object v11, v5

    .end local v11    # "paramNames":[Ljava/lang/String;
    .local p2, "paramNames":[Ljava/lang/String;
    move-object/from16 v5, v29

    move-object/from16 v38, v13

    move-object v13, v6

    move-object/from16 v54, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v54

    .end local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v13, "declaredFields":[Ljava/lang/reflect/Field;
    .local v14, "methods":[Ljava/lang/reflect/Method;
    .local v22, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v38, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v6, v37

    move-object/from16 v39, v15

    move-object v15, v7

    .end local v15    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v39, "factoryMethod":Ljava/lang/reflect/Method;
    move/from16 v7, v31

    move-object v15, v8

    .end local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move/from16 v8, v33

    move-object/from16 v40, v9

    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v40, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v9, v32

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 457
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 415
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v29    # "fieldType":Ljava/lang/reflect/Type;
    .end local v30    # "paramName":Ljava/lang/String;
    .end local v31    # "ordinal":I
    .end local v32    # "parserFeatures":I
    .end local v33    # "serialzeFeatures":I
    .end local v37    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v3, v35, 0x1

    move-object/from16 v7, p1

    move-object v5, v11

    move-object v4, v12

    move-object/from16 v41, v13

    move-object v6, v14

    move-object v8, v15

    move-object/from16 v14, v22

    move-object/from16 v12, v36

    move-object/from16 v13, v38

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    move-object/from16 v11, p2

    .end local v35    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_16

    .end local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "paramNames":[Ljava/lang/String;
    .local v4, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v6, "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "paramNames":[Ljava/lang/String;
    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v13, "constructors":[Ljava/lang/reflect/Constructor;
    .local v14, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_2d
    move/from16 v35, v3

    move-object/from16 v40, v9

    move-object/from16 p2, v11

    move-object/from16 v36, v12

    move-object/from16 v38, v13

    move-object/from16 v22, v14

    move-object/from16 v39, v15

    move-object/from16 v13, v41

    move-object v12, v4

    move-object v11, v5

    move-object v14, v6

    move-object v15, v8

    .line 460
    .end local v3    # "i":I
    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "paramNames":[Ljava/lang/String;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "declaredFields":[Ljava/lang/reflect/Field;
    .local v14, "methods":[Ljava/lang/reflect/Method;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v36    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "paramNames":[Ljava/lang/String;
    if-nez v19, :cond_2e

    .line 461
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.servlet.http.Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 462
    new-instance v16, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, v40

    move-object v5, v0

    move-object/from16 v8, v24

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v16

    .line 464
    .end local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_2e
    move-object/from16 v16, v0

    goto :goto_1b

    .line 412
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v36    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "paramNames":[Ljava/lang/String;
    .restart local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "paramNames":[Ljava/lang/String;
    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v13, "constructors":[Ljava/lang/reflect/Constructor;
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_2f
    move-object v14, v6

    move-object/from16 v40, v9

    move-object/from16 p2, v11

    move-object/from16 v36, v12

    move-object/from16 v38, v13

    move-object/from16 v39, v15

    move-object/from16 v13, v41

    move-object v12, v4

    move-object v11, v5

    move-object v15, v8

    .line 465
    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "paramNames":[Ljava/lang/String;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v36    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "paramNames":[Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default constructor not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    .end local v10    # "className":Ljava/lang/String;
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v36    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "paramNames":[Ljava/lang/String;
    .restart local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_30
    move-object v12, v4

    move-object v11, v5

    move-object v14, v6

    move-object/from16 v40, v9

    move-object/from16 v39, v15

    move-object/from16 v38, v22

    move-object/from16 v13, v41

    move-object v15, v8

    .line 470
    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    move-object/from16 v16, v0

    goto :goto_1b

    .line 261
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v24    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v12, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v13, "methods":[Ljava/lang/reflect/Method;
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    .local v16, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .local p2, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_31
    move-object/from16 v40, v10

    move-object/from16 v24, v12

    move-object/from16 v38, v22

    move-object/from16 v12, p2

    move-object/from16 v54, v15

    move-object v15, v11

    move-object v11, v14

    move-object v14, v13

    move-object/from16 v13, v54

    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local p2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v24    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v38    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v39, v16

    move-object/from16 v16, v0

    .line 470
    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v16, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v39    # "factoryMethod":Ljava/lang/reflect/Method;
    :goto_1b
    if-eqz v20, :cond_32

    .line 471
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 474
    :cond_32
    const-string v10, "set"

    move-object/from16 v9, v40

    .end local v40    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_47

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "withPrefix":Ljava/lang/String;
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 478
    .local v22, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    if-eqz v22, :cond_33

    .line 479
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_33
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_34

    goto :goto_1c

    :cond_34
    move-object v8, v0

    goto :goto_1d

    .line 483
    :cond_35
    :goto_1c
    const-string v0, "with"

    move-object v8, v0

    .line 486
    .end local v0    # "withPrefix":Ljava/lang/String;
    .local v8, "withPrefix":Ljava/lang/String;
    :goto_1d
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v7, :cond_40

    aget-object v5, v0, v6

    .line 487
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 488
    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v34, v8

    move-object/from16 v44, v9

    move-object/from16 v46, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object v15, v12

    goto/16 :goto_22

    .line 491
    :cond_36
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 492
    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v34, v8

    move-object/from16 v44, v9

    move-object/from16 v46, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object v15, v12

    goto/16 :goto_22

    .line 495
    :cond_37
    const/4 v1, 0x0

    .local v1, "ordinal":I
    const/4 v2, 0x0

    .local v2, "serialzeFeatures":I
    const/4 v3, 0x0

    .line 497
    .local v3, "parserFeatures":I
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 499
    .local v4, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v4, :cond_38

    .line 500
    invoke-static {v11, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_1f

    .line 499
    :cond_38
    move-object/from16 v27, v4

    .line 503
    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v27, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1f
    if-eqz v27, :cond_3b

    .line 504
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v4

    if-nez v4, :cond_39

    .line 505
    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v34, v8

    move-object/from16 v44, v9

    move-object/from16 v46, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object v15, v12

    goto/16 :goto_22

    .line 508
    :cond_39
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v28

    .line 509
    .end local v1    # "ordinal":I
    .local v28, "ordinal":I
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v29

    .line 510
    .end local v2    # "serialzeFeatures":I
    .local v29, "serialzeFeatures":I
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 512
    .end local v3    # "parserFeatures":I
    .local v30, "parserFeatures":I
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 513
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v31

    .line 514
    .local v31, "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object v1, v4

    move-object/from16 v2, v31

    move-object v3, v5

    move-object/from16 v42, v4

    move-object/from16 v4, v32

    move-object/from16 v32, v5

    .end local v5    # "method":Ljava/lang/reflect/Method;
    .local v32, "method":Ljava/lang/reflect/Method;
    move-object/from16 v5, p0

    move/from16 v35, v6

    move-object/from16 v6, p1

    move/from16 v36, v7

    move/from16 v7, v28

    move-object/from16 v43, v8

    .end local v8    # "withPrefix":Ljava/lang/String;
    .local v43, "withPrefix":Ljava/lang/String;
    move/from16 v8, v29

    move-object/from16 v44, v9

    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v44, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v9, v30

    move-object/from16 v45, v10

    move-object/from16 v10, v27

    move-object/from16 v11, v33

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    const/4 v13, 0x3

    move-object v15, v12

    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local p2, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v12, v34

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v42

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 516
    move-object/from16 v34, v43

    move-object/from16 v46, v45

    goto/16 :goto_22

    .line 512
    .end local v31    # "propertyName":Ljava/lang/String;
    .end local v32    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v43    # "withPrefix":Ljava/lang/String;
    .end local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "withPrefix":Ljava/lang/String;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_3a
    move-object/from16 v32, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    const/4 v13, 0x3

    move-object v15, v12

    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "withPrefix":Ljava/lang/String;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v32    # "method":Ljava/lang/reflect/Method;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v43    # "withPrefix":Ljava/lang/String;
    .restart local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    goto :goto_20

    .line 503
    .end local v28    # "ordinal":I
    .end local v29    # "serialzeFeatures":I
    .end local v30    # "parserFeatures":I
    .end local v32    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v43    # "withPrefix":Ljava/lang/String;
    .end local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v1    # "ordinal":I
    .restart local v2    # "serialzeFeatures":I
    .restart local v3    # "parserFeatures":I
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "withPrefix":Ljava/lang/String;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_3b
    move-object/from16 v32, v5

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    const/4 v13, 0x3

    move-object v15, v12

    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "withPrefix":Ljava/lang/String;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v32    # "method":Ljava/lang/reflect/Method;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v43    # "withPrefix":Ljava/lang/String;
    .restart local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    .line 520
    .end local v1    # "ordinal":I
    .end local v2    # "serialzeFeatures":I
    .end local v3    # "parserFeatures":I
    .restart local v28    # "ordinal":I
    .restart local v29    # "serialzeFeatures":I
    .restart local v30    # "parserFeatures":I
    :goto_20
    invoke-virtual/range {v32 .. v32}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 522
    .local v12, "methodName":Ljava/lang/String;
    move-object/from16 v11, v45

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v13, :cond_3c

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    move-object/from16 v10, v43

    .local v1, "properNameBuilder":Ljava/lang/StringBuilder;
    goto :goto_21

    .line 525
    .end local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_3c
    move-object/from16 v10, v43

    .end local v43    # "withPrefix":Ljava/lang/String;
    .local v10, "withPrefix":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 526
    move-object/from16 v34, v10

    move-object/from16 v46, v11

    goto/16 :goto_22

    .line 529
    :cond_3d
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3e

    .line 530
    move-object/from16 v34, v10

    move-object/from16 v46, v11

    goto :goto_22

    .line 533
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 536
    .local v9, "properNameBuilder":Ljava/lang/StringBuilder;
    :goto_21
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    .line 537
    .local v17, "c0":C
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 538
    move-object/from16 v34, v10

    move-object/from16 v46, v11

    goto :goto_22

    .line 541
    :cond_3f
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v9, v8, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 543
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 545
    .local v18, "propertyName":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object v1, v7

    move-object/from16 v2, v18

    move-object/from16 v3, v32

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v13, v7

    move/from16 v7, v28

    move/from16 v8, v29

    move-object/from16 v33, v9

    .end local v9    # "properNameBuilder":Ljava/lang/StringBuilder;
    .local v33, "properNameBuilder":Ljava/lang/StringBuilder;
    move/from16 v9, v30

    move-object/from16 v34, v10

    .end local v10    # "withPrefix":Ljava/lang/String;
    .local v34, "withPrefix":Ljava/lang/String;
    move-object/from16 v10, v27

    move-object/from16 v46, v11

    move-object/from16 v11, v26

    move-object/from16 v26, v12

    .end local v12    # "methodName":Ljava/lang/String;
    .local v26, "methodName":Ljava/lang/String;
    move-object/from16 v12, v31

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v15, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 486
    .end local v17    # "c0":C
    .end local v18    # "propertyName":Ljava/lang/String;
    .end local v26    # "methodName":Ljava/lang/String;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28    # "ordinal":I
    .end local v29    # "serialzeFeatures":I
    .end local v30    # "parserFeatures":I
    .end local v32    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "properNameBuilder":Ljava/lang/StringBuilder;
    :goto_22
    add-int/lit8 v6, v35, 0x1

    move-object/from16 v11, p0

    move-object v12, v15

    move-object/from16 v8, v34

    move/from16 v7, v36

    move-object/from16 v13, v41

    move-object/from16 v9, v44

    move-object/from16 v10, v46

    move-object/from16 v15, p2

    goto/16 :goto_1e

    .line 549
    .end local v34    # "withPrefix":Ljava/lang/String;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v8    # "withPrefix":Ljava/lang/String;
    .local v9, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_40
    move-object/from16 v34, v8

    move-object/from16 v44, v9

    move-object/from16 v46, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object v15, v12

    .end local v8    # "withPrefix":Ljava/lang/String;
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v34    # "withPrefix":Ljava/lang/String;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v13, v44

    .end local v44    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_46

    .line 550
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 552
    .local v1, "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    const/4 v0, 0x0

    .line 553
    .local v0, "buildMethodName":Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 554
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_41
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_42

    goto :goto_23

    :cond_42
    move-object v2, v0

    goto :goto_24

    .line 558
    :cond_43
    :goto_23
    const-string v0, "build"

    move-object v2, v0

    .line 562
    .end local v0    # "buildMethodName":Ljava/lang/String;
    .local v2, "buildMethodName":Ljava/lang/String;
    :goto_24
    const/4 v12, 0x0

    :try_start_0
    new-array v0, v12, [Ljava/lang/Class;

    invoke-virtual {v13, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v0

    .line 567
    :goto_25
    goto :goto_26

    .line 565
    :catch_0
    move-exception v0

    goto :goto_26

    .line 563
    :catch_1
    move-exception v0

    goto :goto_25

    .line 569
    :goto_26
    if-nez v21, :cond_44

    .line 571
    :try_start_1
    const-string v0, "create"

    new-array v3, v12, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 576
    .end local v21    # "buildMethod":Ljava/lang/reflect/Method;
    .local v0, "buildMethod":Ljava/lang/reflect/Method;
    move-object/from16 v21, v0

    goto :goto_27

    .line 574
    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v21    # "buildMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    goto :goto_27

    .line 572
    :catch_3
    move-exception v0

    .line 579
    :cond_44
    :goto_27
    if-eqz v21, :cond_45

    .line 583
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_28

    .line 580
    :cond_45
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "buildMethod not found."

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    .end local v1    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v2    # "buildMethodName":Ljava/lang/String;
    :cond_46
    const/4 v12, 0x0

    goto :goto_28

    .line 474
    .end local v22    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v34    # "withPrefix":Ljava/lang/String;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_47
    move-object/from16 v46, v10

    move-object/from16 v41, v13

    move-object/from16 p2, v15

    move-object v13, v9

    move-object v15, v12

    const/4 v12, 0x0

    .line 587
    .end local v9    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_28
    array-length v0, v14

    const/4 v11, 0x0

    :goto_29
    const/4 v10, 0x4

    if-ge v11, v0, :cond_63

    aget-object v9, v14, v11

    .line 588
    .local v9, "method":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    .local v17, "ordinal":I
    const/16 v18, 0x0

    .local v18, "serialzeFeatures":I
    const/16 v22, 0x0

    .line 589
    .local v22, "parserFeatures":I
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 592
    move-object/from16 v45, p2

    move/from16 v44, v0

    move/from16 v31, v11

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v26, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_32

    .line 596
    :cond_48
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 597
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 598
    move-object/from16 v45, p2

    move/from16 v44, v0

    move/from16 v31, v11

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v26, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_32

    .line 601
    :cond_49
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_4a

    .line 602
    move-object/from16 v45, p2

    move/from16 v44, v0

    move/from16 v31, v11

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v26, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_32

    .line 605
    :cond_4a
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 607
    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v6

    if-eqz v1, :cond_62

    array-length v1, v6

    const/4 v5, 0x2

    if-le v1, v5, :cond_4b

    .line 608
    move-object/from16 v45, p2

    move/from16 v44, v0

    move/from16 v31, v11

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v26, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v14, p0

    goto/16 :goto_32

    .line 611
    :cond_4b
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 612
    .local v25, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v25, :cond_4c

    array-length v1, v6

    if-ne v1, v5, :cond_4c

    aget-object v1, v6, v12

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_4c

    const/4 v4, 0x1

    aget-object v1, v6, v4

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_4c

    .line 616
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v2, ""

    move-object v1, v10

    move-object v3, v9

    move-object/from16 v4, v26

    const/16 v26, 0x2

    move-object/from16 v5, p0

    move-object/from16 v47, v6

    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v47, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v6, p1

    move-object/from16 v29, v7

    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v29, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v7, v17

    move-object/from16 v30, v8

    .end local v8    # "methodName":Ljava/lang/String;
    .local v30, "methodName":Ljava/lang/String;
    move/from16 v8, v18

    move-object/from16 v48, v9

    .end local v9    # "method":Ljava/lang/reflect/Method;
    .local v48, "method":Ljava/lang/reflect/Method;
    move/from16 v9, v22

    move-object/from16 v49, v10

    move-object/from16 v10, v25

    move/from16 v31, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v14

    const/4 v14, 0x0

    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v27, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v12, v28

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v49

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 618
    move-object/from16 v14, p0

    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 612
    .end local v27    # "methods":[Ljava/lang/reflect/Method;
    .end local v29    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "methodName":Ljava/lang/String;
    .end local v47    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v48    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "methodName":Ljava/lang/String;
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    :cond_4c
    move-object/from16 v47, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v48, v9

    move/from16 v31, v11

    move-object/from16 v27, v14

    const/4 v14, 0x0

    const/16 v26, 0x2

    .line 621
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v27    # "methods":[Ljava/lang/reflect/Method;
    .restart local v29    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "methodName":Ljava/lang/String;
    .restart local v47    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v48    # "method":Ljava/lang/reflect/Method;
    move-object/from16 v12, v47

    .end local v47    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v12

    const/4 v11, 0x1

    if-eq v1, v11, :cond_4d

    .line 622
    move-object/from16 v14, p0

    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 625
    :cond_4d
    if-nez v25, :cond_4e

    .line 626
    move-object/from16 v9, p0

    move-object/from16 v8, v48

    .end local v48    # "method":Ljava/lang/reflect/Method;
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-static {v9, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v25

    goto :goto_2a

    .line 625
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v48    # "method":Ljava/lang/reflect/Method;
    :cond_4e
    move-object/from16 v9, p0

    move-object/from16 v8, v48

    .line 629
    .end local v48    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    :goto_2a
    if-nez v25, :cond_4f

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_4f

    .line 630
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object v14, v9

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 633
    :cond_4f
    if-eqz v25, :cond_52

    .line 634
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_50

    .line 635
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object v14, v9

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 638
    :cond_50
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v17

    .line 639
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v18

    .line 640
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v22

    .line 642
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_51

    .line 643
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 644
    .local v28, "propertyName":Ljava/lang/String;
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v1, v10

    move-object/from16 v2, v28

    move-object v3, v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, v17

    move-object/from16 v34, v8

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .local v34, "method":Ljava/lang/reflect/Method;
    move/from16 v8, v18

    move-object v14, v9

    move/from16 v9, v22

    move-object/from16 v50, v10

    move-object/from16 v10, v25

    move-object/from16 v11, v32

    move-object/from16 v32, v12

    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v32, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v12, v33

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v50

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 646
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 642
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v32    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v34    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_51
    move-object/from16 v34, v8

    move-object v14, v9

    move-object/from16 v32, v12

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v32    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v34    # "method":Ljava/lang/reflect/Method;
    goto :goto_2b

    .line 633
    .end local v32    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v34    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_52
    move-object/from16 v34, v8

    move-object v14, v9

    move-object/from16 v32, v12

    .line 650
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v32    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v34    # "method":Ljava/lang/reflect/Method;
    :goto_2b
    if-nez v25, :cond_53

    move-object/from16 v12, v30

    move-object/from16 v11, v46

    .end local v30    # "methodName":Ljava/lang/String;
    .local v12, "methodName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 651
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v42, v11

    move-object/from16 v52, v41

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 650
    .end local v12    # "methodName":Ljava/lang/String;
    .restart local v30    # "methodName":Ljava/lang/String;
    :cond_53
    move-object/from16 v12, v30

    move-object/from16 v11, v46

    .line 654
    .end local v30    # "methodName":Ljava/lang/String;
    .restart local v12    # "methodName":Ljava/lang/String;
    :cond_54
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 657
    .local v9, "c3":C
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_59

    const/16 v1, 0x200

    if-le v9, v1, :cond_55

    goto :goto_2c

    .line 665
    :cond_55
    const/16 v1, 0x5f

    if-ne v9, v1, :cond_56

    .line 666
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "propertyName":Ljava/lang/String;
    goto :goto_2d

    .line 667
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_56
    const/16 v1, 0x66

    if-ne v9, v1, :cond_57

    .line 668
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v2, "propertyName":Ljava/lang/String;
    goto :goto_2d

    .line 669
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_57
    const/4 v1, 0x3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_58

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 670
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_2d

    .line 669
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_58
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v42, v11

    move-object/from16 v52, v41

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 660
    :cond_59
    :goto_2c
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_5a

    .line 661
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_2d

    .line 663
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_5a
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_2d
    move-object/from16 v10, v41

    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v10, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v14, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 676
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_5c

    const/4 v8, 0x0

    aget-object v3, v32, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5b

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "isFieldName":Ljava/lang/String;
    invoke-static {v14, v3, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v6, v2

    goto :goto_2f

    .line 676
    .end local v3    # "isFieldName":Ljava/lang/String;
    :cond_5b
    const/4 v7, 0x1

    goto :goto_2e

    :cond_5c
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 681
    :goto_2e
    move-object v6, v2

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v6, "field":Ljava/lang/reflect/Field;
    :goto_2f
    const/4 v2, 0x0

    .line 682
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v6, :cond_60

    .line 683
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 685
    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v28, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v28, :cond_5f

    .line 686
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 687
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v52, v10

    move-object/from16 v42, v11

    const/16 v36, 0x1

    const/16 v37, 0x0

    goto/16 :goto_32

    .line 690
    :cond_5d
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v17

    .line 691
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v18

    .line 692
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v22

    .line 694
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5e

    .line 695
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v30

    .line 696
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v30, "propertyName":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v33, 0x0

    move-object v1, v5

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move-object v4, v6

    move-object/from16 v51, v5

    move-object/from16 v5, p0

    move-object/from16 v35, v6

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .local v35, "field":Ljava/lang/reflect/Field;
    move-object/from16 v6, p1

    const/16 v36, 0x1

    move/from16 v7, v17

    const/16 v37, 0x0

    move/from16 v8, v18

    move/from16 v41, v9

    .end local v9    # "c3":C
    .local v41, "c3":C
    move/from16 v9, v22

    move-object/from16 v52, v10

    .end local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v52, "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v10, v25

    move-object/from16 v42, v11

    move-object/from16 v11, v28

    move-object/from16 v43, v12

    .end local v12    # "methodName":Ljava/lang/String;
    .local v43, "methodName":Ljava/lang/String;
    move-object/from16 v12, v33

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v51

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 698
    move-object/from16 v45, p2

    move/from16 v44, v0

    goto/16 :goto_32

    .line 694
    .end local v30    # "propertyName":Ljava/lang/String;
    .end local v35    # "field":Ljava/lang/reflect/Field;
    .end local v41    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v1    # "propertyName":Ljava/lang/String;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "c3":C
    .restart local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "methodName":Ljava/lang/String;
    :cond_5e
    move-object/from16 v35, v6

    move/from16 v41, v9

    move-object/from16 v52, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    const/16 v36, 0x1

    const/16 v37, 0x0

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "c3":C
    .end local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v12    # "methodName":Ljava/lang/String;
    .restart local v35    # "field":Ljava/lang/reflect/Field;
    .restart local v41    # "c3":C
    .restart local v43    # "methodName":Ljava/lang/String;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_30

    .line 685
    .end local v35    # "field":Ljava/lang/reflect/Field;
    .end local v41    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "c3":C
    .restart local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "methodName":Ljava/lang/String;
    :cond_5f
    move-object/from16 v35, v6

    move/from16 v41, v9

    move-object/from16 v52, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    const/16 v36, 0x1

    const/16 v37, 0x0

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "c3":C
    .end local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v12    # "methodName":Ljava/lang/String;
    .restart local v35    # "field":Ljava/lang/reflect/Field;
    .restart local v41    # "c3":C
    .restart local v43    # "methodName":Ljava/lang/String;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_30

    .line 682
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "field":Ljava/lang/reflect/Field;
    .end local v41    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "c3":C
    .restart local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "methodName":Ljava/lang/String;
    :cond_60
    move-object/from16 v35, v6

    move/from16 v41, v9

    move-object/from16 v52, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    const/16 v36, 0x1

    const/16 v37, 0x0

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "c3":C
    .end local v10    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v12    # "methodName":Ljava/lang/String;
    .restart local v35    # "field":Ljava/lang/reflect/Field;
    .restart local v41    # "c3":C
    .restart local v43    # "methodName":Ljava/lang/String;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v28, v2

    .line 704
    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_30
    if-eqz p2, :cond_61

    .line 705
    move-object/from16 v12, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v12, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_31

    .line 704
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_61
    move-object/from16 v12, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v30, v1

    .line 708
    .end local v1    # "propertyName":Ljava/lang/String;
    .restart local v30    # "propertyName":Ljava/lang/String;
    :goto_31
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v33, 0x0

    move-object v1, v11

    move-object/from16 v2, v30

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v22

    move-object/from16 v10, v25

    move/from16 v44, v0

    move-object v0, v11

    move-object/from16 v11, v28

    move-object/from16 v45, v12

    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v45, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v12, v33

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_32

    .line 607
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "methods":[Ljava/lang/reflect/Method;
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v29    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "propertyName":Ljava/lang/String;
    .end local v32    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v34    # "method":Ljava/lang/reflect/Method;
    .end local v35    # "field":Ljava/lang/reflect/Field;
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v45    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "methodName":Ljava/lang/String;
    .local v9, "method":Ljava/lang/reflect/Method;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v41, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_62
    move-object/from16 v45, p2

    move/from16 v44, v0

    move-object/from16 v32, v6

    move-object/from16 v29, v7

    move-object/from16 v43, v8

    move-object/from16 v34, v9

    move/from16 v31, v11

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    move-object/from16 v42, v46

    const/16 v26, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v14, p0

    .line 587
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v17    # "ordinal":I
    .end local v18    # "serialzeFeatures":I
    .end local v22    # "parserFeatures":I
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v27    # "methods":[Ljava/lang/reflect/Method;
    .restart local v45    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    :goto_32
    add-int/lit8 v11, v31, 0x1

    move-object/from16 v14, v27

    move-object/from16 v46, v42

    move/from16 v0, v44

    move-object/from16 p2, v45

    move-object/from16 v41, v52

    const/4 v12, 0x0

    goto/16 :goto_29

    .line 712
    .end local v27    # "methods":[Ljava/lang/reflect/Method;
    .end local v45    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_63
    move-object/from16 v45, p2

    move-object/from16 v27, v14

    move-object/from16 v52, v41

    const/16 v37, 0x0

    move-object/from16 v14, p0

    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v41    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v27    # "methods":[Ljava/lang/reflect/Method;
    .restart local v45    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 713
    .local v0, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v12, p1

    move-object/from16 v11, v45

    .end local v45    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-static {v14, v12, v11, v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v8, v9

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v8, :cond_6f

    aget-object v6, v9, v7

    .line 716
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_64

    .line 718
    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 721
    :cond_64
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 722
    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 725
    :cond_65
    if-nez v13, :cond_6e

    const-string v1, "get"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 726
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_66

    .line 727
    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 730
    :cond_66
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_68

    const-class v1, Ljava/util/Map;

    .line 731
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_68

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 732
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_68

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 733
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_68

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 734
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_67

    goto :goto_34

    :cond_67
    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 738
    :cond_68
    :goto_34
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 739
    .local v17, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v17, :cond_69

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 740
    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 743
    :cond_69
    if-eqz v17, :cond_6a

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 744
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v52

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_35

    .line 746
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .restart local v1    # "propertyName":Ljava/lang/String;
    move-object/from16 v3, v52

    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v3, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v14, v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 749
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_6b

    .line 750
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 751
    .local v4, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v4, :cond_6b

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v22

    if-nez v22, :cond_6b

    .line 752
    move-object/from16 v32, v3

    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto/16 :goto_37

    .line 757
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_6b
    :goto_35
    if-eqz v11, :cond_6c

    .line 758
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_36

    .line 757
    :cond_6c
    move-object v4, v1

    .line 761
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v4, "propertyName":Ljava/lang/String;
    :goto_36
    invoke-static {v15, v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v22

    .line 762
    .local v22, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v22, :cond_6d

    .line 763
    move-object/from16 v32, v3

    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    const/16 v29, 0x4

    const/16 v33, 0x3

    goto :goto_37

    .line 766
    :cond_6d
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object v1, v2

    move-object/from16 v53, v2

    move-object v2, v4

    move-object/from16 v32, v3

    .end local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v32, "declaredFields":[Ljava/lang/reflect/Field;
    move-object v3, v6

    move-object/from16 v18, v4

    const/16 v33, 0x3

    .end local v4    # "propertyName":Ljava/lang/String;
    .local v18, "propertyName":Ljava/lang/String;
    move-object/from16 v4, v25

    move-object/from16 v25, v5

    .end local v5    # "methodName":Ljava/lang/String;
    .local v25, "methodName":Ljava/lang/String;
    move-object/from16 v5, p0

    move-object/from16 v34, v6

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v34    # "method":Ljava/lang/reflect/Method;
    move-object/from16 v6, p1

    move/from16 v37, v7

    move/from16 v7, v26

    move/from16 v26, v8

    move/from16 v8, v28

    move-object/from16 v28, v9

    move/from16 v9, v29

    const/16 v29, 0x4

    move-object/from16 v10, v17

    move-object/from16 v35, v11

    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v35, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v11, v30

    move-object/from16 v12, v31

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v53

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_37

    .line 725
    .end local v17    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v18    # "propertyName":Ljava/lang/String;
    .end local v22    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v25    # "methodName":Ljava/lang/String;
    .end local v32    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v34    # "method":Ljava/lang/reflect/Method;
    .end local v35    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_6e
    move-object/from16 v25, v5

    move-object/from16 v34, v6

    move/from16 v37, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v32, v52

    const/16 v29, 0x4

    const/16 v33, 0x3

    .line 715
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v32    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v35    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_37
    add-int/lit8 v7, v37, 0x1

    move-object/from16 v12, p1

    move/from16 v8, v26

    move-object/from16 v9, v28

    move-object/from16 v52, v32

    move-object/from16 v11, v35

    const/4 v10, 0x4

    goto/16 :goto_33

    .line 771
    .end local v32    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v35    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v11    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_6f
    new-instance v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, v20

    move-object/from16 v5, v16

    move-object/from16 v6, v39

    move-object/from16 v7, v21

    move-object/from16 v8, v24

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v10
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 26
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 775
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v15, v1, v4

    .line 776
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    .line 777
    .local v17, "modifiers":I
    and-int/lit8 v5, v17, 0x8

    if-eqz v5, :cond_0

    .line 778
    move-object/from16 v5, p3

    goto/16 :goto_7

    .line 781
    :cond_0
    and-int/lit8 v5, v17, 0x10

    if-eqz v5, :cond_3

    .line 782
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 783
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Ljava/util/Collection;

    .line 784
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Ljava/util/concurrent/atomic/AtomicLong;

    .line 785
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 786
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 787
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    .line 788
    .local v6, "supportReadOnly":Z
    :goto_2
    if-nez v6, :cond_3

    .line 789
    move-object/from16 v5, p3

    goto/16 :goto_7

    .line 793
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "supportReadOnly":Z
    :cond_3
    const/4 v5, 0x0

    .line 794
    .local v5, "contains":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 795
    .local v7, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 796
    const/4 v5, 0x1

    .line 797
    move/from16 v18, v5

    goto :goto_4

    .line 799
    .end local v7    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    goto :goto_3

    .line 794
    :cond_5
    move/from16 v18, v5

    .line 801
    .end local v5    # "contains":Z
    .local v18, "contains":Z
    :goto_4
    if-eqz v18, :cond_6

    .line 802
    move-object/from16 v5, p3

    goto/16 :goto_7

    .line 805
    :cond_6
    const/4 v5, 0x0

    .local v5, "ordinal":I
    const/4 v6, 0x0

    .local v6, "serialzeFeatures":I
    const/4 v7, 0x0

    .line 806
    .local v7, "parserFeatures":I
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 808
    .local v8, "propertyName":Ljava/lang/String;
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v15, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 810
    .local v19, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v19, :cond_9

    .line 811
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v9

    if-nez v9, :cond_7

    .line 812
    move-object/from16 v5, p3

    goto/16 :goto_7

    .line 815
    :cond_7
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v5

    .line 816
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    .line 817
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v7

    .line 819
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 820
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    goto :goto_5

    .line 819
    :cond_8
    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    goto :goto_5

    .line 810
    :cond_9
    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    .line 824
    .end local v5    # "ordinal":I
    .end local v6    # "serialzeFeatures":I
    .end local v7    # "parserFeatures":I
    .local v20, "ordinal":I
    .local v21, "serialzeFeatures":I
    .local v22, "parserFeatures":I
    :goto_5
    if-eqz v0, :cond_a

    .line 825
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v8

    goto :goto_6

    .line 824
    :cond_a
    move-object/from16 v23, v8

    .line 828
    .end local v8    # "propertyName":Ljava/lang/String;
    .local v23, "propertyName":Ljava/lang/String;
    :goto_6
    new-instance v14, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x0

    move-object v5, v14

    move-object/from16 v6, v23

    move-object v8, v15

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v25, v15

    .end local v15    # "field":Ljava/lang/reflect/Field;
    .local v25, "field":Ljava/lang/reflect/Field;
    move-object/from16 v15, v19

    move-object/from16 v16, v24

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 775
    .end local v17    # "modifiers":I
    .end local v18    # "contains":Z
    .end local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v20    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v22    # "parserFeatures":I
    .end local v23    # "propertyName":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/reflect/Field;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 831
    :cond_b
    move-object/from16 v5, p3

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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 947
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 951
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 952
    return-object v0

    .line 955
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v1

    .line 957
    .local v1, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_2

    .line 958
    return-object v0

    .line 961
    :cond_2
    return-object v1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 16
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 864
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 866
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "multi-JSONCreator"

    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    .line 867
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 868
    .local v7, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v7, :cond_1

    .line 869
    if-nez v1, :cond_0

    .line 873
    move-object v1, v6

    goto :goto_1

    .line 870
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 877
    :cond_2
    if-eqz v1, :cond_3

    .line 878
    return-object v1

    .line 881
    :cond_3
    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_b

    aget-object v6, v0, v4

    .line 882
    .local v6, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 883
    .local v7, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v8, v7

    if-nez v8, :cond_4

    .line 884
    goto :goto_7

    .line 886
    :cond_4
    const/4 v8, 0x1

    .line 887
    .local v8, "match":Z
    array-length v9, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_8

    aget-object v11, v7, v10

    .line 888
    .local v11, "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    const/4 v12, 0x0

    .line 889
    .local v12, "paramMatch":Z
    array-length v13, v11

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_6

    aget-object v15, v11, v14

    .line 890
    .local v15, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v3, v15, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_5

    .line 891
    const/4 v12, 0x1

    .line 892
    goto :goto_5

    .line 889
    .end local v15    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 895
    :cond_6
    :goto_5
    if-nez v12, :cond_7

    .line 896
    const/4 v8, 0x0

    .line 897
    goto :goto_6

    .line 887
    .end local v11    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v12    # "paramMatch":Z
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 901
    :cond_8
    :goto_6
    if-eqz v8, :cond_a

    .line 902
    if-nez v1, :cond_9

    .line 906
    move-object v1, v6

    goto :goto_7

    .line 903
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v7    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v8    # "match":Z
    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 910
    :cond_b
    if-eqz v1, :cond_c

    .line 911
    return-object v1

    .line 914
    :cond_c
    return-object v1
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 834
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_0
    const/4 v0, 0x0

    .line 840
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 841
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    .line 842
    move-object v0, v4

    .line 843
    goto :goto_1

    .line 840
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 848
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 850
    array-length v1, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 851
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    aget-object v5, v6, v2

    .line 852
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 853
    move-object v0, v4

    .line 854
    goto :goto_3

    .line 850
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 860
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    return-object v0
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 918
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 920
    .local v0, "factoryMethod":Ljava/lang/reflect/Method;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 921
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 922
    goto :goto_1

    .line 925
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 926
    goto :goto_1

    .line 929
    :cond_1
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 930
    .local v4, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v4, :cond_3

    .line 931
    if-nez v0, :cond_2

    .line 935
    move-object v0, v3

    goto :goto_1

    .line 932
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "multi-JSONCreator"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_4
    return-object v0
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 167
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 168
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    return-object v1

    .line 172
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 173
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    return-object v1

    .line 176
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
