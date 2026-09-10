.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I

.field public final unwrapped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .line 57
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 60
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 61
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 63
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 64
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 65
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 66
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 68
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 70
    if-eqz p5, :cond_2

    .line 71
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 72
    .local v2, "modifiers":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 73
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 74
    .end local v2    # "modifiers":I
    goto :goto_2

    .line 75
    :cond_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 79
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 81
    if-eqz p5, :cond_3

    .line 82
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 85
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 87
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 89
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 90
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 91
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p11, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v6, 0x0

    iput v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 106
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "fieldName":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 109
    move-object v8, v7

    .end local p1    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    move-object/from16 v8, p1

    .line 113
    .end local p1    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 114
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 115
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 116
    move/from16 v7, p6

    iput v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 117
    move/from16 v9, p7

    iput v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 118
    move/from16 v10, p8

    iput v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 119
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 120
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 122
    if-eqz v2, :cond_6

    .line 123
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 124
    .local v14, "modifiers":I
    and-int/lit8 v15, v14, 0x1

    if-nez v15, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v15, 0x1

    :goto_2
    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 125
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v15

    if-nez v15, :cond_5

    .line 126
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v15, 0x1

    :goto_4
    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 127
    .end local v14    # "modifiers":I
    goto :goto_5

    .line 128
    :cond_6
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 129
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 132
    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 133
    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto :goto_6

    .line 135
    :cond_7
    const-string v14, ""

    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 138
    :goto_6
    const/4 v14, 0x0

    .line 139
    .local v14, "format":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v15

    .line 141
    .local v15, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/16 v16, 0x0

    .line 142
    .local v16, "jsonDirect":Z
    if-eqz v15, :cond_9

    .line 143
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v14

    .line 145
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_8

    .line 146
    const/4 v14, 0x0

    .line 148
    :cond_8
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v16

    .line 149
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v13

    iput-boolean v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 150
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_7

    .line 152
    :cond_9
    const/16 v16, 0x0

    .line 153
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 154
    new-array v13, v6, [Ljava/lang/String;

    iput-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 156
    :goto_7
    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v13

    iput-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 160
    if-eqz v1, :cond_a

    .line 161
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 164
    :cond_a
    if-eqz v2, :cond_b

    .line 165
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 168
    :cond_b
    const/4 v13, 0x0

    .line 171
    .local v13, "getOnly":Z
    if-eqz v1, :cond_e

    .line 173
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v18, v6

    .local v18, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v6

    const/4 v1, 0x1

    if-ne v6, v1, :cond_c

    .line 174
    move-object/from16 v1, v18

    const/4 v6, 0x0

    .end local v18    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v17, v1, v6

    .line 175
    .local v17, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object v18, v18, v6

    const/4 v2, 0x0

    .local v18, "fieldType":Ljava/lang/reflect/Type;
    goto :goto_8

    .line 176
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v1, v18

    const/4 v6, 0x0

    .end local v18    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v1

    const/4 v2, 0x2

    if-ne v6, v2, :cond_d

    const/4 v2, 0x0

    aget-object v6, v1, v2

    const-class v2, Ljava/lang/String;

    if-ne v6, v2, :cond_d

    const/4 v2, 0x1

    aget-object v6, v1, v2

    const-class v2, Ljava/lang/Object;

    if-ne v6, v2, :cond_d

    .line 177
    const/4 v2, 0x0

    aget-object v6, v1, v2

    move-object/from16 v17, v6

    .restart local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v18, v6

    .local v18, "fieldType":Ljava/lang/reflect/Type;
    goto :goto_8

    .line 176
    .end local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "fieldType":Ljava/lang/reflect/Type;
    :cond_d
    const/4 v2, 0x0

    .line 179
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v17

    .line 180
    .restart local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 181
    .restart local v18    # "fieldType":Ljava/lang/reflect/Type;
    const/4 v13, 0x1

    .line 183
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 184
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v1, v17

    move-object/from16 v6, v18

    goto :goto_9

    .line 185
    .end local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "fieldType":Ljava/lang/reflect/Type;
    :cond_e
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    .line 186
    .restart local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 187
    .restart local v18    # "fieldType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 188
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    .line 190
    .end local v17    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "fieldType":Ljava/lang/reflect/Type;
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    iput-boolean v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 191
    if-eqz v16, :cond_f

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 193
    if-eqz v3, :cond_11

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_11

    instance-of v2, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_11

    .line 194
    move-object v2, v6

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 195
    .local v2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {v3, v4, v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 196
    .local v5, "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v5, :cond_10

    .line 197
    move-object/from16 p1, v2

    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .local p1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 198
    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 201
    return-void

    .line 196
    .end local p1    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_10
    move-object/from16 p1, v2

    .line 205
    .end local v2    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "genericFieldType":Ljava/lang/reflect/Type;
    :cond_11
    move-object v2, v6

    .line 207
    .local v2, "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v5, v6, Ljava/lang/Class;

    if-nez v5, :cond_14

    .line 208
    if-eqz v4, :cond_12

    move-object v5, v4

    goto :goto_b

    :cond_12
    move-object v5, v3

    :goto_b
    invoke-static {v3, v5, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 210
    if-eq v2, v6, :cond_14

    .line 211
    instance-of v5, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_13

    .line 212
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    .line 213
    :cond_13
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_14

    .line 214
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 219
    :cond_14
    :goto_c
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 220
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    iput-boolean v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 223
    return-void
.end method

.method private static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 9
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .line 317
    if-eqz p2, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 323
    aget-object v2, p0, v1

    .line 324
    .local v2, "typeArg":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 325
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 326
    .local v3, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 327
    .local v4, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v4, p1, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v5

    .line 328
    .local v5, "p_changed":Z
    if-eqz v5, :cond_3

    .line 329
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v6, p0, v1

    .line 330
    const/4 v0, 0x1

    goto :goto_2

    .line 332
    .end local v3    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    .end local v5    # "p_changed":Z
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_3

    .line 333
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 334
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    aget-object v4, p2, v3

    aput-object v4, p0, v1

    .line 336
    const/4 v0, 0x1

    .line 333
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 332
    .end local v3    # "j":I
    :cond_3
    :goto_2
    nop

    .line 322
    .end local v2    # "typeArg":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_5
    return v0

    .line 318
    .end local v0    # "changed":Z
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 254
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 258
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 259
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 260
    .local v0, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 261
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 262
    .local v2, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v1, v2, :cond_1

    .line 263
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 264
    .local v3, "fieldTypeX":Ljava/lang/reflect/Type;
    return-object v3

    .line 267
    .end local v3    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_1
    return-object p2

    .line 270
    .end local v0    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .end local v2    # "componentTypeX":Ljava/lang/reflect/Type;
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    return-object p2

    .line 274
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 275
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 276
    .local v0, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 277
    .local v1, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 279
    .local v2, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 280
    .local v3, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 281
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object p2, v5, v4

    .line 283
    return-object p2

    .line 280
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "i":I
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    .line 289
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 291
    .local v0, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 294
    .local v1, "arguments":[Ljava/lang/reflect/Type;
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 295
    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 296
    .local v2, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .restart local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    goto :goto_1

    .line 297
    .end local v2    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_7

    .line 298
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 299
    .restart local v2    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .restart local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    goto :goto_1

    .line 301
    .end local v2    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    move-object v2, v0

    .line 302
    .restart local v2    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 305
    .restart local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v4

    .line 306
    .local v4, "changed":Z
    if-eqz v4, :cond_8

    .line 307
    new-instance v5, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 308
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object p2, v5

    .line 309
    return-object p2

    .line 313
    .end local v0    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "arguments":[Ljava/lang/reflect/Type;
    .end local v2    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "changed":Z
    :cond_8
    return-object p2

    .line 255
    :cond_9
    :goto_2
    return-object p2
.end method

.method private static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 346
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 348
    .local v0, "gd":Ljava/lang/reflect/GenericDeclaration;
    const/4 v1, 0x0

    .line 349
    .local v1, "class_gd":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Class;

    .line 353
    :cond_0
    const/4 v2, 0x0

    .line 354
    .local v2, "arguments":[Ljava/lang/reflect/Type;
    if-ne v1, p0, :cond_1

    .line 355
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 356
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 357
    .local v3, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 358
    .end local v3    # "ptype":Ljava/lang/reflect/ParameterizedType;
    goto :goto_1

    .line 360
    :cond_1
    move-object v3, p0

    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v3, :cond_3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    if-eq v3, v1, :cond_3

    .line 361
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 363
    .local v4, "superType":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 364
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 365
    .local v5, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 366
    .local v6, "p_superType_args":[Ljava/lang/reflect/Type;
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 367
    move-object v2, v6

    .line 360
    .end local v4    # "superType":Ljava/lang/reflect/Type;
    .end local v5    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "p_superType_args":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 372
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    if-nez v1, :cond_4

    goto :goto_4

    .line 376
    :cond_4
    const/4 v3, 0x0

    .line 377
    .local v3, "actualType":Ljava/lang/reflect/Type;
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 378
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 379
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 380
    aget-object v3, v2, v5

    .line 381
    goto :goto_3

    .line 378
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 385
    .end local v5    # "j":I
    :cond_6
    :goto_3
    return-object v3

    .line 373
    .end local v3    # "actualType":Ljava/lang/reflect/Type;
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    :goto_4
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 9
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 413
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 414
    return v2

    .line 417
    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 418
    return v3

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 424
    return v0

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v1

    .line 428
    .local v1, "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v4

    .line 430
    .local v4, "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eq v1, v4, :cond_4

    .line 431
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    return v2

    .line 435
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 436
    return v3

    .line 440
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v5, v7, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 441
    .local v5, "isSampeType":Z
    :goto_0
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_6

    const/4 v6, 0x1

    .line 443
    .local v6, "oSameType":Z
    :cond_6
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    .line 444
    return v3

    .line 447
    :cond_7
    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    .line 448
    return v2

    .line 451
    :cond_8
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_9

    .line 452
    return v3

    .line 455
    :cond_9
    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_a

    .line 456
    return v2

    .line 459
    :cond_a
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 460
    return v3

    .line 463
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 464
    return v2

    .line 467
    :cond_c
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method protected genFieldNameChars()[C
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    .local v0, "nameLen":I
    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    .line 228
    .local v1, "name_chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 229
    const/16 v2, 0x22

    aput-char v2, v1, v4

    .line 230
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v3

    .line 231
    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    .line 232
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 484
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 237
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-ne p1, v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 246
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 250
    :cond_2
    return-object v0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 472
    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 409
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 394
    return-object v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 490
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public setAccessible()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 499
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 500
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
