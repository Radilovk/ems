.class final Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;
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
    name = "ReflectionMethodRecordCreator"
.end annotation


# instance fields
.field private final _m:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;->_m:Ljava/lang/reflect/Method;

    .line 118
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 122
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;->_m:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Unable to construct record instance"

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 123
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 124
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

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;->_m:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
