.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field private static class_ManyToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z

.field private static class_OneToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z

.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 79
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 81
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 82
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 83
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 85
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 87
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 89
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 92
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 93
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 94
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 95
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 97
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 98
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 111
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 115
    :try_start_0
    const-string/jumbo v0, "true"

    const-string v1, "fastjson.compatibleWithJavaBean"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 116
    const-string/jumbo v0, "true"

    const-string v1, "fastjson.compatibleWithFieldName"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 1041
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "byte"

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "short"

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "int"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "long"

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "float"

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "double"

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "boolean"

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "char"

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[byte"

    const-class v9, [B

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[short"

    const-class v9, [S

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[int"

    const-class v9, [I

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[long"

    const-class v9, [J

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[float"

    const-class v9, [F

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[double"

    const-class v9, [D

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[boolean"

    const-class v9, [Z

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[char"

    const-class v9, [C

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[B"

    const-class v9, [B

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[S"

    const-class v9, [S

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[I"

    const-class v9, [I

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[J"

    const-class v9, [J

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[F"

    const-class v9, [F

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[D"

    const-class v9, [D

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[C"

    const-class v9, [C

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[Z"

    const-class v9, [Z

    invoke-interface {v7, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const/16 v7, 0x3a

    new-array v2, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v2, v6

    const-class v7, Ljava/lang/Cloneable;

    aput-object v7, v2, v11

    const-string v7, "java.lang.AutoCloseable"

    .line 1068
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v12

    const-class v7, Ljava/lang/Exception;

    aput-object v7, v2, v13

    const-class v7, Ljava/lang/RuntimeException;

    aput-object v7, v2, v14

    const/4 v7, 0x5

    const-class v8, Ljava/lang/IllegalAccessError;

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-class v8, Ljava/lang/IllegalAccessException;

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-class v8, Ljava/lang/IllegalArgumentException;

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-class v8, Ljava/lang/IllegalMonitorStateException;

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-class v8, Ljava/lang/IllegalStateException;

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-class v8, Ljava/lang/IllegalThreadStateException;

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-class v8, Ljava/lang/IndexOutOfBoundsException;

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-class v8, Ljava/lang/InstantiationError;

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-class v8, Ljava/lang/InstantiationException;

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-class v8, Ljava/lang/InternalError;

    aput-object v8, v2, v7

    const/16 v7, 0xf

    const-class v8, Ljava/lang/InterruptedException;

    aput-object v8, v2, v7

    const/16 v7, 0x10

    const-class v8, Ljava/lang/LinkageError;

    aput-object v8, v2, v7

    const/16 v7, 0x11

    const-class v8, Ljava/lang/NegativeArraySizeException;

    aput-object v8, v2, v7

    const/16 v7, 0x12

    const-class v8, Ljava/lang/NoClassDefFoundError;

    aput-object v8, v2, v7

    const/16 v7, 0x13

    const-class v8, Ljava/lang/NoSuchFieldError;

    aput-object v8, v2, v7

    const/16 v7, 0x14

    const-class v8, Ljava/lang/NoSuchFieldException;

    aput-object v8, v2, v7

    const/16 v7, 0x15

    const-class v8, Ljava/lang/NoSuchMethodError;

    aput-object v8, v2, v7

    const/16 v7, 0x16

    const-class v8, Ljava/lang/NoSuchMethodException;

    aput-object v8, v2, v7

    const/16 v7, 0x17

    const-class v8, Ljava/lang/NullPointerException;

    aput-object v8, v2, v7

    const/16 v7, 0x18

    const-class v8, Ljava/lang/NumberFormatException;

    aput-object v8, v2, v7

    const/16 v7, 0x19

    const-class v8, Ljava/lang/OutOfMemoryError;

    aput-object v8, v2, v7

    const/16 v7, 0x1a

    const-class v8, Ljava/lang/SecurityException;

    aput-object v8, v2, v7

    const/16 v7, 0x1b

    const-class v8, Ljava/lang/StackOverflowError;

    aput-object v8, v2, v7

    const/16 v7, 0x1c

    const-class v8, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v8, v2, v7

    const/16 v7, 0x1d

    const-class v8, Ljava/lang/TypeNotPresentException;

    aput-object v8, v2, v7

    const/16 v7, 0x1e

    const-class v8, Ljava/lang/VerifyError;

    aput-object v8, v2, v7

    const/16 v7, 0x1f

    const-class v8, Ljava/lang/StackTraceElement;

    aput-object v8, v2, v7

    const/16 v7, 0x20

    const-class v8, Ljava/util/HashMap;

    aput-object v8, v2, v7

    const/16 v7, 0x21

    const-class v8, Ljava/util/Hashtable;

    aput-object v8, v2, v7

    const/16 v7, 0x22

    const-class v8, Ljava/util/TreeMap;

    aput-object v8, v2, v7

    const/16 v7, 0x23

    const-class v8, Ljava/util/IdentityHashMap;

    aput-object v8, v2, v7

    const/16 v7, 0x24

    const-class v8, Ljava/util/WeakHashMap;

    aput-object v8, v2, v7

    const/16 v7, 0x25

    const-class v8, Ljava/util/LinkedHashMap;

    aput-object v8, v2, v7

    const/16 v7, 0x26

    const-class v8, Ljava/util/HashSet;

    aput-object v8, v2, v7

    const/16 v7, 0x27

    const-class v8, Ljava/util/LinkedHashSet;

    aput-object v8, v2, v7

    const/16 v7, 0x28

    const-class v8, Ljava/util/TreeSet;

    aput-object v8, v2, v7

    const/16 v7, 0x29

    const-class v8, Ljava/util/concurrent/TimeUnit;

    aput-object v8, v2, v7

    const/16 v7, 0x2a

    const-class v8, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v8, v2, v7

    const/16 v7, 0x2b

    const-string v8, "java.util.concurrent.ConcurrentSkipListMap"

    .line 1109
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v2, v7

    const/16 v7, 0x2c

    const-string v8, "java.util.concurrent.ConcurrentSkipListSet"

    .line 1110
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v2, v7

    const/16 v7, 0x2d

    const-class v8, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v8, v2, v7

    const/16 v7, 0x2e

    const-class v8, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v8, v2, v7

    const/16 v7, 0x2f

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v2, v7

    const/16 v7, 0x30

    const-class v8, Ljava/util/BitSet;

    aput-object v8, v2, v7

    const/16 v7, 0x31

    const-class v8, Ljava/util/Calendar;

    aput-object v8, v2, v7

    const/16 v7, 0x32

    const-class v8, Ljava/util/Date;

    aput-object v8, v2, v7

    const/16 v7, 0x33

    const-class v8, Ljava/util/Locale;

    aput-object v8, v2, v7

    const/16 v7, 0x34

    const-class v8, Ljava/util/UUID;

    aput-object v8, v2, v7

    const/16 v7, 0x35

    const-class v8, Ljava/sql/Time;

    aput-object v8, v2, v7

    const/16 v7, 0x36

    const-class v8, Ljava/sql/Date;

    aput-object v8, v2, v7

    const/16 v7, 0x37

    const-class v8, Ljava/sql/Timestamp;

    aput-object v8, v2, v7

    const/16 v7, 0x38

    const-class v8, Ljava/text/SimpleDateFormat;

    aput-object v8, v2, v7

    const/16 v7, 0x39

    const-class v8, Lcom/alibaba/fastjson/JSONObject;

    aput-object v8, v2, v7

    .line 1125
    .local v2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v2, v7

    .line 1126
    .local v3, "clazz":Ljava/lang/Class;
    if-nez v3, :cond_0

    .line 1125
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    sget-object v9, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1131
    .end local v3    # "clazz":Ljava/lang/Class;
    :cond_1
    new-array v0, v14, [Ljava/lang/String;

    const-string v7, "java.awt.Rectangle"

    aput-object v7, v0, v6

    const-string v7, "java.awt.Point"

    aput-object v7, v0, v11

    const-string v7, "java.awt.Font"

    aput-object v7, v0, v12

    const-string v7, "java.awt.Color"

    aput-object v7, v0, v13

    .line 1136
    .local v0, "awt":[Ljava/lang/String;
    array-length v8, v0

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v1, v0, v7

    .line 1137
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1138
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_4

    .line 1143
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/16 v7, 0xc

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "org.springframework.util.LinkedMultiValueMap"

    aput-object v7, v5, v6

    const-string v7, "org.springframework.util.LinkedCaseInsensitiveMap"

    aput-object v7, v5, v11

    const-string v7, "org.springframework.remoting.support.RemoteInvocation"

    aput-object v7, v5, v12

    const-string v7, "org.springframework.remoting.support.RemoteInvocationResult"

    aput-object v7, v5, v13

    const-string v7, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    aput-object v7, v5, v14

    const/4 v7, 0x5

    const-string v8, "org.springframework.security.web.savedrequest.SavedCookie"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "org.springframework.security.web.csrf.DefaultCsrfToken"

    aput-object v8, v5, v7

    const/4 v7, 0x7

    const-string v8, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    aput-object v8, v5, v7

    const/16 v7, 0x8

    const-string v8, "org.springframework.security.core.context.SecurityContextImpl"

    aput-object v8, v5, v7

    const/16 v7, 0x9

    const-string v8, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    aput-object v8, v5, v7

    const/16 v7, 0xa

    const-string v8, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    aput-object v8, v5, v7

    const/16 v7, 0xb

    const-string v8, "org.springframework.security.core.userdetails.User"

    aput-object v8, v5, v7

    .line 1157
    .local v5, "spring":[Ljava/lang/String;
    array-length v7, v5

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v1, v5, v6

    .line 1158
    .restart local v1    # "className":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1159
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_5

    .line 1164
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void

    .line 1141
    .end local v5    # "spring":[Ljava/lang/String;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1162
    .restart local v5    # "spring":[Ljava/lang/String;
    :cond_5
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 1250
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 22
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 1258
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1259
    .local v4, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    const/16 v18, 0x0

    .line 1261
    .local v18, "orders":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "typeName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1262
    .local v11, "typeKey":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1263
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v18

    .line 1265
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v10

    .line 1266
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1267
    const/4 v10, 0x0

    .line 1270
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v17

    .line 1271
    .local v17, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    if-eqz v17, :cond_1

    sget-object v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v0, v17

    if-eq v0, v3, :cond_1

    .line 1272
    move-object/from16 p2, v17

    .line 1275
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v12

    .line 1276
    .local v12, "features":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v21

    .line 1277
    .local v21, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v21, :cond_2

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_2

    .line 1279
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1280
    .local v20, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v20, :cond_6

    .line 1289
    .end local v20    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v16, v5, v3

    .line 1290
    .local v16, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1291
    .restart local v20    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v20, :cond_7

    .line 1292
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v11

    .line 1293
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1299
    .end local v16    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1300
    const/4 v11, 0x0

    .line 1306
    .end local v17    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v21    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1307
    .local v6, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1308
    if-eqz p3, :cond_9

    const/4 v3, 0x0

    .line 1309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v15

    .line 1311
    .local v15, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    new-array v13, v3, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1312
    .local v13, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v15, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1315
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v3, v0

    if-eqz v3, :cond_b

    .line 1316
    if-eqz p3, :cond_a

    const/4 v3, 0x1

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v19

    .line 1323
    .local v19, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    new-array v14, v3, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1324
    .local v14, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1325
    invoke-static {v14, v13}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1326
    move-object v14, v13

    .line 1328
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object/from16 v8, p0

    move-object v9, v4

    invoke-direct/range {v7 .. v14}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v7

    .line 1283
    .end local v6    # "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v13    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v19    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v17    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v20    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v21    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v11

    .line 1284
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1278
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v21

    goto/16 :goto_0

    .line 1289
    .restart local v16    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1303
    .end local v12    # "features":I
    .end local v16    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v20    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v21    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "features":I
    goto :goto_2

    .line 1309
    .restart local v6    # "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    .line 1310
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v15

    goto :goto_3

    .line 1317
    .restart local v13    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_a
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    .line 1318
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v19

    goto :goto_4

    .line 1320
    :cond_b
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1321
    .restart local v19    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 17
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_8

    .line 660
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 661
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 800
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 662
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    .line 663
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 664
    :cond_2
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 665
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    .line 666
    :cond_3
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 667
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    .line 668
    :cond_4
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 669
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 670
    :cond_5
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 671
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 672
    :cond_6
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_7

    .line 673
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 675
    :cond_7
    const/16 p0, 0x0

    goto :goto_0

    .line 677
    :cond_8
    if-nez p1, :cond_9

    .line 678
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "clazz is null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 680
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_0

    .line 683
    move-object/from16 v0, p0

    instance-of v14, v0, Ljava/util/Map;

    if-eqz v14, :cond_b

    .line 684
    const-class v14, Ljava/util/Map;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_0

    move-object/from16 v11, p0

    .line 687
    check-cast v11, Ljava/util/Map;

    .line 688
    .local v11, "map":Ljava/util/Map;
    const-class v14, Ljava/lang/Object;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    sget-object v14, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 691
    :cond_a
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 693
    .end local v11    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 694
    move-object/from16 v0, p0

    instance-of v14, v0, Ljava/util/Collection;

    if-eqz v14, :cond_d

    move-object/from16 v5, p0

    .line 695
    check-cast v5, Ljava/util/Collection;

    .line 696
    .local v5, "collection":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 697
    .local v8, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 698
    .local v2, "array":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 699
    .local v9, "item":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v9, v15, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    .line 700
    .local v13, "value":Ljava/lang/Object;
    invoke-static {v2, v8, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 701
    add-int/lit8 v8, v8, 0x1

    .line 702
    goto :goto_1

    .end local v9    # "item":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_c
    move-object/from16 p0, v2

    .line 703
    goto/16 :goto_0

    .line 705
    .end local v2    # "array":Ljava/lang/Object;
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v8    # "index":I
    :cond_d
    const-class v14, [B

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_e

    .line 706
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    goto/16 :goto_0

    .line 709
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 712
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_f

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_10

    .line 713
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 715
    :cond_10
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_11

    const-class v14, Ljava/lang/Byte;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_12

    .line 716
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 718
    :cond_12
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_13

    const-class v14, Ljava/lang/Character;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_14

    .line 719
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 721
    :cond_14
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_15

    const-class v14, Ljava/lang/Short;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_16

    .line 722
    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 724
    :cond_16
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_17

    const-class v14, Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_18

    .line 725
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 727
    :cond_18
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_19

    const-class v14, Ljava/lang/Long;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1a

    .line 728
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 730
    :cond_1a
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_1b

    const-class v14, Ljava/lang/Float;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1c

    .line 731
    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 733
    :cond_1c
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_1d

    const-class v14, Ljava/lang/Double;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1e

    .line 734
    :cond_1d
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 736
    :cond_1e
    const-class v14, Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1f

    .line 737
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 739
    :cond_1f
    const-class v14, Ljava/math/BigDecimal;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_20

    .line 740
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 742
    :cond_20
    const-class v14, Ljava/math/BigInteger;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_21

    .line 743
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 745
    :cond_21
    const-class v14, Ljava/util/Date;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_22

    .line 746
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 748
    :cond_22
    const-class v14, Ljava/sql/Date;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_23

    .line 749
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 751
    :cond_23
    const-class v14, Ljava/sql/Time;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_24

    .line 752
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object p0

    goto/16 :goto_0

    .line 754
    :cond_24
    const-class v14, Ljava/sql/Timestamp;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_25

    .line 755
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    goto/16 :goto_0

    .line 757
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 758
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 760
    :cond_26
    const-class v14, Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 761
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v6

    .line 763
    .local v6, "date":Ljava/util/Date;
    const-class v14, Ljava/util/Calendar;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_27

    .line 764
    sget-object v14, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v15, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v14, v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 772
    .local v3, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object/from16 p0, v3

    .line 773
    goto/16 :goto_0

    .line 767
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_27
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 768
    .end local v3    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v7

    .line 769
    .local v7, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "can not cast to : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 776
    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "className":Ljava/lang/String;
    const-string v14, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 778
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v6

    .line 779
    .restart local v6    # "date":Ljava/util/Date;
    sget-object v14, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v15, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v14, v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 780
    .restart local v3    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 781
    sget-object v14, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    goto/16 :goto_0

    .line 784
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "date":Ljava/util/Date;
    :cond_29
    move-object/from16 v0, p0

    instance-of v14, v0, Ljava/lang/String;

    if-eqz v14, :cond_2e

    move-object/from16 v12, p0

    .line 785
    check-cast v12, Ljava/lang/String;

    .line 786
    .local v12, "strVal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2a

    const-string v14, "null"

    .line 787
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2a

    const-string v14, "NULL"

    .line 788
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 789
    :cond_2a
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 791
    :cond_2b
    const-class v14, Ljava/util/Currency;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2c

    .line 792
    invoke-static {v12}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    .line 794
    :cond_2c
    const-class v14, Ljava/util/Locale;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2d

    .line 795
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    goto/16 :goto_0

    .line 798
    :cond_2d
    const-string v14, "java.time."

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 799
    invoke-static {v12}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 800
    .local v10, "json":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 803
    .end local v10    # "json":Ljava/lang/String;
    .end local v12    # "strVal":Ljava/lang/String;
    :cond_2e
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "can not cast to : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 22
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 867
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 868
    .local v14, "rawTye":Ljava/lang/reflect/Type;
    const-class v19, Ljava/util/Set;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    const-class v19, Ljava/util/HashSet;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    const-class v19, Ljava/util/TreeSet;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    const-class v19, Ljava/util/Collection;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    const-class v19, Ljava/util/List;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    const-class v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_4

    .line 873
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v9, v19, v20

    .line 874
    .local v9, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 876
    const-class v19, Ljava/util/Set;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_1

    const-class v19, Ljava/util/HashSet;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_2

    .line 877
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 883
    .local v4, "collection":Ljava/util/Collection;
    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 884
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 885
    .local v8, "item":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 878
    .end local v4    # "collection":Ljava/util/Collection;
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v8    # "item":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v19, Ljava/util/TreeSet;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_3

    .line 879
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .restart local v4    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 881
    .end local v4    # "collection":Ljava/util/Collection;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 890
    .end local v4    # "collection":Ljava/util/Collection;
    .end local v9    # "itemType":Ljava/lang/reflect/Type;
    :cond_4
    const-class v19, Ljava/util/Map;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_5

    const-class v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_8

    .line 891
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v11, v19, v20

    .line 892
    .local v11, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v18, v19, v20

    .line 893
    .local v18, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 894
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 895
    .local v12, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 896
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v10

    .line 897
    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v17

    .line 898
    .local v17, "value":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-interface {v12, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v17    # "value":Ljava/lang/Object;
    :cond_6
    move-object v4, v12

    .line 929
    .end local v11    # "keyType":Ljava/lang/reflect/Type;
    .end local v12    # "map":Ljava/util/Map;
    .end local v18    # "valueType":Ljava/lang/reflect/Type;
    :cond_7
    :goto_3
    return-object v4

    .line 903
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v16, p0

    .line 904
    check-cast v16, Ljava/lang/String;

    .line 905
    .local v16, "strVal":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_9

    .line 906
    const/4 v4, 0x0

    goto :goto_3

    .line 909
    .end local v16    # "strVal":Ljava/lang/String;
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 910
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v3, v19, v20

    .line 911
    .local v3, "argType":Ljava/lang/reflect/Type;
    instance-of v0, v3, Ljava/lang/reflect/WildcardType;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 916
    .end local v3    # "argType":Ljava/lang/reflect/Type;
    :cond_a
    const-class v19, Ljava/util/Map$Entry;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_b

    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, p0

    check-cast v19, Ljava/util/Map;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 917
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .restart local v6    # "entry":Ljava/util/Map$Entry;
    move-object v4, v6

    .line 918
    goto :goto_3

    .line 921
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v0, v14, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 922
    if-nez p2, :cond_c

    .line 923
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 925
    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 926
    .local v5, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v5, :cond_d

    .line 927
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 928
    .local v15, "str":Ljava/lang/String;
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    move-object/from16 v0, p2

    invoke-direct {v13, v15, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 929
    .local v13, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v5, v13, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_3

    .line 933
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v13    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v15    # "str":Ljava/lang/String;
    :cond_d
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "can not cast to : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 842
    if-nez p0, :cond_1

    move-object p0, v1

    .line 860
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 845
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 846
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 848
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 849
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 851
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 852
    check-cast v0, Ljava/lang/String;

    .line 853
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 854
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 855
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 856
    goto :goto_0

    .line 859
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    .line 862
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p0, :cond_0

    move-object p0, v1

    .line 208
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 195
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 196
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 198
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 199
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 201
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    .line 203
    goto :goto_0

    .line 205
    :cond_3
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    move-object p0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 212
    if-nez p0, :cond_0

    move-object p0, v1

    .line 227
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 215
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 216
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 218
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 219
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 221
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 617
    if-nez p0, :cond_0

    move-object p0, v2

    .line 647
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 620
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 621
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 623
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 624
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 626
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v0, p0

    .line 627
    check-cast v0, Ljava/lang/String;

    .line 628
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    .line 629
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    .line 630
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v2

    .line 631
    goto :goto_0

    .line 633
    :cond_5
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1"

    .line 634
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 635
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 637
    :cond_7
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "0"

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 639
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 641
    :cond_9
    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "T"

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 643
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 645
    :cond_b
    const-string v1, "F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "N"

    .line 646
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 647
    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 650
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to boolean, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 134
    if-nez p0, :cond_1

    .line 147
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 137
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 138
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 140
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 149
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 607
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 608
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    .line 611
    :goto_0
    return-object p0

    .line 610
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 611
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 613
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p0, :cond_0

    move-object p0, v1

    .line 167
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 156
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 157
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 159
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 165
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 169
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 15
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v14, 0x1

    .line 275
    if-nez p0, :cond_1

    .line 374
    .end local p0    # "value":Ljava/lang/Object;
    .local v8, "longValue":J
    :cond_0
    :goto_0
    return-object v7

    .line 278
    .end local v8    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v11, p0, Ljava/util/Date;

    if-eqz v11, :cond_2

    .line 279
    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    move-object v7, p0

    goto :goto_0

    .line 281
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v11, p0, Ljava/util/Calendar;

    if-eqz v11, :cond_3

    .line 282
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    goto :goto_0

    .line 284
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v8, -0x1

    .line 285
    .restart local v8    # "longValue":J
    instance-of v11, p0, Ljava/lang/Number;

    if-eqz v11, :cond_4

    .line 286
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 287
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 289
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v11, p0, Ljava/lang/String;

    if-eqz v11, :cond_d

    move-object v10, p0

    .line 290
    check-cast v10, Ljava/lang/String;

    .line 291
    .local v10, "strVal":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 294
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 295
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 298
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 300
    const-string v11, "/Date("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, ")/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 301
    const/4 v11, 0x6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "dotnetDateStr":Ljava/lang/String;
    move-object v10, v4

    .line 304
    .end local v4    # "dotnetDateStr":Ljava/lang/String;
    :cond_6
    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sget-object v12, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 308
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x16

    if-ne v11, v12, :cond_8

    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string/jumbo v12, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 309
    :cond_7
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 321
    .local v6, "format":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v2, v6, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 322
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 324
    :try_start_1
    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 298
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v11

    .line 310
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_9

    .line 311
    const-string/jumbo v6, "yyyy-MM-dd"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 312
    .end local v6    # "format":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_a

    .line 313
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 314
    .end local v6    # "format":Ljava/lang/String;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x1d

    if-ne v11, v12, :cond_b

    const/16 v11, 0x1a

    .line 315
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_b

    const/16 v11, 0x1c

    .line 316
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_b

    .line 317
    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 319
    .end local v6    # "format":Ljava/lang/String;
    :cond_b
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 325
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 326
    .local v5, "e":Ljava/text/ParseException;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to Date, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 329
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "e":Ljava/text/ParseException;
    .end local v6    # "format":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 332
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 334
    .end local v3    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "strVal":Ljava/lang/String;
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gez v11, :cond_12

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 336
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "oracle.sql.TIMESTAMP"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 337
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_e

    sget-boolean v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v11, :cond_e

    .line 339
    :try_start_2
    const-string/jumbo v11, "toJdbc"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 348
    :cond_e
    :goto_2
    :try_start_3
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    .line 352
    .local v7, "result":Ljava/lang/Object;
    check-cast v7, Ljava/util/Date;

    goto/16 :goto_0

    .line 340
    .end local v7    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v11

    .line 343
    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    goto :goto_2

    :catchall_1
    move-exception v11

    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v11

    .line 349
    :catch_2
    move-exception v5

    .line 350
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v11, v12, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 354
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_f
    const-string v11, "oracle.sql.DATE"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 355
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_10

    sget-boolean v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v11, :cond_10

    .line 357
    :try_start_4
    const-string/jumbo v11, "toJdbc"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 361
    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 366
    :cond_10
    :goto_3
    :try_start_5
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v7

    .line 370
    .restart local v7    # "result":Ljava/lang/Object;
    check-cast v7, Ljava/util/Date;

    goto/16 :goto_0

    .line 358
    .end local v7    # "result":Ljava/lang/Object;
    :catch_3
    move-exception v11

    .line 361
    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    goto :goto_3

    :catchall_2
    move-exception v11

    sput-boolean v14, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v11

    .line 367
    :catch_4
    move-exception v5

    .line 368
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v11, v12, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 372
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_11
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to Date, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 374
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 269
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 256
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 257
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 259
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 271
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 820
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 821
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 822
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 823
    const/4 v5, 0x0

    .line 831
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 825
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto :goto_0

    .line 827
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 828
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 829
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 830
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 831
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 837
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 231
    if-nez p0, :cond_1

    .line 247
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 234
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 235
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 237
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 249
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 568
    if-nez p0, :cond_0

    move-object p0, v4

    .line 600
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "iter":Ljava/util/Iterator;
    .local v1, "map":Ljava/util/Map;
    .local v3, "value2":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 571
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;
    .end local v3    # "value2":Ljava/lang/Object;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p0, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 572
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 574
    :cond_1
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 575
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 577
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v2, p0

    .line 578
    check-cast v2, Ljava/lang/String;

    .line 579
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "null"

    .line 580
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "NULL"

    .line 581
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object p0, v4

    .line 582
    goto :goto_0

    .line 584
    :cond_4
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 585
    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 589
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v4, p0, Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    .line 590
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 592
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_9

    move-object v1, p0

    .line 593
    check-cast v1, Ljava/util/Map;

    .line 594
    .restart local v1    # "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const-string v4, "andIncrement"

    .line 595
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "andDecrement"

    .line 596
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 597
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    .restart local v0    # "iter":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 600
    .restart local v3    # "value2":Ljava/lang/Object;
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 603
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;
    .end local v3    # "value2":Ljava/lang/Object;
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to int, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 27
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v24, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 940
    const-string v24, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 941
    .local v7, "declaringClass":Ljava/lang/String;
    const-string v24, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 942
    .local v21, "methodName":Ljava/lang/String;
    const-string v24, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 945
    .local v11, "fileName":Ljava/lang/String;
    const-string v24, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    .line 946
    .local v23, "value":Ljava/lang/Number;
    if-nez v23, :cond_1

    .line 947
    const/16 v18, 0x0

    .line 952
    .local v18, "lineNumber":I
    :goto_0
    new-instance v13, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v13, v7, v0, v11, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1034
    .end local v7    # "declaringClass":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v18    # "lineNumber":I
    .end local v21    # "methodName":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/Number;
    :cond_0
    :goto_1
    return-object v13

    .line 949
    .restart local v7    # "declaringClass":Ljava/lang/String;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v21    # "methodName":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/Number;
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v18

    .restart local v18    # "lineNumber":I
    goto :goto_0

    .line 956
    .end local v7    # "declaringClass":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v18    # "lineNumber":I
    .end local v21    # "methodName":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/Number;
    :cond_2
    sget-object v24, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 957
    .local v12, "iClassObject":Ljava/lang/Object;
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 958
    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 960
    .local v5, "className":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 961
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 963
    :cond_3
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v20

    .line 964
    .local v20, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v20, :cond_4

    .line 965
    new-instance v24, Ljava/lang/ClassNotFoundException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v5    # "className":Ljava/lang/String;
    .end local v12    # "iClassObject":Ljava/lang/Object;
    .end local v20    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v10

    .line 1036
    .local v10, "e":Ljava/lang/Exception;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 967
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v12    # "iClassObject":Ljava/lang/Object;
    .restart local v20    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_1

    .line 973
    .end local v5    # "className":Ljava/lang/String;
    .end local v20    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 975
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 976
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v22, v0

    .line 980
    .local v22, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez p2, :cond_6

    .line 981
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 983
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 984
    .local v8, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v8, :cond_8

    .line 985
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 986
    .local v15, "json":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_1

    .line 978
    .end local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "json":Ljava/lang/String;
    .end local v22    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    new-instance v22, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v22    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 988
    .restart local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object p1, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_1

    .line 992
    .end local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v22    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    const-class v24, Ljava/util/Locale;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 993
    const-string v24, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 994
    .local v3, "arg0":Ljava/lang/Object;
    const-string v24, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 995
    .local v4, "arg1":Ljava/lang/Object;
    instance-of v0, v3, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 996
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    .line 997
    .local v17, "language":Ljava/lang/String;
    instance-of v0, v4, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 998
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 999
    .local v6, "country":Ljava/lang/String;
    new-instance v13, Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1000
    .end local v6    # "country":Ljava/lang/String;
    :cond_a
    if-nez v4, :cond_b

    .line 1001
    new-instance v13, Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1006
    .end local v3    # "arg0":Ljava/lang/Object;
    .end local v4    # "arg1":Ljava/lang/Object;
    .end local v17    # "language":Ljava/lang/String;
    :cond_b
    const-class v24, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 1007
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1010
    :cond_c
    const-class v24, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 1011
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v16, v0

    .line 1012
    .local v16, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v13

    .line 1013
    .local v13, "innerMap":Ljava/util/Map;
    instance-of v0, v13, Ljava/util/LinkedHashMap;

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1016
    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1017
    .local v19, "linkedHashMap":Ljava/util/LinkedHashMap;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1021
    .end local v13    # "innerMap":Ljava/util/Map;
    .end local v16    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "linkedHashMap":Ljava/util/LinkedHashMap;
    :cond_d
    if-nez p2, :cond_e

    .line 1022
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1025
    :cond_e
    const/4 v14, 0x0

    .line 1026
    .local v14, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 1027
    .local v9, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1028
    move-object v0, v9

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object v14, v0

    .line 1031
    :cond_f
    if-nez v14, :cond_10

    .line 1032
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "can not get javaBeanDeserializer. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1034
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto/16 :goto_1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 522
    if-nez p0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object v6

    .line 525
    :cond_1
    instance-of v7, p0, Ljava/lang/Number;

    if-eqz v7, :cond_2

    .line 526
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 528
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v7, p0, Ljava/lang/String;

    if-eqz v7, :cond_5

    move-object v4, p0

    .line 529
    check-cast v4, Ljava/lang/String;

    .line 530
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "null"

    .line 531
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "NULL"

    .line 532
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 535
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eqz v6, :cond_3

    .line 536
    const-string v6, ","

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    :cond_3
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 540
    :catch_0
    move-exception v6

    .line 543
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v0, 0x0

    .line 545
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 546
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 548
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 549
    if-eqz v0, :cond_5

    .line 550
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 553
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v6, p0, Ljava/util/Map;

    if-eqz v6, :cond_6

    move-object v3, p0

    .line 554
    check-cast v3, Ljava/util/Map;

    .line 555
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const-string v6, "andIncrement"

    .line 556
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "andDecrement"

    .line 557
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 559
    .local v2, "iter":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 561
    .local v5, "value2":Ljava/lang/Object;
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_0

    .line 564
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;
    .end local v5    # "value2":Ljava/lang/Object;
    :cond_6
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to long, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 173
    if-nez p0, :cond_1

    .line 186
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 176
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 177
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 179
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 188
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 378
    if-nez p0, :cond_0

    move-object p0, v5

    .line 415
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 381
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Ljava/sql/Date;

    if-eqz v4, :cond_1

    .line 382
    check-cast p0, Ljava/sql/Date;

    goto :goto_0

    .line 384
    :cond_1
    instance-of v4, p0, Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 385
    new-instance v4, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 387
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/util/Calendar;

    if-eqz v4, :cond_3

    .line 388
    new-instance v4, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 390
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 391
    .restart local v0    # "longValue":J
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    move-object v4, p0

    .line 392
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 394
    :cond_4
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v3, p0

    .line 395
    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "null"

    .line 397
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "NULL"

    .line 398
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object p0, v5

    .line 399
    goto :goto_0

    .line 401
    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 402
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 412
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_7
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_a

    .line 413
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Date, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    .restart local v3    # "strVal":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 406
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    .line 408
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 415
    .end local v2    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_a
    new-instance p0, Ljava/sql/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 419
    if-nez p0, :cond_0

    move-object p0, v5

    .line 456
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 422
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Ljava/sql/Time;

    if-eqz v4, :cond_1

    .line 423
    check-cast p0, Ljava/sql/Time;

    goto :goto_0

    .line 425
    :cond_1
    instance-of v4, p0, Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 426
    new-instance v4, Ljava/sql/Time;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Time;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 428
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/util/Calendar;

    if-eqz v4, :cond_3

    .line 429
    new-instance v4, Ljava/sql/Time;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Time;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 431
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 432
    .restart local v0    # "longValue":J
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    move-object v4, p0

    .line 433
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 435
    :cond_4
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v3, p0

    .line 436
    check-cast v3, Ljava/lang/String;

    .line 437
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "null"

    .line 438
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "NULL"

    .line 439
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object p0, v5

    .line 440
    goto :goto_0

    .line 442
    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 443
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 453
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_7
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_a

    .line 454
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Date, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 445
    .restart local v3    # "strVal":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 446
    .local v2, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 447
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    .line 449
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 456
    .end local v2    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_a
    new-instance p0, Ljava/sql/Time;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Time;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 460
    if-nez p0, :cond_0

    move-object p0, v5

    .line 502
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 463
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Ljava/util/Calendar;

    if-eqz v4, :cond_1

    .line 464
    new-instance v4, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 466
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, p0, Ljava/sql/Timestamp;

    if-eqz v4, :cond_2

    .line 467
    check-cast p0, Ljava/sql/Timestamp;

    goto :goto_0

    .line 469
    :cond_2
    instance-of v4, p0, Ljava/util/Date;

    if-eqz v4, :cond_3

    .line 470
    new-instance v4, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v4

    goto :goto_0

    .line 472
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 473
    .restart local v0    # "longValue":J
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    move-object v4, p0

    .line 474
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 476
    :cond_4
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object v3, p0

    .line 477
    check-cast v3, Ljava/lang/String;

    .line 478
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "null"

    .line 479
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "NULL"

    .line 480
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object p0, v5

    .line 481
    goto :goto_0

    .line 483
    :cond_6
    const-string v4, ".000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 484
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 488
    :cond_7
    :goto_1
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 489
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 499
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_8
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_c

    .line 500
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    .restart local v3    # "strVal":Ljava/lang/String;
    :cond_9
    const-string v4, ".000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 491
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 492
    .local v2, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 493
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_2

    .line 495
    :cond_b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    .end local v2    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_c
    new-instance p0, Ljava/sql/Timestamp;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 2008
    move-object v1, p0

    .line 2009
    .local v1, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2011
    .local v2, "genericComponentType":Ljava/lang/reflect/Type;
    const-string v3, "["

    .line 2012
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_0

    .line 2013
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 2014
    .end local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2015
    .restart local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2018
    :cond_0
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 2019
    check-cast v0, Ljava/lang/Class;

    .line 2020
    .local v0, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2022
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2044
    .end local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-object v1

    .line 2024
    .restart local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_3

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 2026
    :cond_3
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_4

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 2028
    :cond_4
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_5

    .line 2029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 2030
    :cond_5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_6

    .line 2031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 2032
    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_7

    .line 2033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 2034
    :cond_7
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_8

    .line 2035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 2036
    :cond_8
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_1

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 2039
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public static clearClassMapping()V
    .locals 1

    .prologue
    .line 1167
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1168
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 1169
    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 15
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1684
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p4

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v4, p4, v13

    .line 1685
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1684
    :cond_0
    :goto_1
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_0

    .line 1688
    :cond_1
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1689
    .local v11, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v7, 0x0

    .local v7, "ordinal":I
    const/4 v8, 0x0

    .local v8, "serialzeFeatures":I
    const/4 v9, 0x0

    .line 1690
    .local v9, "parserFeatures":I
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "propertyName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1692
    .local v12, "label":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1693
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1696
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 1697
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 1698
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 1699
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1700
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    .line 1702
    :cond_2
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1703
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v12

    .line 1706
    :cond_3
    if-eqz p1, :cond_4

    .line 1707
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "propertyName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1708
    .restart local v2    # "propertyName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1712
    :cond_4
    if-eqz p2, :cond_5

    .line 1713
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1715
    :cond_5
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1716
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1718
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1721
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "ordinal":I
    .end local v8    # "serialzeFeatures":I
    .end local v9    # "parserFeatures":I
    .end local v11    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v12    # "label":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 42
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p4, "sorted"    # Z
    .param p5, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    new-instance v23, Ljava/util/LinkedHashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1363
    .local v23, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v29

    .line 1365
    .local v29, "kotlin":Z
    const/16 v20, 0x0

    .line 1366
    .local v20, "constructors":[Ljava/lang/reflect/Constructor;
    const/16 v34, 0x0

    check-cast v34, [[Ljava/lang/annotation/Annotation;

    .line 1367
    .local v34, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v37, 0x0

    .line 1368
    .local v37, "paramNames":[Ljava/lang/String;
    const/16 v36, 0x0

    .line 1369
    .local v36, "paramNameMapping":[S
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v31

    .line 1370
    .local v31, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v40, v0

    const/4 v9, 0x0

    move/from16 v39, v9

    :goto_0
    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_25

    aget-object v7, v31, v39

    .line 1371
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v30

    .line 1372
    .local v30, "methodName":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "ordinal":I
    const/4 v12, 0x0

    .local v12, "serialzeFeatures":I
    const/4 v13, 0x0

    .line 1373
    .local v13, "parserFeatures":I
    const/16 v16, 0x0

    .line 1374
    .local v16, "label":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1370
    :cond_0
    :goto_1
    add-int/lit8 v9, v39, 0x1

    move/from16 v39, v9

    goto :goto_0

    .line 1377
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1380
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 1383
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/ClassLoader;

    if-eq v9, v10, :cond_0

    .line 1387
    const-string v9, "getMetaClass"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1388
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "groovy.lang.MetaClass"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1391
    :cond_2
    const-string v9, "getSuppressed"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1392
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Throwable;

    if-eq v9, v10, :cond_0

    .line 1396
    :cond_3
    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1402
    :cond_4
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1403
    .local v22, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1404
    .local v14, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v14, :cond_5

    .line 1405
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v14

    .line 1407
    :cond_5
    if-nez v14, :cond_a

    if-eqz v29, :cond_a

    .line 1408
    if-nez v20, :cond_7

    .line 1409
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v20

    .line 1410
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v21

    .line 1411
    .local v21, "creatorConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v21, :cond_7

    .line 1412
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v34

    .line 1413
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v37

    .line 1414
    if-eqz v37, :cond_7

    .line 1415
    move-object/from16 v0, v37

    array-length v9, v0

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1416
    .local v38, "paramNames_sorted":[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v41

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1418
    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1419
    move-object/from16 v0, v37

    array-length v9, v0

    new-array v0, v9, [S

    move-object/from16 v36, v0

    .line 1420
    const/16 v32, 0x0

    .local v32, "p":S
    :goto_2
    move-object/from16 v0, v37

    array-length v9, v0

    move/from16 v0, v32

    if-ge v0, v9, :cond_6

    .line 1421
    aget-object v9, v37, v32

    move-object/from16 v0, v38

    invoke-static {v0, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v27

    .line 1422
    .local v27, "index":I
    aput-short v32, v36, v27

    .line 1420
    add-int/lit8 v9, v32, 0x1

    int-to-short v0, v9

    move/from16 v32, v0

    goto :goto_2

    .line 1424
    .end local v27    # "index":I
    :cond_6
    move-object/from16 v37, v38

    .line 1428
    .end local v21    # "creatorConstructor":Ljava/lang/reflect/Constructor;
    .end local v32    # "p":S
    .end local v38    # "paramNames_sorted":[Ljava/lang/String;
    :cond_7
    if-eqz v37, :cond_a

    if-eqz v36, :cond_a

    const-string v9, "get"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1429
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1430
    .local v6, "propertyName":Ljava/lang/String;
    move-object/from16 v0, v37

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v32

    .line 1431
    .local v32, "p":I
    if-gez v32, :cond_8

    .line 1432
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3
    move-object/from16 v0, v37

    array-length v9, v0

    move/from16 v0, v25

    if-ge v0, v9, :cond_8

    .line 1433
    aget-object v9, v37, v25

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1434
    move/from16 v32, v25

    .line 1439
    .end local v25    # "i":I
    :cond_8
    if-ltz v32, :cond_a

    .line 1440
    aget-short v27, v36, v32

    .line 1441
    .local v27, "index":S
    aget-object v35, v34, v27

    .line 1442
    .local v35, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v35, :cond_9

    .line 1443
    move-object/from16 v0, v35

    array-length v10, v0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_9

    aget-object v33, v35, v9

    .line 1444
    .local v33, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v41, v0

    if-eqz v41, :cond_d

    move-object/from16 v14, v33

    .line 1445
    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1450
    .end local v33    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_9
    if-nez v14, :cond_a

    .line 1451
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1452
    .local v8, "field":Ljava/lang/reflect/Field;
    if-eqz v8, :cond_a

    .line 1453
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    .end local v14    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1459
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v27    # "index":S
    .end local v32    # "p":I
    .end local v35    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v14    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_a
    if-eqz v14, :cond_f

    .line 1460
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1463
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v11

    .line 1464
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v12

    .line 1465
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v13

    .line 1466
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_e

    .line 1467
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1468
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    .line 1469
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 1470
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "propertyName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1471
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1475
    :cond_b
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1477
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1432
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v25    # "i":I
    .restart local v32    # "p":I
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 1443
    .end local v25    # "i":I
    .restart local v27    # "index":S
    .restart local v33    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v35    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1480
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v27    # "index":S
    .end local v32    # "p":I
    .end local v33    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v35    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_e
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    .line 1481
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v16

    .line 1484
    :cond_f
    const-string v9, "get"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1485
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 1488
    const-string v9, "getClass"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1491
    const-string v9, "getDeclaringClass"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1494
    :cond_10
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1496
    .local v18, "c3":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-nez v9, :cond_11

    const/16 v9, 0x200

    move/from16 v0, v18

    if-le v0, v9, :cond_1f

    .line 1499
    :cond_11
    sget-boolean v9, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v9, :cond_1e

    .line 1500
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1504
    .restart local v6    # "propertyName":Ljava/lang/String;
    :goto_5
    const/4 v9, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1514
    :goto_6
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v26

    .line 1515
    .local v26, "ignore":Z
    if-nez v26, :cond_0

    .line 1519
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1520
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_12

    .line 1521
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 1522
    .local v19, "ch":C
    const/16 v9, 0x41

    move/from16 v0, v19

    if-lt v0, v9, :cond_12

    const/16 v9, 0x5a

    move/from16 v0, v19

    if-gt v0, v9, :cond_12

    .line 1523
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1524
    .local v28, "javaBeanCompatiblePropertyName":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1527
    .end local v19    # "ch":C
    .end local v28    # "javaBeanCompatiblePropertyName":Ljava/lang/String;
    :cond_12
    const/4 v15, 0x0

    .line 1528
    .local v15, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v8, :cond_14

    .line 1529
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    .end local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1530
    .restart local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v15, :cond_14

    .line 1531
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1534
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v11

    .line 1535
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v12

    .line 1536
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v13

    .line 1537
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_13

    .line 1538
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1539
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    .line 1540
    if-eqz p2, :cond_13

    .line 1541
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "propertyName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1542
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1547
    :cond_13
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_14

    .line 1548
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v16

    .line 1552
    :cond_14
    if-eqz p2, :cond_15

    .line 1553
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "propertyName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1554
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1558
    :cond_15
    if-eqz p5, :cond_16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_16

    .line 1559
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1561
    :cond_16
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v10, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1563
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v18    # "c3":C
    .end local v26    # "ignore":Z
    :cond_17
    const-string v9, "is"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1566
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    .line 1569
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_18

    .line 1570
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    if-ne v9, v10, :cond_0

    .line 1573
    :cond_18
    const/4 v9, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 1575
    .local v17, "c2":C
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1576
    sget-boolean v9, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v9, :cond_22

    .line 1577
    const/4 v9, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1581
    .restart local v6    # "propertyName":Ljava/lang/String;
    :goto_7
    const/4 v9, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1589
    :goto_8
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v26

    .line 1590
    .restart local v26    # "ignore":Z
    if-nez v26, :cond_0

    .line 1593
    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1594
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_19

    .line 1595
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1597
    :cond_19
    const/4 v15, 0x0

    .line 1598
    .restart local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v8, :cond_1b

    .line 1599
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    .end local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1600
    .restart local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v15, :cond_1b

    .line 1601
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1604
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v11

    .line 1605
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v12

    .line 1606
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v13

    .line 1607
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1a

    .line 1608
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    .line 1609
    if-eqz p2, :cond_1a

    .line 1610
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "propertyName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1611
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1616
    :cond_1a
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1b

    .line 1617
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v16

    .line 1621
    :cond_1b
    if-eqz p2, :cond_1c

    .line 1622
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "propertyName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1623
    .restart local v6    # "propertyName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1627
    :cond_1c
    if-eqz p5, :cond_1d

    .line 1628
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1631
    :cond_1d
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1634
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v10, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1636
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1502
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v17    # "c2":C
    .end local v26    # "ignore":Z
    .restart local v18    # "c3":C
    :cond_1e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_5

    .line 1505
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_1f
    const/16 v9, 0x5f

    move/from16 v0, v18

    if-ne v0, v9, :cond_20

    .line 1506
    const/4 v9, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1507
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_20
    const/16 v9, 0x66

    move/from16 v0, v18

    if-ne v0, v9, :cond_21

    .line 1508
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1509
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_21
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    const/4 v9, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1510
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1579
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v18    # "c3":C
    .restart local v17    # "c2":C
    :cond_22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1582
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_23
    const/16 v9, 0x5f

    move/from16 v0, v17

    if-ne v0, v9, :cond_24

    .line 1583
    const/4 v9, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1584
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_24
    const/16 v9, 0x66

    move/from16 v0, v17

    if-ne v0, v9, :cond_0

    .line 1585
    const/4 v9, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1639
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "ordinal":I
    .end local v12    # "serialzeFeatures":I
    .end local v13    # "parserFeatures":I
    .end local v14    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v16    # "label":Ljava/lang/String;
    .end local v17    # "c2":C
    .end local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v30    # "methodName":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v24

    .line 1640
    .local v24, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1641
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
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
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 6
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1350
    .local v1, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1351
    .local v3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1352
    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 4
    .param p2, "sorted"    # Z
    .param p3, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1337
    .local v1, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v0, p0

    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1339
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v0, p1, p3, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1337
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1341
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_0
    invoke-static {p0, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 2049
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 2051
    .local v3, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/AbstractCollection;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/util/Collection;

    if-ne v3, v4, :cond_1

    .line 2053
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v2, "list":Ljava/util/Collection;
    :goto_0
    return-object v2

    .line 2054
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2055
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2056
    .end local v2    # "list":Ljava/util/Collection;
    :cond_2
    const-class v4, Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2057
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2058
    .end local v2    # "list":Ljava/util/Collection;
    :cond_3
    const-class v4, Ljava/util/TreeSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2059
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2060
    .end local v2    # "list":Ljava/util/Collection;
    :cond_4
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2061
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2062
    .end local v2    # "list":Ljava/util/Collection;
    :cond_5
    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2064
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    .line 2065
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 2069
    .local v1, "itemType":Ljava/lang/reflect/Type;
    :goto_1
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 2070
    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2067
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_6
    const-class v1, Ljava/lang/Object;

    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 2072
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    :cond_7
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 2073
    .end local v2    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1934
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1942
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1937
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1940
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1941
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1942
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2207
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2208
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2210
    .local v0, "ch":C
    int-to-long v4, v0

    xor-long/2addr v2, v4

    .line 2211
    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    .line 2208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2213
    .end local v0    # "ch":C
    :cond_0
    return-wide v2
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2191
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2192
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2194
    .local v0, "ch":C
    const/16 v4, 0x5f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 2192
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2197
    :cond_1
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_2

    .line 2198
    add-int/lit8 v4, v0, 0x20

    int-to-char v0, v4

    .line 2200
    :cond_2
    int-to-long v4, v0

    xor-long/2addr v2, v4

    .line 2201
    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    goto :goto_1

    .line 2203
    .end local v0    # "ch":C
    :cond_3
    return-wide v2
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 2345
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2346
    .local v0, "a":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    .local v1, "a":Ljava/lang/annotation/Annotation;, "TA;"
    move-object v3, v0

    .line 2358
    :goto_0
    return-object v3

    .line 2350
    .end local v1    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    .line 2351
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 2352
    .local v2, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v1    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    move-object v3, v0

    .line 2354
    goto :goto_0

    .line 2351
    .end local v1    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2358
    .end local v2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    const/4 v3, 0x0

    move-object v1, v0

    .end local v0    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v1    # "a":Ljava/lang/annotation/Annotation;, "TA;"
    goto :goto_0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1872
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 1873
    check-cast p0, Ljava/lang/Class;

    .line 1892
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1876
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1877
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1880
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2

    .line 1881
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v0, v2, v4

    .line 1882
    .local v0, "boundType":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "boundType":Ljava/lang/reflect/Type;
    move-object p0, v0

    goto :goto_0

    .line 1885
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_3

    .line 1886
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1887
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1888
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1892
    .end local v1    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_3
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1190
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 7
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1984
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    .line 1986
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v0, v4, v6

    .line 1987
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 1988
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 1989
    .local v3, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1990
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1991
    aget-object v0, v2, v6

    .line 1994
    .end local v2    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v3    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_0
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1995
    check-cast v1, Ljava/lang/Class;

    .line 1996
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1997
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not create ASMParser"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2000
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not create ASMParser"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2004
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_2
    const-class v1, Ljava/lang/Object;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    return-object v1
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x0

    .line 1960
    const/4 v2, 0x0

    .line 1961
    .local v2, "itemType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 1962
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 1963
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v0, v6, v8

    .line 1964
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 1965
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 1966
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1967
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1968
    aget-object v0, v4, v8

    .line 1971
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_0
    move-object v2, v0

    .line 1977
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1978
    const-class v2, Ljava/lang/Object;

    .line 1980
    :cond_2
    return-object v2

    .line 1972
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    .line 1973
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1974
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1975
    .local v3, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 1896
    array-length v7, p2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, p2, v5

    .line 1897
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1898
    .local v3, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1914
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 1903
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "itemName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_2

    .line 1904
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c0":C
    const/16 v8, 0x61

    if-lt v0, v8, :cond_2

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_2

    const/4 v8, 0x1

    .line 1905
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c1":C
    const/16 v8, 0x41

    if-lt v1, v8, :cond_2

    const/16 v8, 0x5a

    if-gt v1, v8, :cond_2

    .line 1906
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1896
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1910
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1911
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_4

    .line 1912
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .line 1914
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 10
    .param p1, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v3, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/4 v7, 0x0

    .line 1647
    .local v7, "orders":[Ljava/lang/String;
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1648
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_0

    .line 1649
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v7

    .line 1651
    :cond_0
    if-eqz v7, :cond_4

    array-length v8, v7

    if-lez v8, :cond_4

    .line 1652
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1653
    .local v6, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1654
    .local v1, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1656
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    const/4 v4, 0x0

    .line 1657
    .local v4, "i":I
    array-length v9, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v5, v7, v8

    .line 1658
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1659
    .restart local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v1, :cond_2

    .line 1660
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1664
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "item":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1665
    .restart local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1668
    .end local v1    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "i":I
    .end local v6    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1669
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1671
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    if-eqz p1, :cond_6

    .line 1672
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1675
    :cond_6
    return-object v3
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1843
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1849
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 1846
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1847
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0
.end method

.method public static getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 7
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;

    .prologue
    .line 2231
    const/4 v1, 0x0

    .line 2232
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p0, v3

    .line 2233
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 2234
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v2

    if-lez v5, :cond_1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2232
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2237
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 2240
    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 2242
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    return-object v1
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 16
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 2246
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-nez v13, :cond_0

    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v13, :cond_0

    .line 2248
    :try_start_0
    const-string v13, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2249
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-nez v13, :cond_2

    .line 2255
    const/4 v10, 0x0

    .line 2312
    :cond_1
    :goto_1
    return-object v10

    .line 2250
    :catch_0
    move-exception v4

    .line 2251
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_0

    .line 2258
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-nez v13, :cond_3

    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v13, :cond_3

    .line 2260
    :try_start_1
    const-string v13, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2261
    .restart local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    const-string v13, "getConstructors"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2267
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    :cond_3
    :goto_2
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-nez v13, :cond_4

    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v13, :cond_4

    .line 2269
    :try_start_2
    const-string v13, "kotlin.reflect.KFunction"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2270
    .local v1, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string v13, "getParameters"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v1, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2276
    .end local v1    # "class_kotlin_kfunction":Ljava/lang/Class;
    :cond_4
    :goto_3
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-nez v13, :cond_5

    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v13, :cond_5

    .line 2278
    :try_start_3
    const-string v13, "kotlin.reflect.KParameter"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2279
    .local v2, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string v13, "getName"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2285
    .end local v2    # "class_kotlinn_kparameter":Ljava/lang/Class;
    :cond_5
    :goto_4
    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v13, :cond_6

    .line 2286
    const/4 v10, 0x0

    goto :goto_1

    .line 2262
    :catch_1
    move-exception v4

    .line 2263
    .restart local v4    # "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_2

    .line 2271
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 2272
    .restart local v4    # "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_3

    .line 2280
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 2281
    .restart local v4    # "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_4

    .line 2290
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_6
    const/4 v3, 0x0

    .line 2291
    .local v3, "constructor":Ljava/lang/Object;
    :try_start_4
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2292
    .local v9, "kclassImpl":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 2293
    .local v6, "it":Ljava/lang/Iterable;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v3    # "constructor":Ljava/lang/Object;
    .local v8, "iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2294
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2295
    .local v7, "item":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2296
    .local v12, "parameters":Ljava/util/List;
    if-eqz v3, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 2293
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 2308
    .end local v6    # "it":Ljava/lang/Iterable;
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "iterator":Ljava/util/Iterator;
    .end local v9    # "kclassImpl":Ljava/lang/Object;
    .end local v12    # "parameters":Ljava/util/List;
    :catch_4
    move-exception v4

    .line 2309
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2310
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 2312
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2299
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v6    # "it":Ljava/lang/Iterable;
    .restart local v7    # "item":Ljava/lang/Object;
    .restart local v8    # "iterator":Ljava/util/Iterator;
    .restart local v9    # "kclassImpl":Ljava/lang/Object;
    .restart local v12    # "parameters":Ljava/util/List;
    :cond_7
    move-object v3, v7

    .restart local v3    # "constructor":Ljava/lang/Object;
    goto :goto_6

    .line 2301
    .end local v3    # "constructor":Ljava/lang/Object;
    .end local v7    # "item":Ljava/lang/Object;
    .end local v12    # "parameters":Ljava/util/List;
    :cond_8
    :try_start_5
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2302
    .restart local v12    # "parameters":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v10, v13, [Ljava/lang/String;

    .line 2303
    .local v10, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_1

    .line 2304
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 2305
    .local v11, "param":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v10, v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 2303
    add-int/lit8 v5, v5, 0x1

    goto :goto_7
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1926
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1927
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1928
    const/4 v1, 0x0

    .line 1930
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    goto :goto_0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "fromIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1725
    .local p0, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v1, :cond_1

    .line 1726
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1727
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "tempPropertyName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1731
    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 1728
    goto :goto_0

    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 1731
    goto :goto_0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2081
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2082
    check-cast p0, Ljava/lang/Class;

    .line 2084
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 2083
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2084
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 2086
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1918
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1919
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1920
    const/4 v1, 0x0

    .line 1922
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 16
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1735
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1736
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v5

    if-lez v9, :cond_5

    .line 1737
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1738
    .local v8, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v5

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_5

    aget-object v2, v5, v10

    .line 1739
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v13, v12

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_4

    aget-object v3, v12, v9

    .line 1740
    .local v3, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1741
    .local v4, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v14, v4

    array-length v15, v8

    if-eq v14, v15, :cond_1

    .line 1739
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1744
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1747
    const/4 v6, 0x1

    .line 1748
    .local v6, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v14, v8

    if-ge v1, v14, :cond_2

    .line 1749
    aget-object v14, v4, v1

    aget-object v15, v8, v1

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1750
    const/4 v6, 0x0

    .line 1754
    :cond_2
    if-eqz v6, :cond_0

    .line 1757
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1758
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_0

    .line 1794
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v1    # "i":I
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    .end local v8    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_3
    return-object v0

    .line 1748
    .restart local v1    # "i":I
    .restart local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v6    # "match":Z
    .restart local v8    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1738
    .end local v1    # "i":I
    .end local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    :cond_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 1764
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 1765
    .local v7, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_6

    .line 1766
    const/4 v0, 0x0

    goto :goto_3

    .line 1768
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1769
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1770
    .restart local v8    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_b

    aget-object v3, v10, v9

    .line 1771
    .restart local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1772
    .restart local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v12, v4

    array-length v13, v8

    if-eq v12, v13, :cond_8

    .line 1770
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1775
    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1778
    const/4 v6, 0x1

    .line 1779
    .restart local v6    # "match":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v12, v8

    if-ge v1, v12, :cond_9

    .line 1780
    aget-object v12, v4, v1

    aget-object v13, v8, v1

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1781
    const/4 v6, 0x0

    .line 1785
    :cond_9
    if-eqz v6, :cond_7

    .line 1788
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1789
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_7

    goto :goto_3

    .line 1779
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1794
    .end local v1    # "i":I
    .end local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    .end local v8    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2147
    if-nez p0, :cond_1

    .line 2163
    :cond_0
    :goto_0
    return v1

    .line 2151
    :cond_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v3, :cond_2

    .line 2153
    :try_start_0
    const-string v3, "javax.persistence.ManyToMany"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    :cond_2
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 2163
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 2154
    :catch_0
    move-exception v0

    .line 2156
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    goto :goto_1
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x0

    .line 2127
    if-nez p0, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return v1

    .line 2131
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v2, :cond_2

    .line 2133
    :try_start_0
    const-string v2, "javax.persistence.OneToMany"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    :cond_2
    :goto_1
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 2143
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0

    .line 2134
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    goto :goto_1
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 1829
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1830
    const/4 v1, 0x1

    .line 1839
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v0, "superType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 1832
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1833
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1834
    .restart local v0    # "superType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 1837
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2167
    if-nez p0, :cond_0

    .line 2187
    :goto_0
    return v3

    .line 2170
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v3, :cond_1

    .line 2172
    :try_start_0
    const-string v3, "org.hibernate.Hibernate"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2173
    .local v0, "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "isInitialized"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    .end local v0    # "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 2181
    :try_start_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 2182
    .local v2, "initialized":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 2174
    .end local v2    # "initialized":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 2176
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    goto :goto_1

    .line 2183
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    :cond_2
    move v3, v4

    .line 2187
    goto :goto_0
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1798
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1799
    .local v2, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v2, :cond_5

    .line 1803
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "fields":[Ljava/lang/String;
    array-length v5, v0

    if-lez v5, :cond_3

    .line 1805
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1806
    aget-object v5, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1825
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v3

    .line 1805
    .restart local v0    # "fields":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1810
    goto :goto_1

    .line 1812
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    .line 1813
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_5

    .line 1814
    aget-object v5, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1815
    goto :goto_1

    .line 1813
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1820
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1821
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1822
    goto :goto_1
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 2217
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v1, :cond_0

    .line 2219
    :try_start_0
    const-string v1, "kotlin.Metadata"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 2225
    const/4 v1, 0x0

    .line 2227
    :goto_1
    return v1

    .line 2220
    :catch_0
    move-exception v0

    .line 2221
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    goto :goto_0

    .line 2227
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 13
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2316
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v10, :cond_0

    sget-boolean v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v10, :cond_0

    .line 2318
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2319
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string v10, "kotlin.ranges.CharRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2320
    .local v0, "charRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    const-string v10, "kotlin.ranges.IntRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2322
    .local v5, "intRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    const-string v10, "kotlin.ranges.LongRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2324
    .local v6, "longRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    const-string v10, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2326
    .local v3, "floatRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    const-string v10, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2328
    .local v1, "doubleRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    sput-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    .end local v0    # "charRangeClass":Ljava/lang/Class;
    .end local v1    # "doubleRangeClass":Ljava/lang/Class;
    .end local v3    # "floatRangeClass":Ljava/lang/Class;
    .end local v5    # "intRangeClass":Ljava/lang/Class;
    .end local v6    # "longRangeClass":Ljava/lang/Class;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    :cond_0
    :goto_0
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 2341
    :cond_1
    :goto_1
    return v9

    .line 2330
    :catch_0
    move-exception v2

    .line 2331
    .local v2, "error":Ljava/lang/Throwable;
    sput-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    goto :goto_0

    .line 2337
    .end local v2    # "error":Ljava/lang/Throwable;
    :cond_2
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2338
    .local v4, "ignores":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2341
    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_3

    :goto_2
    move v9, v8

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_2
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 507
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 508
    .local v0, "ch":C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    .line 509
    :cond_0
    if-eqz v1, :cond_3

    .line 518
    .end local v0    # "ch":C
    :cond_1
    :goto_1
    return v2

    .line 514
    .restart local v0    # "ch":C
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 506
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "ch":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1176
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v1, :cond_0

    .line 1178
    :try_start_0
    const-string v1, "java.nio.file.Path"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1184
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 1186
    :goto_1
    return v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    goto :goto_0

    .line 1186
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 2092
    .local v1, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2093
    .local v0, "interfaceName":Ljava/lang/String;
    const-string v7, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "org.springframework.cglib.proxy.Factory"

    .line 2094
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2103
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v2

    .line 2097
    .restart local v0    # "interfaceName":Ljava/lang/String;
    .restart local v1    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v7, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2098
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2091
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v2, v3

    .line 2103
    goto :goto_1
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2107
    if-nez p0, :cond_1

    .line 2123
    :cond_0
    :goto_0
    return v2

    .line 2110
    :cond_1
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    if-nez v3, :cond_2

    .line 2112
    :try_start_0
    const-string v3, "java.beans.Transient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2119
    :cond_2
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 2120
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2121
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    .line 2113
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v3

    .line 2116
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    throw v2

    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    move v1, v2

    .line 2121
    goto :goto_2
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1194
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1199
    :cond_0
    const/4 v0, 0x0

    .line 1244
    :cond_1
    :goto_0
    return-object v0

    .line 1201
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1202
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 1205
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    .line 1206
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1207
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1209
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v5, "L"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1211
    .local v4, "newClassName":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1214
    .end local v4    # "newClassName":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 1215
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1216
    if-eqz p2, :cond_1

    .line 1217
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1221
    :catch_0
    move-exception v3

    .line 1222
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1226
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1227
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_6

    if-eq v2, p1, :cond_6

    .line 1228
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1229
    if-eqz p2, :cond_1

    .line 1230
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1234
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    .line 1238
    :cond_6
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1239
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1241
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 1946
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v1, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1953
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "error":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "strVal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 807
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 809
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 814
    :goto_0
    return-object v1

    .line 811
    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_1

    .line 812
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x1

    .line 1853
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v1, :cond_0

    .line 1855
    :try_start_0
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 1862
    :cond_0
    :goto_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 1863
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1864
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 1865
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p0, v1, v2

    .line 1868
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    return-object p0

    .line 1856
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 1859
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v1
.end method
