.class public Lcom/alibaba/fastjson/util/ASMUtils;
.super Ljava/lang/Object;
.source "ASMUtils.java"


# static fields
.field public static final IS_ANDROID:Z

.field public static final JAVA_VM_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/ASMUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/ASMUtils;->JAVA_VM_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->isAndroid(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    .local v0, "c":C
    if-lt v0, v2, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 107
    :cond_0
    const/4 v2, 0x0

    .line 111
    .end local v0    # "c":C
    :cond_1
    return v2

    .line 104
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static desc(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static desc(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 35
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 38
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMethodType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 71
    const-string v0, "I"

    .line 87
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    .line 73
    const-string v0, "V"

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 75
    const-string v0, "Z"

    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 77
    const-string v0, "C"

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 79
    const-string v0, "B"

    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 81
    const-string v0, "S"

    goto :goto_0

    .line 82
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 83
    const-string v0, "F"

    goto :goto_0

    .line 84
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 85
    const-string v0, "J"

    goto :goto_0

    .line 86
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 87
    const-string v0, "D"

    goto :goto_0

    .line 90
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAndroid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "vmName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "lowerVMName":Ljava/lang/String;
    const-string v2, "dalvik"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lemur"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;
    .locals 24
    .param p0, "methodOrCtor"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 116
    sget-boolean v21, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v21, :cond_0

    .line 117
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 179
    :goto_0
    return-object v16

    .line 125
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/reflect/Method;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v13, p0

    .line 126
    check-cast v13, Ljava/lang/reflect/Method;

    .line 127
    .local v13, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    .line 128
    .local v19, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 130
    .local v6, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v15

    .line 139
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .local v15, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 140
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_0

    .end local v6    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v19    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v5, p0

    .line 132
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 133
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    .line 134
    .restart local v19    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 135
    .restart local v6    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "<init>"

    .line 136
    .restart local v14    # "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v15

    .restart local v15    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    goto :goto_1

    .line 143
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 144
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_3

    .line 145
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 148
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "className":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x2e

    const/16 v23, 0x2f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".class"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "resourceName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 152
    .local v10, "is":Ljava/io/InputStream;
    if-nez v10, :cond_4

    .line 153
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_0

    .line 157
    :cond_4
    :try_start_0
    new-instance v17, Lcom/alibaba/fastjson/asm/ClassReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 158
    .local v17, "reader":Lcom/alibaba/fastjson/asm/ClassReader;
    new-instance v20, Lcom/alibaba/fastjson/asm/TypeCollector;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/alibaba/fastjson/asm/TypeCollector;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 159
    .local v20, "visitor":Lcom/alibaba/fastjson/asm/TypeCollector;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V

    .line 160
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/TypeCollector;->getParameterNamesForMethod()[Ljava/lang/String;

    move-result-object v16

    .line 162
    .local v16, "parameterNames":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_7

    .line 163
    aget-object v2, v15, v9

    .line 164
    .local v2, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v2, :cond_6

    .line 165
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v0, v2

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 166
    aget-object v21, v2, v11

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 167
    aget-object v12, v2, v11

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 168
    .local v12, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "fieldName":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 170
    aput-object v8, v16, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v12    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 162
    .end local v11    # "j":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 181
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_7
    invoke-static {v10}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 178
    .end local v9    # "i":I
    .end local v16    # "parameterNames":[Ljava/lang/String;
    .end local v17    # "reader":Lcom/alibaba/fastjson/asm/ClassReader;
    .end local v20    # "visitor":Lcom/alibaba/fastjson/asm/TypeCollector;
    :catch_0
    move-exception v7

    .line 179
    .local v7, "e":Ljava/io/IOException;
    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {v10}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    invoke-static {v10}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    throw v21
.end method

.method public static type(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "clsName":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 63
    .end local v0    # "clsName":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
