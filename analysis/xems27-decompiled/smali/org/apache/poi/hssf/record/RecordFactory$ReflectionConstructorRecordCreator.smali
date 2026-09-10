.class final Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;
.super Ljava/lang/Object;
.source "RecordFactory.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/RecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectionConstructorRecordCreator"
.end annotation


# instance fields
.field private final _c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/hssf/record/Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;->_c:Ljava/lang/reflect/Constructor;

    .line 83
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 87
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;->_c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 96
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    if-nez v3, :cond_1

    .line 98
    instance-of v3, v2, Lorg/apache/poi/EncryptedDocumentException;

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/EncryptedDocumentException;

    throw v3

    .line 101
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v4, "Unable to construct record instance"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 97
    :cond_1
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/RecordFormatException;

    throw v3

    .line 92
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getRecordClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;->_c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
