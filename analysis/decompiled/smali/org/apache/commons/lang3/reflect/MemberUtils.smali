.class abstract Lorg/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    }
.end annotation


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "left":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "right":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .locals 2
    .param p0, "left"    # Ljava/lang/reflect/Method;
    .param p1, "right"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/MemberUtils;->compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static compareParameterTypes(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I
    .locals 3
    .param p0, "left"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .param p1, "right"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v0

    .line 137
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F

    move-result v1

    .line 138
    .local v1, "rightCost":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    .local v0, "cost":F
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 216
    :cond_2
    if-nez p0, :cond_0

    .line 217
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    goto :goto_0

    .line 209
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v5, 0x3dcccccd    # 0.1f

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "cost":F
    move-object v0, p0

    .line 232
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    add-float/2addr v1, v5

    .line 235
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v0, p1, :cond_2

    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 238
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 239
    add-float/2addr v1, v5

    .line 240
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 241
    sget-object v3, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v4

    .line 237
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_2
    return v1
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;)F
    .locals 18
    .param p1, "executable"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            ")F"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "srcArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 150
    .local v2, "destArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v6

    .line 153
    .local v6, "isVarArgs":Z
    const/4 v12, 0x0

    .line 154
    .local v12, "totalCost":F
    if-eqz v6, :cond_0

    array-length v15, v2

    add-int/lit8 v15, v15, -0x1

    int-to-long v8, v15

    .line 155
    .local v8, "normalArgsLen":J
    :goto_0
    move-object/from16 v0, p0

    array-length v15, v0

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v16, v8

    if-gez v15, :cond_1

    .line 156
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    move v13, v12

    .line 183
    .end local v12    # "totalCost":F
    .local v13, "totalCost":F
    :goto_1
    return v15

    .line 154
    .end local v8    # "normalArgsLen":J
    .end local v13    # "totalCost":F
    .restart local v12    # "totalCost":F
    :cond_0
    array-length v15, v2

    int-to-long v8, v15

    goto :goto_0

    .line 158
    .restart local v8    # "normalArgsLen":J
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v15, v16, v8

    if-gez v15, :cond_2

    .line 159
    aget-object v15, p0, v5

    aget-object v16, v2, v5

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v15

    add-float/2addr v12, v15

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    :cond_2
    if-eqz v6, :cond_3

    .line 164
    move-object/from16 v0, p0

    array-length v15, v0

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    const/4 v7, 0x1

    .line 165
    .local v7, "noVarArgsPassed":Z
    :goto_3
    move-object/from16 v0, p0

    array-length v15, v0

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v4, 0x1

    .line 167
    .local v4, "explicitArrayForVarags":Z
    :goto_4
    const v14, 0x3a83126f    # 0.001f

    .line 168
    .local v14, "varArgsCost":F
    array-length v15, v2

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v2, v15

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 169
    .local v3, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_6

    .line 171
    const-class v15, Ljava/lang/Object;

    invoke-static {v3, v15}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v15

    const v16, 0x3a83126f    # 0.001f

    add-float v15, v15, v16

    add-float/2addr v12, v15

    .end local v3    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "explicitArrayForVarags":Z
    .end local v7    # "noVarArgsPassed":Z
    .end local v14    # "varArgsCost":F
    :cond_3
    :goto_5
    move v13, v12

    .end local v12    # "totalCost":F
    .restart local v13    # "totalCost":F
    move v15, v12

    .line 183
    goto :goto_1

    .line 164
    .end local v13    # "totalCost":F
    .restart local v12    # "totalCost":F
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 165
    .restart local v7    # "noVarArgsPassed":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 172
    .restart local v3    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "explicitArrayForVarags":Z
    .restart local v14    # "varArgsCost":F
    :cond_6
    if-eqz v4, :cond_7

    .line 173
    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 174
    .local v10, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v10, v3}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v15

    const v16, 0x3a83126f    # 0.001f

    add-float v15, v15, v16

    add-float/2addr v12, v15

    .line 175
    goto :goto_5

    .line 177
    .end local v10    # "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    array-length v15, v2

    add-int/lit8 v5, v15, -0x1

    :goto_6
    move-object/from16 v0, p0

    array-length v15, v0

    if-ge v5, v15, :cond_3

    .line 178
    aget-object v11, p0, v5

    .line 179
    .local v11, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v11, v3}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v15

    const v16, 0x3a83126f    # 0.001f

    add-float v15, v15, v16

    add-float/2addr v12, v15

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 86
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "method":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z
    .locals 7
    .param p0, "method"    # Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 258
    .local v1, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, v1, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 265
    aget-object v5, p1, v0

    aget-object v6, v1, v0

    invoke-static {v5, v6, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 266
    goto :goto_0

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_3
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 270
    .local v2, "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 271
    aget-object v5, p1, v0

    invoke-static {v5, v2, v3}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 272
    goto :goto_0

    .line 270
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move v3, v4

    .line 278
    goto :goto_0
.end method

.method static isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isMatchingExecutable(Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPackageAccess(I)Z
    .locals 1
    .param p0, "modifiers"    # I

    .prologue
    .line 77
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z
    .locals 4
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 68
    :goto_0
    return v1

    :cond_1
    move-object v0, p0

    .line 59
    check-cast v0, Ljava/lang/reflect/Member;

    .line 60
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    :cond_2
    move v1, v2

    .line 68
    goto :goto_0
.end method
