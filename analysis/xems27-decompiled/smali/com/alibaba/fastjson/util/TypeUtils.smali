.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field private static class_ManyToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z

.field private static class_OneToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
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
            "Ljava/util/Map<",
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
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 79
    const-string v0, "true"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 81
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 82
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 83
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 85
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 87
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 89
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 92
    const/4 v3, 0x0

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 93
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 94
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 95
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 97
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 98
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 109
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x10

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v3, v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 111
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 115
    :try_start_0
    const-string v1, "fastjson.compatibleWithJavaBean"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 116
    const-string v1, "fastjson.compatibleWithFieldName"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 123
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 17

    .line 1041
    const-class v0, [C

    const-class v1, [Z

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [S

    const-class v7, [B

    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v10, "byte"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v10, "short"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "int"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v10, "long"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v10, "float"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v10, "double"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v10, "boolean"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v10, "char"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[byte"

    invoke-interface {v8, v9, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[short"

    invoke-interface {v8, v9, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[int"

    invoke-interface {v8, v9, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[long"

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[float"

    invoke-interface {v8, v9, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[double"

    invoke-interface {v8, v9, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[boolean"

    invoke-interface {v8, v9, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[char"

    invoke-interface {v8, v9, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[B"

    invoke-interface {v8, v9, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[S"

    invoke-interface {v7, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v7, "[I"

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v6, "[J"

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v5, "[F"

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v4, "[D"

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v3, "[C"

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v2, "[Z"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Cloneable;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1068
    const-string v1, "java.lang.AutoCloseable"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-class v3, Ljava/lang/Exception;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Ljava/lang/RuntimeException;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Ljava/lang/IllegalAccessError;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-class v3, Ljava/lang/IllegalAccessException;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-class v3, Ljava/lang/IllegalArgumentException;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-class v3, Ljava/lang/IllegalMonitorStateException;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-class v3, Ljava/lang/IllegalStateException;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-class v3, Ljava/lang/IllegalThreadStateException;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-class v3, Ljava/lang/InstantiationError;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-class v3, Ljava/lang/InstantiationException;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-class v3, Ljava/lang/InternalError;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-class v3, Ljava/lang/InterruptedException;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-class v3, Ljava/lang/LinkageError;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-class v3, Ljava/lang/NegativeArraySizeException;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-class v3, Ljava/lang/NoClassDefFoundError;

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-class v3, Ljava/lang/NoSuchFieldError;

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-class v3, Ljava/lang/NoSuchFieldException;

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-class v3, Ljava/lang/NoSuchMethodError;

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-class v3, Ljava/lang/NoSuchMethodException;

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-class v3, Ljava/lang/NullPointerException;

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-class v3, Ljava/lang/NumberFormatException;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-class v3, Ljava/lang/OutOfMemoryError;

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-class v3, Ljava/lang/SecurityException;

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-class v3, Ljava/lang/StackOverflowError;

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-class v3, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-class v3, Ljava/lang/TypeNotPresentException;

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-class v3, Ljava/lang/VerifyError;

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-class v3, Ljava/lang/StackTraceElement;

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-class v3, Ljava/util/HashMap;

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-class v3, Ljava/util/Hashtable;

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-class v3, Ljava/util/TreeMap;

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-class v3, Ljava/util/IdentityHashMap;

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-class v3, Ljava/util/WeakHashMap;

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-class v3, Ljava/util/LinkedHashMap;

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-class v3, Ljava/util/HashSet;

    aput-object v3, v0, v1

    const/16 v1, 0x27

    const-class v3, Ljava/util/LinkedHashSet;

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-class v3, Ljava/util/TreeSet;

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-class v3, Ljava/util/concurrent/TimeUnit;

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v3, v0, v1

    .line 1109
    const-string v1, "java.util.concurrent.ConcurrentSkipListMap"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    .line 1110
    const-string v1, "java.util.concurrent.ConcurrentSkipListSet"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    const/16 v1, 0x2d

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v3, v0, v1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    const/16 v1, 0x30

    const-class v3, Ljava/util/BitSet;

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-class v3, Ljava/util/Calendar;

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-class v3, Ljava/util/Date;

    aput-object v3, v0, v1

    const/16 v1, 0x33

    const-class v3, Ljava/util/Locale;

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-class v3, Ljava/util/UUID;

    aput-object v3, v0, v1

    const/16 v1, 0x35

    const-class v3, Ljava/sql/Time;

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-class v3, Ljava/sql/Date;

    aput-object v3, v0, v1

    const/16 v1, 0x37

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-class v3, Ljava/text/SimpleDateFormat;

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    aput-object v3, v0, v1

    .line 1125
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1126
    .local v4, "clazz":Ljava/lang/Class;
    if-nez v4, :cond_0

    .line 1127
    goto :goto_1

    .line 1129
    :cond_0
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .end local v4    # "clazz":Ljava/lang/Class;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    const-string v1, "java.awt.Rectangle"

    const-string v3, "java.awt.Point"

    const-string v4, "java.awt.Font"

    const-string v5, "java.awt.Color"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "awt":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 1137
    .local v5, "className":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1138
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_2

    .line 1139
    goto :goto_3

    .line 1141
    :cond_2
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1143
    :cond_3
    :goto_3
    const-string v5, "org.springframework.util.LinkedMultiValueMap"

    const-string v6, "org.springframework.util.LinkedCaseInsensitiveMap"

    const-string v7, "org.springframework.remoting.support.RemoteInvocation"

    const-string v8, "org.springframework.remoting.support.RemoteInvocationResult"

    const-string v9, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    const-string v10, "org.springframework.security.web.savedrequest.SavedCookie"

    const-string v11, "org.springframework.security.web.csrf.DefaultCsrfToken"

    const-string v12, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    const-string v13, "org.springframework.security.core.context.SecurityContextImpl"

    const-string v14, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    const-string v15, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    const-string v16, "org.springframework.security.core.userdetails.User"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v3

    .line 1157
    .local v3, "spring":[Ljava/lang/String;
    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 1158
    .restart local v5    # "className":Ljava/lang/String;
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1159
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_4

    .line 1160
    goto :goto_5

    .line 1162
    :cond_4
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1164
    :cond_5
    :goto_5
    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .line 1250
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 21
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .line 1258
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1259
    .local v10, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    const/4 v0, 0x0

    .line 1261
    .local v0, "orders":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "typeName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1262
    .local v2, "typeKey":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v10, :cond_8

    .line 1263
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    .line 1265
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1267
    const/4 v1, 0x0

    .line 1270
    :cond_0
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v4

    .line 1271
    .local v4, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    if-eqz v4, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v4, v5, :cond_1

    .line 1272
    move-object v5, v4

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v5, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    goto :goto_0

    .line 1275
    .end local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_1
    move-object/from16 v5, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_0
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    .line 1276
    .local v6, "features":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 1277
    .local v7, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v7, :cond_4

    const-class v11, Ljava/lang/Object;

    if-eq v7, v11, :cond_4

    .line 1279
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v7, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1280
    .local v11, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v11, :cond_2

    .line 1281
    goto :goto_2

    .line 1283
    :cond_2
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v2

    .line 1284
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1285
    goto :goto_2

    .line 1278
    .end local v11    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    .line 1289
    .end local v7    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_6

    aget-object v13, v7, v12

    .line 1290
    .local v13, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v13, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1291
    .local v14, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v14, :cond_5

    .line 1292
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v2

    .line 1293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_5

    .line 1294
    goto :goto_4

    .line 1289
    .end local v13    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1299
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 1300
    const/4 v2, 0x0

    .line 1302
    .end local v4    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_7
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v11, v5

    move v15, v6

    goto :goto_5

    .line 1303
    .end local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v6    # "features":I
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v11, p2

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v6

    .line 1306
    .end local v0    # "orders":[Ljava/lang/String;
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v2    # "typeKey":Ljava/lang/String;
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v11, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v12, "orders":[Ljava/lang/String;
    .local v13, "typeName":Ljava/lang/String;
    .local v14, "typeKey":Ljava/lang/String;
    .local v15, "features":I
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 1307
    .local v7, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {v8, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1308
    if-eqz p3, :cond_9

    .line 1309
    invoke-static {v8, v9, v3, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 1310
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    :goto_6
    move-object v6, v0

    .line 1311
    .local v6, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1312
    .local v5, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1315
    if-eqz v12, :cond_b

    array-length v0, v12

    if-eqz v0, :cond_b

    .line 1316
    if-eqz p3, :cond_a

    .line 1317
    const/4 v0, 0x1

    invoke-static {v8, v9, v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    move-object v8, v5

    goto :goto_7

    :cond_a
    const/4 v4, 0x1

    .line 1318
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v8, v5

    .end local v5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v8, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    :goto_7
    move-object v5, v0

    .local v0, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    goto :goto_8

    .line 1315
    .end local v0    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v8    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_b
    move-object v8, v5

    .line 1320
    .end local v5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v8    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1321
    .restart local v0    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v5, v0

    .line 1323
    .end local v0    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v5, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1324
    .local v0, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1325
    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1326
    move-object v0, v8

    move-object/from16 v16, v0

    goto :goto_9

    .line 1325
    :cond_c
    move-object/from16 v16, v0

    .line 1328
    .end local v0    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v16, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_9
    new-instance v17, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v18, v5

    .end local v5    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v18, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move v5, v15

    move-object/from16 v19, v6

    .end local v6    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v19, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v6, v8

    move-object/from16 v20, v7

    .end local v7    # "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .local v20, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v17
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 659
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 660
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 661
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 662
    :cond_0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 663
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 664
    :cond_1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 665
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 666
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 667
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 668
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 669
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 670
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 671
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 672
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 673
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 675
    :cond_6
    return-object v0

    .line 677
    :cond_7
    if-eqz p1, :cond_30

    .line 680
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 681
    return-object p0

    .line 683
    :cond_8
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 684
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_9

    .line 685
    return-object p0

    .line 687
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 688
    .local v0, "map":Ljava/util/Map;
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 689
    return-object p0

    .line 691
    :cond_a
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 693
    .end local v0    # "map":Ljava/util/Map;
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 694
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 695
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 696
    .local v0, "collection":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 697
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 698
    .local v2, "array":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 699
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 700
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 701
    nop

    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 702
    goto :goto_0

    .line 703
    :cond_c
    return-object v2

    .line 705
    .end local v0    # "collection":Ljava/util/Collection;
    .end local v1    # "index":I
    .end local v2    # "array":Ljava/lang/Object;
    :cond_d
    const-class v1, [B

    if-ne p1, v1, :cond_e

    .line 706
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 709
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 710
    return-object p0

    .line 712
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2f

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_10

    goto/16 :goto_a

    .line 715
    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2e

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_11

    goto/16 :goto_9

    .line 718
    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2d

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_12

    goto/16 :goto_8

    .line 721
    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2c

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_13

    goto/16 :goto_7

    .line 724
    :cond_13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2b

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_14

    goto/16 :goto_6

    .line 727
    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2a

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_15

    goto/16 :goto_5

    .line 730
    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_29

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_16

    goto/16 :goto_4

    .line 733
    :cond_16
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_28

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_17

    goto/16 :goto_3

    .line 736
    :cond_17
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_18

    .line 737
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 739
    :cond_18
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_19

    .line 740
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 742
    :cond_19
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_1a

    .line 743
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 745
    :cond_1a
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_1b

    .line 746
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 748
    :cond_1b
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_1c

    .line 749
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 751
    :cond_1c
    const-class v1, Ljava/sql/Time;

    if-ne p1, v1, :cond_1d

    .line 752
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 754
    :cond_1d
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_1e

    .line 755
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 757
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 758
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 760
    :cond_1f
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "can not cast to : "

    if-eqz v1, :cond_21

    .line 761
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 763
    .local v0, "date":Ljava/util/Date;
    const-class v1, Ljava/util/Calendar;

    if-ne p1, v1, :cond_20

    .line 764
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendar":Ljava/util/Calendar;
    goto :goto_1

    .line 767
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_20
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .restart local v1    # "calendar":Ljava/util/Calendar;
    nop

    .line 772
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 773
    return-object v1

    .line 768
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 776
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "className":Ljava/lang/String;
    const-string v3, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 778
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 779
    .restart local v0    # "date":Ljava/util/Date;
    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v3, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 780
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 781
    sget-object v3, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v3

    return-object v3

    .line 784
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_22
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 785
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 786
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    .line 787
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 788
    const-string v4, "NULL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_2

    .line 791
    :cond_23
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_24

    .line 792
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 794
    :cond_24
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_25

    .line 795
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 798
    :cond_25
    const-string v0, "java.time."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 799
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 789
    .end local v0    # "json":Ljava/lang/String;
    :cond_26
    :goto_2
    return-object v0

    .line 803
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    .end local v1    # "className":Ljava/lang/String;
    :cond_28
    :goto_3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 731
    :cond_29
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 728
    :cond_2a
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 725
    :cond_2b
    :goto_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 722
    :cond_2c
    :goto_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 719
    :cond_2d
    :goto_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 716
    :cond_2e
    :goto_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 713
    :cond_2f
    :goto_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 678
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
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

    .line 867
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 868
    .local v0, "rawTye":Ljava/lang/reflect/Type;
    const-class v1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_5

    .line 873
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 874
    .local v1, "itemType":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_5

    .line 876
    const-class v2, Ljava/util/Set;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/util/HashSet;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 878
    :cond_1
    const-class v2, Ljava/util/TreeSet;

    if-ne v0, v2, :cond_2

    .line 879
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .local v2, "collection":Ljava/util/Collection;
    goto :goto_1

    .line 881
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "collection":Ljava/util/Collection;
    goto :goto_1

    .line 877
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_3
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 883
    .restart local v2    # "collection":Ljava/util/Collection;
    :goto_1
    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 884
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 885
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_2

    .line 887
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    return-object v2

    .line 890
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_5
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_8

    .line 891
    :cond_6
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 892
    .local v1, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 893
    .local v4, "valueType":Ljava/lang/reflect/Type;
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 894
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 895
    .local v2, "map":Ljava/util/Map;
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 896
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 897
    .local v6, "key":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .line 898
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 900
    :cond_7
    return-object v2

    .line 903
    .end local v1    # "keyType":Ljava/lang/reflect/Type;
    .end local v2    # "map":Ljava/util/Map;
    .end local v4    # "valueType":Ljava/lang/reflect/Type;
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 904
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 905
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 906
    return-object v4

    .line 909
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_9
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_a

    .line 910
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 911
    .local v1, "argType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_a

    .line 912
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 916
    .end local v1    # "argType":Ljava/lang/reflect/Type;
    :cond_a
    const-class v1, Ljava/util/Map$Entry;

    if-ne v0, v1, :cond_b

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_b

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 917
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 918
    .local v1, "entry":Ljava/util/Map$Entry;
    return-object v1

    .line 921
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_b
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 922
    if-nez p2, :cond_c

    .line 923
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 925
    :cond_c
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 926
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_d

    .line 927
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v3, v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 929
    .local v3, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-interface {v1, v3, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 933
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 3
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

    .line 842
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 843
    return-object v0

    .line 845
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 846
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 848
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 849
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 851
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 852
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 853
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 854
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 855
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 856
    :cond_3
    return-object v0

    .line 859
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 860
    return-object p0

    .line 862
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 193
    return-object v0

    .line 195
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 196
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 198
    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p0

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 201
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 203
    return-object v0

    .line 205
    :cond_3
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 206
    return-object v0

    .line 208
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 213
    return-object v0

    .line 215
    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 216
    move-object v0, p0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 218
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 224
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 227
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 225
    :cond_4
    :goto_0
    return-object v0

    .line 219
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 617
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 618
    return-object v0

    .line 620
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 621
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 623
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 624
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 626
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 627
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 628
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 629
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 630
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 633
    :cond_4
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 634
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 637
    :cond_5
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 638
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 641
    :cond_6
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 642
    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 645
    :cond_7
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 646
    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 647
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 643
    :cond_9
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 639
    :cond_a
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 635
    :cond_b
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 631
    :cond_c
    :goto_4
    return-object v0

    .line 650
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 135
    return-object v0

    .line 137
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 138
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 141
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 145
    :cond_3
    :goto_0
    return-object v0

    .line 149
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 607
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 608
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 610
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 611
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 613
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    return-object v0

    .line 156
    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 157
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    return-object v0

    .line 159
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to char, value : "

    if-eqz v1, :cond_4

    .line 160
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 162
    return-object v0

    .line 164
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 167
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 165
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 10
    .param p0, "value"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 276
    return-object v0

    .line 278
    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 279
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 281
    :cond_1
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 282
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 284
    :cond_2
    const-wide/16 v1, -0x1

    .line 285
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 286
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 287
    .end local v1    # "longValue":J
    .local v0, "longValue":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 289
    .end local v0    # "longValue":J
    .restart local v1    # "longValue":J
    :cond_3
    instance-of v3, p0, Ljava/lang/String;

    const-string v4, "can not cast to Date, value : "

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    .line 290
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 291
    .local v3, "strVal":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 293
    .local v6, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 294
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 295
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 295
    return-object v4

    .line 298
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 299
    nop

    .line 300
    const-string v7, "/Date("

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, ")/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 301
    const/4 v7, 0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "dotnetDateStr":Ljava/lang/String;
    move-object v3, v7

    .line 304
    .end local v7    # "dotnetDateStr":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x2d

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 307
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_a

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_6

    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string v5, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 310
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_7

    .line 311
    const-string v0, "yyyy-MM-dd"

    .local v0, "format":Ljava/lang/String;
    goto :goto_1

    .line 312
    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_8

    .line 313
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 314
    .end local v0    # "format":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_9

    const/16 v0, 0x1a

    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_9

    const/16 v0, 0x1c

    .line 316
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-ne v0, v5, :cond_9

    .line 317
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 319
    .end local v0    # "format":Ljava/lang/String;
    :cond_9
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v0    # "format":Ljava/lang/String;
    :cond_a
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 321
    .restart local v0    # "format":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v7, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v5, v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 322
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v7, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 324
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 325
    :catch_0
    move-exception v7

    .line 326
    .local v7, "e":Ljava/text/ParseException;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 329
    .end local v0    # "format":Ljava/lang/String;
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    .line 330
    return-object v0

    .line 332
    :cond_c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    .line 298
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 334
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v6    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_d
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-gez v0, :cond_12

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 336
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "oracle.sql.TIMESTAMP"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "toJdbc"

    const/4 v7, 0x1

    if-eqz v3, :cond_f

    .line 337
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v3, :cond_e

    .line 339
    :try_start_2
    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 343
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 340
    :catch_1
    move-exception v3

    goto :goto_4

    .line 343
    :goto_3
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v3

    :goto_4
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 348
    :cond_e
    :try_start_3
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 351
    .local v3, "result":Ljava/lang/Object;
    nop

    .line 352
    move-object v4, v3

    check-cast v4, Ljava/util/Date;

    return-object v4

    .line 349
    .end local v3    # "result":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 354
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "oracle.sql.DATE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 355
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_10

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v3, :cond_10

    .line 357
    :try_start_4
    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 361
    :catchall_2
    move-exception v3

    goto :goto_5

    .line 358
    :catch_3
    move-exception v3

    goto :goto_6

    .line 361
    :goto_5
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v3

    :goto_6
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 366
    :cond_10
    :try_start_5
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 369
    .local v3, "result":Ljava/lang/Object;
    nop

    .line 370
    move-object v4, v3

    check-cast v4, Ljava/util/Date;

    return-object v4

    .line 367
    .end local v3    # "result":Ljava/lang/Object;
    :catch_4
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 372
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 254
    return-object v0

    .line 256
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 257
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 266
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_3
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 264
    :cond_4
    :goto_0
    return-object v0

    .line 271
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 820
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "can not cast to : "

    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 821
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 822
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 823
    const/4 v0, 0x0

    return-object v0

    .line 825
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 827
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 828
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 829
    .local v1, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    .line 830
    .local v2, "values":[Ljava/lang/Object;
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 831
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 836
    .end local v1    # "ordinal":I
    .end local v2    # "values":[Ljava/lang/Object;
    :cond_2
    nop

    .line 837
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 232
    return-object v0

    .line 234
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 235
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 242
    :cond_4
    :goto_0
    return-object v0

    .line 249
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 568
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 569
    return-object v0

    .line 571
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 572
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 574
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 575
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 577
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 578
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 579
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 581
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 584
    :cond_3
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 585
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 582
    :cond_5
    :goto_0
    return-object v0

    .line 589
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 590
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 592
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 593
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 594
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 595
    const-string v1, "andIncrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 596
    const-string v1, "andDecrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 597
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 598
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 600
    .local v2, "value2":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 603
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "value2":Ljava/lang/Object;
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
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
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 654
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 939
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p1, v0, :cond_1

    .line 940
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 941
    .local v0, "declaringClass":Ljava/lang/String;
    const-string v1, "methodName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 942
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "fileName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 945
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "lineNumber"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 946
    .local v3, "value":Ljava/lang/Number;
    if-nez v3, :cond_0

    .line 947
    const/4 v4, 0x0

    .local v4, "lineNumber":I
    goto :goto_0

    .line 949
    .end local v4    # "lineNumber":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 952
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v4    # "lineNumber":I
    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 956
    .end local v0    # "declaringClass":Ljava/lang/String;
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "lineNumber":I
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 957
    .local v0, "iClassObject":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 958
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 960
    .local v1, "className":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 961
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object p2, v2

    .line 963
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 964
    .local v2, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_3

    .line 967
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 968
    invoke-static {p0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 965
    :cond_3
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    throw v3

    .line 973
    .end local v0    # "iClassObject":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    .line 976
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 978
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 980
    .restart local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    if-nez p2, :cond_6

    .line 981
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    move-object p2, v1

    .line 983
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 984
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_7

    .line 985
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 988
    .end local v2    # "json":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 992
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_a

    .line 993
    const-string v0, "language"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 994
    .local v0, "arg0":Ljava/lang/Object;
    const-string v1, "country"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 995
    .local v1, "arg1":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 996
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 997
    .local v2, "language":Ljava/lang/String;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 998
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 999
    .local v3, "country":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1000
    .end local v3    # "country":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 1001
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1006
    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v2    # "language":Ljava/lang/String;
    :cond_a
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_b

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_b

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_b
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_d

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_d

    .line 1011
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1012
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    .line 1013
    .local v1, "innerMap":Ljava/util/Map;
    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_c

    .line 1014
    return-object v1

    .line 1016
    :cond_c
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1017
    .local v2, "linkedHashMap":Ljava/util/LinkedHashMap;
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1021
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "innerMap":Ljava/util/Map;
    .end local v2    # "linkedHashMap":Ljava/util/LinkedHashMap;
    :cond_d
    if-nez p2, :cond_e

    .line 1022
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    move-object p2, v0

    .line 1025
    :cond_e
    const/4 v0, 0x0

    .line 1026
    .local v0, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1027
    .local v1, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_f

    .line 1028
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object v0, v2

    .line 1031
    :cond_f
    if-eqz v0, :cond_10

    .line 1034
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1032
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get javaBeanDeserializer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v0    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v1    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 522
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 523
    return-object v0

    .line 525
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 526
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 528
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 529
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 530
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 532
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 535
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 543
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v2, 0x0

    .line 545
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 546
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 548
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 549
    if-eqz v2, :cond_6

    .line 550
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 533
    .end local v0    # "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_5
    :goto_0
    return-object v0

    .line 553
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 554
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 555
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 556
    const-string v1, "andIncrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 557
    const-string v1, "andDecrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 558
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 559
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 561
    .local v2, "value2":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 564
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "value2":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 174
    return-object v0

    .line 176
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 177
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 180
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 184
    :cond_3
    :goto_0
    return-object v0

    .line 188
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 379
    return-object v0

    .line 381
    :cond_0
    instance-of v1, p0, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 382
    move-object v0, p0

    check-cast v0, Ljava/sql/Date;

    return-object v0

    .line 384
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 385
    new-instance v0, Ljava/sql/Date;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 387
    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 388
    new-instance v0, Ljava/sql/Date;

    move-object v1, p0

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 390
    :cond_3
    const-wide/16 v1, 0x0

    .line 391
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 392
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 394
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 395
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 397
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 398
    const-string v4, "NULL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 401
    :cond_5
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 404
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 406
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_1

    .line 408
    :cond_7
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    .end local v0    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_8
    :goto_0
    return-object v0

    .line 412
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_9
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_a

    .line 415
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 413
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to Date, value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 419
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 420
    return-object v0

    .line 422
    :cond_0
    instance-of v1, p0, Ljava/sql/Time;

    if-eqz v1, :cond_1

    .line 423
    move-object v0, p0

    check-cast v0, Ljava/sql/Time;

    return-object v0

    .line 425
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 426
    new-instance v0, Ljava/sql/Time;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 428
    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 429
    new-instance v0, Ljava/sql/Time;

    move-object v1, p0

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 431
    :cond_3
    const-wide/16 v1, 0x0

    .line 432
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 433
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 435
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 436
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 437
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 438
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 439
    const-string v4, "NULL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 442
    :cond_5
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 445
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_1

    .line 449
    :cond_7
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    .end local v0    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_8
    :goto_0
    return-object v0

    .line 453
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_9
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_a

    .line 456
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 454
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to Date, value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 460
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 461
    return-object v0

    .line 463
    :cond_0
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 464
    new-instance v0, Ljava/sql/Timestamp;

    move-object v1, p0

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 466
    :cond_1
    instance-of v1, p0, Ljava/sql/Timestamp;

    if-eqz v1, :cond_2

    .line 467
    move-object v0, p0

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0

    .line 469
    :cond_2
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 470
    new-instance v0, Ljava/sql/Timestamp;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 472
    :cond_3
    const-wide/16 v1, 0x0

    .line 473
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 474
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 476
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    const-string v4, "can not cast to Timestamp, value : "

    if-eqz v3, :cond_b

    .line 477
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 478
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 479
    const-string v5, "null"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 480
    const-string v5, "NULL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 483
    :cond_5
    const-string v0, ".000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 484
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 485
    :cond_6
    const-string v0, ".000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 488
    :cond_7
    :goto_0
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    .line 491
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 493
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_2

    .line 495
    :cond_9
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    .end local v0    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_a
    :goto_1
    return-object v0

    .line 499
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_b
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_c

    .line 502
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 500
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .line 2008
    move-object v0, p0

    .line 2009
    .local v0, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2011
    .local v1, "genericComponentType":Ljava/lang/reflect/Type;
    const-string v2, "["

    .line 2012
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_0

    .line 2013
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 2014
    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2018
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_9

    .line 2019
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    .line 2020
    .local v3, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2022
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2024
    :cond_1
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2026
    :cond_2
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2028
    :cond_3
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    .line 2029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2030
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 2031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2032
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    .line 2033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2034
    :cond_6
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 2035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2036
    :cond_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_8

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2040
    :cond_8
    :goto_1
    goto :goto_2

    .line 2039
    :catch_0
    move-exception v4

    .line 2044
    .end local v3    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_2
    return-object v0
.end method

.method public static clearClassMapping()V
    .locals 1

    .line 1167
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1168
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 1169
    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 26
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 1684
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v15, v3, v5

    .line 1685
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1686
    goto/16 :goto_3

    .line 1688
    :cond_0
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v15, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1689
    .local v18, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v6, 0x0

    .local v6, "ordinal":I
    const/4 v7, 0x0

    .local v7, "serialzeFeatures":I
    const/4 v8, 0x0

    .line 1690
    .local v8, "parserFeatures":I
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1691
    .local v9, "propertyName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1692
    .local v10, "label":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 1693
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1694
    goto/16 :goto_3

    .line 1696
    :cond_1
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 1697
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 1698
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 1699
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 1700
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    .line 1702
    :cond_2
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1703
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v10

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    goto :goto_1

    .line 1702
    :cond_3
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    goto :goto_1

    .line 1692
    :cond_4
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v10

    .line 1706
    .end local v6    # "ordinal":I
    .end local v7    # "serialzeFeatures":I
    .end local v8    # "parserFeatures":I
    .end local v10    # "label":Ljava/lang/String;
    .local v19, "ordinal":I
    .local v20, "serialzeFeatures":I
    .local v21, "parserFeatures":I
    .local v22, "label":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_5

    .line 1707
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .line 1708
    if-nez v9, :cond_5

    .line 1709
    goto :goto_3

    .line 1712
    :cond_5
    if-eqz v1, :cond_6

    .line 1713
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    goto :goto_2

    .line 1712
    :cond_6
    move-object v14, v9

    .line 1715
    .end local v9    # "propertyName":Ljava/lang/String;
    .local v14, "propertyName":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1716
    new-instance v23, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, v23

    move-object v7, v14

    move-object v9, v15

    move-object/from16 v10, p0

    move/from16 v12, v19

    move/from16 v13, v20

    move-object/from16 v24, v14

    .end local v14    # "propertyName":Ljava/lang/String;
    .local v24, "propertyName":Ljava/lang/String;
    move/from16 v14, v21

    move-object/from16 v25, v15

    .end local v15    # "field":Ljava/lang/reflect/Field;
    .local v25, "field":Ljava/lang/reflect/Field;
    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v22

    invoke-direct/range {v6 .. v17}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1718
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v9, v24

    .end local v24    # "propertyName":Ljava/lang/String;
    .restart local v9    # "propertyName":Ljava/lang/String;
    invoke-interface {v2, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1715
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/reflect/Field;
    .restart local v14    # "propertyName":Ljava/lang/String;
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    :cond_7
    move-object v9, v14

    move-object/from16 v25, v15

    .line 1684
    .end local v14    # "propertyName":Ljava/lang/String;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v18    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v22    # "label":Ljava/lang/String;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1721
    :cond_8
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 41
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p4, "sorted"    # Z
    .param p5, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1362
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v0

    .line 1363
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    .line 1365
    .local v16, "kotlin":Z
    const/4 v0, 0x0

    .line 1366
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    .line 1367
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 1368
    .local v2, "paramNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1369
    .local v3, "paramNameMapping":[S
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1370
    .local v10, "methods":[Ljava/lang/reflect/Method;
    array-length v9, v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_44

    aget-object v6, v10, v7

    .line 1371
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "ordinal":I
    const/16 v17, 0x0

    .local v17, "serialzeFeatures":I
    const/16 v18, 0x0

    .line 1373
    .local v18, "parserFeatures":I
    const/16 v19, 0x0

    .line 1374
    .local v19, "label":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1375
    move-object/from16 v21, v1

    goto :goto_1

    .line 1377
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v21, v1

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v21, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    goto :goto_1

    .line 1380
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 1381
    goto :goto_1

    .line 1383
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Ljava/lang/ClassLoader;

    if-ne v1, v8, :cond_3

    .line 1384
    goto :goto_1

    .line 1387
    :cond_3
    const-string v1, "getMetaClass"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1388
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1389
    goto :goto_1

    .line 1391
    :cond_4
    const-string v1, "getSuppressed"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1392
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Ljava/lang/Throwable;

    if-ne v1, v8, :cond_5

    .line 1393
    goto :goto_1

    .line 1396
    :cond_5
    if-eqz v16, :cond_6

    invoke-static {v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1397
    nop

    .line 1370
    .end local v4    # "ordinal":I
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_1
    move/from16 v29, v7

    move/from16 v34, v9

    move-object/from16 v35, v10

    move-object v13, v11

    move-object/from16 v1, v21

    const/16 v33, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    goto/16 :goto_1c

    .line 1402
    .restart local v4    # "ordinal":I
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v19    # "label":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1403
    .local v8, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1404
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v1, :cond_7

    .line 1405
    invoke-static {v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 1407
    :cond_7
    move-object/from16 v22, v2

    .end local v2    # "paramNames":[Ljava/lang/String;
    .local v22, "paramNames":[Ljava/lang/String;
    const-string v2, "get"

    move-object/from16 v23, v11

    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v23, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez v1, :cond_15

    if-eqz v16, :cond_15

    .line 1408
    if-nez v0, :cond_b

    .line 1409
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1410
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v24

    .line 1411
    .local v24, "creatorConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v24, :cond_a

    .line 1412
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v21

    .line 1413
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v11

    .line 1414
    .end local v22    # "paramNames":[Ljava/lang/String;
    .local v11, "paramNames":[Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 1415
    move-object/from16 v26, v0

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v26, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v0, v11

    new-array v0, v0, [Ljava/lang/String;

    .line 1416
    .local v0, "paramNames_sorted":[Ljava/lang/String;
    move-object/from16 v27, v1

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v27, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v1, v11

    move-object/from16 v28, v3

    const/4 v3, 0x0

    .end local v3    # "paramNameMapping":[S
    .local v28, "paramNameMapping":[S
    invoke-static {v11, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1418
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1419
    array-length v1, v11

    new-array v1, v1, [S

    .line 1420
    .end local v28    # "paramNameMapping":[S
    .local v1, "paramNameMapping":[S
    const/16 v20, 0x0

    move/from16 v3, v20

    .local v3, "p":S
    :goto_2
    move/from16 v20, v4

    .end local v4    # "ordinal":I
    .local v20, "ordinal":I
    array-length v4, v11

    if-ge v3, v4, :cond_8

    .line 1421
    aget-object v4, v11, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 1422
    .local v4, "index":I
    aput-short v3, v1, v4

    .line 1420
    .end local v4    # "index":I
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    move/from16 v4, v20

    goto :goto_2

    .line 1424
    .end local v3    # "p":S
    :cond_8
    move-object v3, v0

    move-object v11, v3

    move-object/from16 v0, v26

    move-object v3, v1

    move-object/from16 v1, v21

    .end local v11    # "paramNames":[Ljava/lang/String;
    .local v3, "paramNames":[Ljava/lang/String;
    goto :goto_3

    .line 1414
    .end local v20    # "ordinal":I
    .end local v26    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "paramNameMapping":[S
    .local v4, "ordinal":I
    .restart local v11    # "paramNames":[Ljava/lang/String;
    :cond_9
    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v3

    move/from16 v20, v4

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .restart local v20    # "ordinal":I
    .restart local v26    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v28    # "paramNameMapping":[S
    move-object/from16 v1, v21

    goto :goto_3

    .line 1411
    .end local v11    # "paramNames":[Ljava/lang/String;
    .end local v20    # "ordinal":I
    .end local v26    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28    # "paramNameMapping":[S
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "paramNameMapping":[S
    .restart local v4    # "ordinal":I
    .restart local v22    # "paramNames":[Ljava/lang/String;
    :cond_a
    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v3

    move/from16 v20, v4

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .restart local v20    # "ordinal":I
    .restart local v26    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v28    # "paramNameMapping":[S
    move-object/from16 v1, v21

    move-object/from16 v11, v22

    goto :goto_3

    .line 1408
    .end local v20    # "ordinal":I
    .end local v24    # "creatorConstructor":Ljava/lang/reflect/Constructor;
    .end local v26    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28    # "paramNameMapping":[S
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "paramNameMapping":[S
    .restart local v4    # "ordinal":I
    :cond_b
    move-object/from16 v27, v1

    move-object/from16 v28, v3

    move/from16 v20, v4

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .restart local v20    # "ordinal":I
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v28    # "paramNameMapping":[S
    move-object/from16 v1, v21

    move-object/from16 v11, v22

    .line 1428
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v22    # "paramNames":[Ljava/lang/String;
    .end local v28    # "paramNameMapping":[S
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNameMapping":[S
    .restart local v11    # "paramNames":[Ljava/lang/String;
    :goto_3
    if-eqz v11, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1429
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1430
    .local v4, "propertyName":Ljava/lang/String;
    invoke-static {v11, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v21

    .line 1431
    .local v21, "p":I
    if-gez v21, :cond_d

    .line 1432
    const/16 v22, 0x0

    move-object/from16 v24, v0

    move/from16 v0, v22

    .local v0, "i":I
    .local v24, "constructors":[Ljava/lang/reflect/Constructor;
    :goto_4
    move-object/from16 v26, v5

    .end local v5    # "methodName":Ljava/lang/String;
    .local v26, "methodName":Ljava/lang/String;
    array-length v5, v11

    if-ge v0, v5, :cond_e

    .line 1433
    aget-object v5, v11, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1434
    move/from16 v21, v0

    .line 1435
    goto :goto_5

    .line 1432
    :cond_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v26

    goto :goto_4

    .line 1431
    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v26    # "methodName":Ljava/lang/String;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v5    # "methodName":Ljava/lang/String;
    :cond_d
    move-object/from16 v24, v0

    move-object/from16 v26, v5

    .line 1439
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v26    # "methodName":Ljava/lang/String;
    :cond_e
    :goto_5
    if-ltz v21, :cond_13

    .line 1440
    aget-short v0, v3, v21

    .line 1441
    .local v0, "index":S
    aget-object v5, v1, v0

    .line 1442
    .local v5, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_11

    .line 1443
    move/from16 v22, v0

    .end local v0    # "index":S
    .local v22, "index":S
    array-length v0, v5

    move-object/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v28, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_6
    if-ge v1, v0, :cond_10

    move/from16 v30, v0

    aget-object v0, v5, v1

    .line 1444
    .local v0, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v31, v3

    .end local v3    # "paramNameMapping":[S
    .local v31, "paramNameMapping":[S
    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_f

    .line 1445
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1446
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    goto :goto_8

    .line 1443
    .end local v0    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v30

    move-object/from16 v3, v31

    goto :goto_6

    .end local v31    # "paramNameMapping":[S
    .restart local v3    # "paramNameMapping":[S
    :cond_10
    move-object/from16 v31, v3

    .end local v3    # "paramNameMapping":[S
    .restart local v31    # "paramNameMapping":[S
    goto :goto_7

    .line 1442
    .end local v22    # "index":S
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v31    # "paramNameMapping":[S
    .local v0, "index":S
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNameMapping":[S
    :cond_11
    move/from16 v22, v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    .line 1450
    .end local v0    # "index":S
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNameMapping":[S
    .restart local v22    # "index":S
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v31    # "paramNameMapping":[S
    :goto_7
    move-object/from16 v1, v27

    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_8
    if-nez v1, :cond_12

    .line 1451
    invoke-static {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1452
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_12

    .line 1453
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v27, v1

    move-object/from16 v22, v11

    goto :goto_a

    .line 1459
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v21    # "p":I
    .end local v22    # "index":S
    :cond_12
    move-object/from16 v27, v1

    move-object/from16 v22, v11

    goto :goto_a

    .line 1439
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v31    # "paramNameMapping":[S
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNameMapping":[S
    .restart local v4    # "propertyName":Ljava/lang/String;
    .restart local v21    # "p":I
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_13
    move-object/from16 v28, v1

    move-object/from16 v31, v3

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNameMapping":[S
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v31    # "paramNameMapping":[S
    goto :goto_9

    .line 1428
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v21    # "p":I
    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v26    # "methodName":Ljava/lang/String;
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v31    # "paramNameMapping":[S
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNameMapping":[S
    .local v5, "methodName":Ljava/lang/String;
    :cond_14
    move-object/from16 v24, v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v26, v5

    .line 1459
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNameMapping":[S
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v26    # "methodName":Ljava/lang/String;
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v31    # "paramNameMapping":[S
    :goto_9
    move-object/from16 v22, v11

    goto :goto_a

    .line 1407
    .end local v11    # "paramNames":[Ljava/lang/String;
    .end local v20    # "ordinal":I
    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v26    # "methodName":Ljava/lang/String;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v31    # "paramNameMapping":[S
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "paramNameMapping":[S
    .local v4, "ordinal":I
    .restart local v5    # "methodName":Ljava/lang/String;
    .local v21, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v22, "paramNames":[Ljava/lang/String;
    :cond_15
    move-object/from16 v27, v1

    move-object/from16 v28, v3

    move/from16 v20, v4

    move-object/from16 v26, v5

    .line 1459
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v20    # "ordinal":I
    .restart local v26    # "methodName":Ljava/lang/String;
    .restart local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v28, "paramNameMapping":[S
    move-object/from16 v24, v0

    move-object/from16 v31, v28

    move-object/from16 v28, v21

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v28, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v31    # "paramNameMapping":[S
    :goto_a
    const/4 v0, 0x1

    if-eqz v27, :cond_1b

    .line 1460
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1461
    move/from16 v29, v7

    move/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v13, v23

    const/16 v33, 0x0

    goto/16 :goto_1b

    .line 1463
    :cond_16
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 1464
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 1465
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v18

    .line 1466
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    .line 1467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 1468
    .end local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v21, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "propertyName":Ljava/lang/String;
    if-eqz v13, :cond_18

    .line 1470
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1471
    if-nez v0, :cond_17

    .line 1472
    move/from16 v29, v7

    move/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v13, v23

    const/16 v33, 0x0

    goto/16 :goto_1b

    .line 1471
    :cond_17
    move-object v11, v0

    goto :goto_b

    .line 1469
    :cond_18
    move-object v11, v0

    .line 1475
    .end local v0    # "propertyName":Ljava/lang/String;
    .local v11, "propertyName":Ljava/lang/String;
    :goto_b
    new-instance v25, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object v1, v11

    move-object v2, v6

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v32, v26

    .end local v26    # "methodName":Ljava/lang/String;
    .local v32, "methodName":Ljava/lang/String;
    move-object/from16 v26, v6

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .local v26, "method":Ljava/lang/reflect/Method;
    move/from16 v6, v20

    move/from16 v29, v7

    move/from16 v7, v17

    const/16 v33, 0x0

    move/from16 v8, v18

    move/from16 v34, v9

    move-object/from16 v9, v27

    move-object/from16 v35, v10

    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .local v35, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v10, v30

    move-object v13, v11

    move-object/from16 v15, v23

    .end local v11    # "propertyName":Ljava/lang/String;
    .end local v23    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "propertyName":Ljava/lang/String;
    .local v15, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1477
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    move-object v13, v15

    goto/16 :goto_1b

    .line 1480
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "propertyName":Ljava/lang/String;
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v21    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v32    # "methodName":Ljava/lang/String;
    .end local v35    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v23    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v26, "methodName":Ljava/lang/String;
    :cond_19
    move/from16 v29, v7

    move/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v15, v23

    move-object/from16 v32, v26

    const/16 v33, 0x0

    move-object/from16 v26, v6

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v23    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v26, "method":Ljava/lang/reflect/Method;
    .restart local v32    # "methodName":Ljava/lang/String;
    .restart local v35    # "methods":[Ljava/lang/reflect/Method;
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 1481
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v19

    move/from16 v4, v20

    goto :goto_c

    .line 1480
    :cond_1a
    move/from16 v4, v20

    goto :goto_c

    .line 1459
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v32    # "methodName":Ljava/lang/String;
    .end local v35    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v23    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v26, "methodName":Ljava/lang/String;
    :cond_1b
    move/from16 v29, v7

    move/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v15, v23

    move-object/from16 v32, v26

    const/16 v33, 0x0

    move-object/from16 v26, v6

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v23    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v26, "method":Ljava/lang/reflect/Method;
    .restart local v32    # "methodName":Ljava/lang/String;
    .restart local v35    # "methods":[Ljava/lang/reflect/Method;
    move/from16 v4, v20

    .line 1484
    .end local v20    # "ordinal":I
    .restart local v4    # "ordinal":I
    :goto_c
    move-object/from16 v13, v32

    .end local v32    # "methodName":Ljava/lang/String;
    .local v13, "methodName":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v11, 0x66

    const/16 v10, 0x5f

    if-eqz v1, :cond_31

    .line 1485
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1c

    .line 1486
    move-object v13, v15

    goto/16 :goto_1b

    .line 1488
    :cond_1c
    const-string v1, "getClass"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1489
    move-object v13, v15

    goto/16 :goto_1b

    .line 1491
    :cond_1d
    const-string v1, "getDeclaringClass"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1492
    move-object v13, v15

    goto/16 :goto_1b

    .line 1494
    :cond_1e
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1496
    .local v9, "c3":C
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0x200

    if-le v9, v1, :cond_1f

    goto :goto_d

    .line 1505
    :cond_1f
    if-ne v9, v10, :cond_20

    .line 1506
    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "propertyName":Ljava/lang/String;
    goto :goto_f

    .line 1507
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_20
    if-ne v9, v11, :cond_21

    .line 1508
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v2, "propertyName":Ljava/lang/String;
    goto :goto_f

    .line 1509
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_22

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1510
    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_f

    .line 1509
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_22
    move-object v13, v15

    goto/16 :goto_1b

    .line 1499
    :cond_23
    :goto_d
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_24

    .line 1500
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_e

    .line 1502
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_24
    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1504
    .restart local v2    # "propertyName":Ljava/lang/String;
    :goto_e
    invoke-static {v14, v13, v2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1514
    .end local v2    # "propertyName":Ljava/lang/String;
    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_f
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v20

    .line 1515
    .local v20, "ignore":Z
    if-eqz v20, :cond_25

    .line 1516
    move-object v13, v15

    goto/16 :goto_1b

    .line 1519
    :cond_25
    invoke-static {v1, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1520
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_27

    .line 1521
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1522
    .local v3, "ch":C
    const/16 v5, 0x41

    if-lt v3, v5, :cond_26

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_26

    .line 1523
    const/4 v7, 0x3

    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1524
    .local v5, "javaBeanCompatiblePropertyName":Ljava/lang/String;
    invoke-static {v5, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v6, v2

    goto :goto_11

    .line 1522
    .end local v5    # "javaBeanCompatiblePropertyName":Ljava/lang/String;
    :cond_26
    const/4 v7, 0x3

    goto :goto_10

    .line 1520
    .end local v3    # "ch":C
    :cond_27
    const/4 v7, 0x3

    .line 1527
    :goto_10
    move-object v6, v2

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v6, "field":Ljava/lang/reflect/Field;
    :goto_11
    const/4 v2, 0x0

    .line 1528
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v6, :cond_2e

    .line 1529
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1530
    if-eqz v2, :cond_2d

    .line 1531
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v3

    if-nez v3, :cond_28

    .line 1532
    move-object v13, v15

    goto/16 :goto_1b

    .line 1534
    :cond_28
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 1535
    .end local v4    # "ordinal":I
    .local v3, "ordinal":I
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 1536
    .end local v17    # "serialzeFeatures":I
    .local v4, "serialzeFeatures":I
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v5

    .line 1537
    .end local v18    # "parserFeatures":I
    .local v5, "parserFeatures":I
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2b

    .line 1538
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1539
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v0, "propertyName":Ljava/lang/String;
    move-object/from16 v1, p2

    if-eqz v1, :cond_2a

    .line 1541
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 1542
    if-nez v0, :cond_29

    .line 1543
    move-object v13, v15

    goto/16 :goto_1b

    .line 1542
    :cond_29
    move-object/from16 v40, v1

    move-object v1, v0

    move-object/from16 v0, v40

    goto :goto_12

    .line 1540
    :cond_2a
    move-object/from16 v40, v1

    move-object v1, v0

    move-object/from16 v0, v40

    goto :goto_12

    .line 1537
    .end local v0    # "propertyName":Ljava/lang/String;
    .restart local v1    # "propertyName":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p2

    .line 1547
    :goto_12
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2c

    .line 1548
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move-object/from16 v19, v8

    move-object/from16 v25, v17

    move-object/from16 v17, v2

    .end local v19    # "label":Ljava/lang/String;
    .local v17, "label":Ljava/lang/String;
    goto :goto_13

    .line 1547
    .end local v17    # "label":Ljava/lang/String;
    .restart local v19    # "label":Ljava/lang/String;
    :cond_2c
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move-object/from16 v25, v19

    move-object/from16 v19, v8

    goto :goto_13

    .line 1530
    .end local v3    # "ordinal":I
    .end local v5    # "parserFeatures":I
    .local v4, "ordinal":I
    .local v17, "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    :cond_2d
    move-object/from16 v0, p2

    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v25, v19

    move-object/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v19, v8

    goto :goto_13

    .line 1528
    :cond_2e
    move-object/from16 v0, p2

    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v25, v19

    move-object/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v19, v8

    .line 1552
    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "ordinal":I
    .end local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v17, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v18, "ordinal":I
    .local v19, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v21, "serialzeFeatures":I
    .local v23, "parserFeatures":I
    .local v25, "label":Ljava/lang/String;
    :goto_13
    if-eqz v0, :cond_2f

    .line 1553
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1554
    if-nez v1, :cond_2f

    .line 1555
    move-object v13, v15

    goto/16 :goto_1b

    .line 1558
    :cond_2f
    move-object v8, v15

    move-object/from16 v15, p5

    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v8, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-eqz v15, :cond_30

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_30

    .line 1559
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_14

    .line 1561
    :cond_30
    move-object v5, v1

    .end local v1    # "propertyName":Ljava/lang/String;
    .local v5, "propertyName":Ljava/lang/String;
    :goto_14
    new-instance v30, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v32, 0x0

    move-object v4, v0

    move-object/from16 v0, v30

    move-object v1, v5

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v15, v4

    move-object/from16 v4, p0

    move-object v15, v5

    .end local v5    # "propertyName":Ljava/lang/String;
    .local v15, "propertyName":Ljava/lang/String;
    move-object/from16 v5, v32

    move-object/from16 v32, v6

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .local v32, "field":Ljava/lang/reflect/Field;
    move/from16 v6, v18

    const/16 v36, 0x3

    move/from16 v7, v21

    move-object/from16 v37, v8

    .end local v8    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v37, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v8, v23

    move/from16 v38, v9

    .end local v9    # "c3":C
    .local v38, "c3":C
    move-object/from16 v9, v27

    move-object/from16 v10, v17

    const/4 v12, 0x3

    move-object/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1563
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v11, v37

    .end local v37    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v4, v18

    move/from16 v17, v21

    move/from16 v18, v23

    goto :goto_15

    .line 1484
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v20    # "ignore":Z
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v25    # "label":Ljava/lang/String;
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v38    # "c3":C
    .restart local v4    # "ordinal":I
    .local v8, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v15, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v17, "serialzeFeatures":I
    .local v18, "parserFeatures":I
    .local v19, "label":Ljava/lang/String;
    :cond_31
    move-object v11, v15

    const/4 v12, 0x3

    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v25, v19

    move-object/from16 v19, v8

    .line 1565
    .end local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v19, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v25    # "label":Ljava/lang/String;
    :goto_15
    const-string v0, "is"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1566
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v12, :cond_32

    .line 1567
    move-object/from16 v12, p0

    move-object v13, v11

    goto/16 :goto_1b

    .line 1569
    :cond_32
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_33

    .line 1570
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_33

    .line 1571
    move-object/from16 v12, p0

    move-object v13, v11

    goto/16 :goto_1b

    .line 1573
    :cond_33
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1575
    .local v15, "c2":C
    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1576
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_34

    .line 1577
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_16

    .line 1579
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1581
    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_16
    invoke-static {v14, v13, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "propertyName":Ljava/lang/String;
    .local v0, "propertyName":Ljava/lang/String;
    goto :goto_17

    .line 1582
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_35
    const/16 v1, 0x5f

    if-ne v15, v1, :cond_36

    .line 1583
    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propertyName":Ljava/lang/String;
    goto :goto_17

    .line 1584
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_36
    const/16 v1, 0x66

    if-ne v15, v1, :cond_42

    .line 1585
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .restart local v0    # "propertyName":Ljava/lang/String;
    :goto_17
    move-object/from16 v12, p0

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v20

    .line 1590
    .restart local v20    # "ignore":Z
    if-eqz v20, :cond_37

    .line 1591
    move-object v13, v11

    goto/16 :goto_1b

    .line 1593
    :cond_37
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1594
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_38

    .line 1595
    invoke-static {v13, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v10, v1

    goto :goto_18

    .line 1594
    :cond_38
    move-object v10, v1

    .line 1597
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v10, "field":Ljava/lang/reflect/Field;
    :goto_18
    const/4 v1, 0x0

    .line 1598
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v10, :cond_3e

    .line 1599
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1600
    if-eqz v1, :cond_3d

    .line 1601
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1602
    move-object v13, v11

    goto/16 :goto_1b

    .line 1604
    :cond_39
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v4

    .line 1605
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 1606
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v18

    .line 1607
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 1608
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 1609
    move-object/from16 v2, p2

    if-eqz v2, :cond_3b

    .line 1610
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 1611
    if-nez v0, :cond_3b

    .line 1612
    move-object v13, v11

    goto/16 :goto_1b

    .line 1607
    :cond_3a
    move-object/from16 v2, p2

    .line 1616
    :cond_3b
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 1617
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v25

    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v17, v1

    move/from16 v18, v4

    goto :goto_19

    .line 1616
    :cond_3c
    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v17, v1

    move/from16 v18, v4

    goto :goto_19

    .line 1600
    :cond_3d
    move-object/from16 v2, p2

    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v17, v1

    move/from16 v18, v4

    goto :goto_19

    .line 1598
    :cond_3e
    move-object/from16 v2, p2

    move/from16 v21, v17

    move/from16 v23, v18

    move-object/from16 v17, v1

    move/from16 v18, v4

    .line 1621
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "ordinal":I
    .local v17, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v18, "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    :goto_19
    if-eqz v2, :cond_3f

    .line 1622
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1623
    if-nez v0, :cond_3f

    .line 1624
    move-object v13, v11

    goto :goto_1b

    .line 1627
    :cond_3f
    move-object/from16 v8, p5

    move-object v9, v2

    if-eqz v8, :cond_40

    .line 1628
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1a

    .line 1627
    :cond_40
    move-object v7, v0

    .line 1631
    .end local v0    # "propertyName":Ljava/lang/String;
    .local v7, "propertyName":Ljava/lang/String;
    :goto_1a
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1632
    move-object v13, v11

    goto :goto_1b

    .line 1634
    :cond_41
    new-instance v30, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object v1, v7

    move-object/from16 v2, v26

    move-object v3, v10

    move-object/from16 v4, p0

    move/from16 v6, v18

    move-object/from16 v39, v7

    .end local v7    # "propertyName":Ljava/lang/String;
    .local v39, "propertyName":Ljava/lang/String;
    move/from16 v7, v21

    move/from16 v8, v23

    move-object/from16 v9, v27

    move-object/from16 v32, v10

    .end local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v32    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v10, v17

    move-object/from16 v36, v13

    move-object v13, v11

    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v36, "methodName":Ljava/lang/String;
    move-object/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1636
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v1, v39

    .end local v39    # "propertyName":Ljava/lang/String;
    .local v1, "propertyName":Ljava/lang/String;
    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1584
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v20    # "ignore":Z
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v36    # "methodName":Ljava/lang/String;
    .restart local v4    # "ordinal":I
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "methodName":Ljava/lang/String;
    .local v17, "serialzeFeatures":I
    .local v18, "parserFeatures":I
    :cond_42
    move-object/from16 v12, p0

    move-object/from16 v36, v13

    move-object v13, v11

    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v36    # "methodName":Ljava/lang/String;
    goto :goto_1b

    .line 1565
    .end local v15    # "c2":C
    .end local v36    # "methodName":Ljava/lang/String;
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "methodName":Ljava/lang/String;
    :cond_43
    move-object/from16 v12, p0

    move-object/from16 v36, v13

    move-object v13, v11

    .line 1370
    .end local v4    # "ordinal":I
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v25    # "label":Ljava/lang/String;
    .end local v26    # "method":Ljava/lang/reflect/Method;
    .end local v27    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v13, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_1b
    move-object/from16 v2, v22

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v3, v31

    .end local v22    # "paramNames":[Ljava/lang/String;
    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v31    # "paramNameMapping":[S
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v2, "paramNames":[Ljava/lang/String;
    .local v3, "paramNameMapping":[S
    :goto_1c
    add-int/lit8 v7, v29, 0x1

    move-object/from16 v15, p5

    move-object v11, v13

    move/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v13, p2

    goto/16 :goto_0

    .line 1639
    .end local v13    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v35    # "methods":[Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_44
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v28, v3

    move-object v13, v11

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v3    # "paramNameMapping":[S
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v21, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v22    # "paramNames":[Ljava/lang/String;
    .local v28, "paramNameMapping":[S
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1640
    .local v1, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-static {v12, v2, v3, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1641
    move/from16 v4, p4

    invoke-static {v12, v4, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1345
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 8
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1349
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1350
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    .line 1351
    .local v7, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {p0, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1352
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v7

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 3
    .param p2, "sorted"    # Z
    .param p3, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1336
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1337
    .local v0, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v1, p0

    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1339
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1337
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1341
    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2049
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2051
    .local v0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 2054
    :cond_0
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2055
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "list":Ljava/util/Collection;
    goto/16 :goto_2

    .line 2056
    .end local v1    # "list":Ljava/util/Collection;
    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2057
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v1    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 2058
    .end local v1    # "list":Ljava/util/Collection;
    :cond_2
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2059
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .restart local v1    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 2060
    .end local v1    # "list":Ljava/util/Collection;
    :cond_3
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2061
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 2062
    .end local v1    # "list":Ljava/util/Collection;
    :cond_4
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2064
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5

    .line 2065
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .local v1, "itemType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 2067
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    :cond_5
    const-class v1, Ljava/lang/Object;

    .line 2069
    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2070
    .local v1, "list":Ljava/util/Collection;
    goto :goto_2

    .line 2072
    .end local v1    # "list":Ljava/util/Collection;
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .restart local v1    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 2073
    .end local v1    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 2074
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2053
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .local v1, "list":Ljava/util/Collection;
    :goto_2
    return-object v1
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1934
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1937
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    return-object p0

    .line 1940
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1941
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1942
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1935
    .end local v0    # "chars":[C
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 2207
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2208
    .local v0, "hashCode":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2210
    .local v3, "ch":C
    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 2211
    const-wide v4, 0x100000001b3L

    mul-long v0, v0, v4

    .line 2208
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2213
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 2191
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2192
    .local v0, "hashCode":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2193
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2194
    .local v3, "ch":C
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 2195
    goto :goto_1

    .line 2197
    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    .line 2198
    add-int/lit8 v4, v3, 0x20

    int-to-char v3, v4

    .line 2200
    :cond_1
    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 2201
    const-wide v4, 0x100000001b3L

    mul-long v0, v0, v4

    .line 2192
    .end local v3    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2203
    .end local v2    # "i":I
    :cond_3
    return-wide v0
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 2345
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2346
    .local v0, "a":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_0

    .line 2347
    return-object v0

    .line 2350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 2351
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2352
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_1

    .line 2354
    return-object v0

    .line 2351
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2358
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1872
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1873
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 1876
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1877
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1880
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1881
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1882
    .local v0, "boundType":Ljava/lang/reflect/Type;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 1885
    .end local v0    # "boundType":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 1886
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1887
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1888
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1892
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_3
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1190
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 6
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1984
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 1986
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1987
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    .line 1988
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 1989
    .local v2, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1990
    .local v3, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1991
    aget-object v0, v3, v1

    .line 1994
    .end local v2    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v3    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    const-string v2, "can not create ASMParser"

    if-eqz v1, :cond_2

    .line 1995
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 1996
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2002
    return-object v1

    .line 1997
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2000
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2004
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_3
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .line 1960
    const/4 v0, 0x0

    .line 1961
    .local v0, "itemType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 1962
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1963
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1964
    .local v2, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_0

    .line 1965
    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/WildcardType;

    .line 1966
    .local v4, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1967
    .local v5, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1968
    aget-object v2, v5, v3

    .line 1971
    .end local v4    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v5    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, v2

    .line 1972
    .end local v2    # "actualTypeArgument":Ljava/lang/reflect/Type;
    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    move-object v1, v2

    .line 1973
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1974
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1975
    .local v2, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1977
    .end local v2    # "superClass":Ljava/lang/reflect/Type;
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1978
    const-class v0, Ljava/lang/Object;

    .line 1980
    :cond_3
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1896
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 1897
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1898
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1899
    return-object v3

    .line 1903
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 1904
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c0":C
    const/16 v7, 0x61

    if-lt v5, v7, :cond_1

    const/16 v5, 0x7a

    if-gt v6, v5, :cond_1

    .line 1905
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v5

    .local v7, "c1":C
    const/16 v8, 0x41

    if-lt v5, v8, :cond_1

    const/16 v5, 0x5a

    if-gt v7, v5, :cond_1

    .line 1906
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1907
    return-object v3

    .line 1896
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v6    # "c0":C
    .end local v7    # "c1":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1910
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1911
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 1912
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1

    .line 1914
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 9
    .param p1, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1645
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v0, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/4 v1, 0x0

    .line 1647
    .local v1, "orders":[Ljava/lang/String;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1648
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v2, :cond_0

    .line 1649
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v1

    .line 1651
    :cond_0
    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 1652
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1653
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1654
    .local v5, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_0

    .line 1656
    :cond_1
    const/4 v4, 0x0

    .line 1657
    .local v4, "i":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 1658
    .local v7, "item":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1659
    .local v8, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v8, :cond_2

    .line 1660
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1664
    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1665
    .local v6, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    .end local v6    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_2

    .line 1667
    .end local v3    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v4    # "i":I
    :cond_4
    goto :goto_4

    .line 1668
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1669
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1670
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_3

    .line 1671
    :cond_6
    if-eqz p1, :cond_7

    .line 1672
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1675
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1843
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1844
    return-object p0

    .line 1846
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1847
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 1849
    :cond_1
    return-object p0
.end method

.method public static getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 7
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 2233
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 2234
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    if-lez v5, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2235
    goto :goto_1

    .line 2237
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    if-lt v5, v6, :cond_1

    .line 2238
    goto :goto_1

    .line 2240
    :cond_1
    move-object v0, v3

    .line 2232
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2242
    :cond_2
    return-object v0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 12
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 2246
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const-string v1, "kotlin.reflect.jvm.internal.KClassImpl"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_0

    .line 2248
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2249
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2252
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    goto :goto_0

    .line 2250
    :catchall_0
    move-exception v0

    .line 2251
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2254
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2255
    return-object v4

    .line 2258
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_2

    .line 2260
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2261
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    const-string v1, "getConstructors"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2264
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    goto :goto_1

    .line 2262
    :catchall_1
    move-exception v0

    .line 2263
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2267
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_3

    .line 2269
    :try_start_2
    const-string v0, "kotlin.reflect.KFunction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2270
    .local v0, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string v1, "getParameters"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2273
    .end local v0    # "class_kotlin_kfunction":Ljava/lang/Class;
    goto :goto_2

    .line 2271
    :catchall_2
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2276
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_4

    .line 2278
    :try_start_3
    const-string v0, "kotlin.reflect.KParameter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2279
    .local v0, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string v1, "getName"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2282
    .end local v0    # "class_kotlinn_kparameter":Ljava/lang/Class;
    goto :goto_3

    .line 2280
    :catchall_3
    move-exception v0

    .line 2281
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2285
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_5

    .line 2286
    return-object v4

    .line 2290
    :cond_5
    const/4 v0, 0x0

    .line 2291
    .local v0, "constructor":Ljava/lang/Object;
    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2292
    .local v1, "kclassImpl":Ljava/lang/Object;
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 2293
    .local v5, "it":Ljava/lang/Iterable;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2294
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2295
    .local v7, "item":Ljava/lang/Object;
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2296
    .local v8, "parameters":Ljava/util/List;
    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 2297
    goto :goto_5

    .line 2299
    :cond_6
    move-object v0, v7

    .line 2293
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "parameters":Ljava/util/List;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_4

    .line 2301
    .end local v6    # "iterator":Ljava/util/Iterator;
    :cond_7
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2302
    .local v6, "parameters":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 2303
    .local v7, "names":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 2304
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2305
    .local v9, "param":Ljava/lang/Object;
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2303
    .end local v9    # "param":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2307
    .end local v8    # "i":I
    :cond_8
    return-object v7

    .line 2308
    .end local v0    # "constructor":Ljava/lang/Object;
    .end local v1    # "kclassImpl":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/Iterable;
    .end local v6    # "parameters":Ljava/util/List;
    .end local v7    # "names":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    .line 2309
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2310
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 2312
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v4
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1926
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1927
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1928
    const/4 v1, 0x0

    return v1

    .line 1930
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    return v1
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "fromIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1725
    .local p0, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v0, :cond_1

    .line 1726
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1727
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "tempPropertyName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    .line 1731
    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2081
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2082
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 2083
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2084
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 2086
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
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1918
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1919
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1920
    const/4 v1, 0x0

    return v1

    .line 1922
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    return v1
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 1735
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 1736
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_7

    .line 1737
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1738
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v0, v4

    .line 1739
    .local v5, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 1740
    .local v9, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 1741
    .local v10, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v10

    array-length v12, v1

    if-eq v11, v12, :cond_0

    .line 1742
    goto :goto_4

    .line 1744
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1745
    goto :goto_4

    .line 1747
    :cond_1
    const/4 v11, 0x1

    .line 1748
    .local v11, "match":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_3

    .line 1749
    aget-object v13, v10, v12

    aget-object v14, v1, v12

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1750
    const/4 v11, 0x0

    .line 1751
    goto :goto_3

    .line 1748
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1754
    .end local v12    # "i":I
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 1755
    goto :goto_4

    .line 1757
    :cond_4
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1758
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_5

    .line 1759
    return-object v12

    .line 1739
    .end local v9    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v10    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "match":Z
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1738
    .end local v5    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1764
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1765
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    if-nez v1, :cond_8

    .line 1766
    return-object v3

    .line 1768
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1769
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1770
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    :goto_5
    if-ge v2, v6, :cond_f

    aget-object v7, v5, v2

    .line 1771
    .local v7, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1772
    .local v8, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v8

    array-length v10, v4

    if-eq v9, v10, :cond_9

    .line 1773
    goto :goto_8

    .line 1775
    :cond_9
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1776
    goto :goto_8

    .line 1778
    :cond_a
    const/4 v9, 0x1

    .line 1779
    .local v9, "match":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    array-length v11, v4

    if-ge v10, v11, :cond_c

    .line 1780
    aget-object v11, v8, v10

    aget-object v12, v4, v10

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1781
    const/4 v9, 0x0

    .line 1782
    goto :goto_7

    .line 1779
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1785
    .end local v10    # "i":I
    :cond_c
    :goto_7
    if-nez v9, :cond_d

    .line 1786
    goto :goto_8

    .line 1788
    :cond_d
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1789
    .local v10, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v10, :cond_e

    .line 1790
    return-object v10

    .line 1770
    .end local v7    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v8    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "match":Z
    .end local v10    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1794
    .end local v4    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    return-object v3
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2147
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2148
    return v0

    .line 2151
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v1, :cond_1

    .line 2153
    :try_start_0
    const-string v1, "javax.persistence.ManyToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    goto :goto_0

    .line 2154
    :catchall_0
    move-exception v1

    .line 2156
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 2159
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 2160
    return v0

    .line 2163
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2127
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2128
    return v0

    .line 2131
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v1, :cond_1

    .line 2133
    :try_start_0
    const-string v1, "javax.persistence.OneToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    goto :goto_0

    .line 2134
    :catchall_0
    move-exception v1

    .line 2136
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 2139
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 2140
    return v0

    .line 2143
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1829
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1830
    const/4 v0, 0x1

    return v0

    .line 1832
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1833
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1834
    .local v0, "superType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 1835
    return v1

    .line 1837
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 1839
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    :cond_2
    return v1
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .line 2167
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2168
    return v0

    .line 2170
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v1, :cond_1

    .line 2172
    :try_start_0
    const-string v1, "org.hibernate.Hibernate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2173
    .local v1, "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "isInitialized"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2177
    .end local v1    # "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 2174
    :catchall_0
    move-exception v1

    .line 2176
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 2179
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 2181
    const/4 v3, 0x0

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2182
    .local v0, "initialized":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    .line 2183
    .end local v0    # "initialized":Ljava/lang/Boolean;
    :catchall_1
    move-exception v0

    .line 2187
    :cond_2
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1798
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1799
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1803
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "fields":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_2

    .line 1805
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 1806
    aget-object v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1807
    return v1

    .line 1805
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1810
    .end local v4    # "i":I
    :cond_1
    return v2

    .line 1812
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v3

    .line 1813
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 1814
    aget-object v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1815
    return v2

    .line 1813
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1820
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1821
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1822
    return v2

    .line 1825
    :cond_5
    return v1
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 2217
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_0

    .line 2219
    :try_start_0
    const-string v0, "kotlin.Metadata"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    goto :goto_0

    .line 2220
    :catchall_0
    move-exception v0

    .line 2221
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 2224
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 2225
    const/4 v0, 0x0

    return v0

    .line 2227
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 2316
    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v2, :cond_0

    .line 2318
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2319
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string v4, "kotlin.ranges.CharRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2320
    .local v4, "charRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    const-string v5, "kotlin.ranges.IntRange"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2322
    .local v5, "intRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    const-string v6, "kotlin.ranges.LongRange"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2324
    .local v6, "longRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    const-string v7, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 2326
    .local v7, "floatRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    const-string v8, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2328
    .local v8, "doubleRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    .end local v4    # "charRangeClass":Ljava/lang/Class;
    .end local v5    # "intRangeClass":Ljava/lang/Class;
    .end local v6    # "longRangeClass":Ljava/lang/Class;
    .end local v7    # "floatRangeClass":Ljava/lang/Class;
    .end local v8    # "doubleRangeClass":Ljava/lang/Class;
    goto :goto_0

    .line 2330
    :catchall_0
    move-exception v0

    .line 2331
    .local v0, "error":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 2334
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2335
    return v1

    .line 2337
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2338
    .local v0, "ignores":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2339
    return v1

    .line 2341
    :cond_2
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 508
    .local v1, "ch":C
    const/16 v2, 0x2b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 515
    :cond_1
    return v3

    .line 509
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 510
    return v3

    .line 506
    .end local v1    # "ch":C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1176
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_0

    .line 1178
    :try_start_0
    const-string v0, "java.nio.file.Path"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    goto :goto_0

    .line 1179
    :catchall_0
    move-exception v0

    .line 1180
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 1183
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 1186
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2091
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 2092
    .local v4, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2093
    .local v5, "interfaceName":Ljava/lang/String;
    const-string v6, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 2094
    const-string v6, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 2097
    :cond_0
    const-string v6, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2098
    const-string v6, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 2091
    .end local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2100
    .restart local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceName":Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .line 2095
    :cond_3
    :goto_2
    return v7

    .line 2103
    .end local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceName":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2107
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2108
    return v0

    .line 2110
    :cond_0
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2112
    :try_start_0
    const-string v1, "java.beans.Transient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2116
    :catchall_0
    move-exception v0

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    throw v0

    .line 2113
    :catch_0
    move-exception v1

    .line 2116
    :goto_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2119
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 2120
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 2121
    .local v1, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 2123
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1194
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1198
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1201
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1202
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 1203
    return-object v0

    .line 1205
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1206
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1207
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1209
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "newClassName":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 1214
    .end local v1    # "newClassName":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_5

    .line 1215
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 1216
    if-eqz p2, :cond_4

    .line 1217
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    :cond_4
    return-object v0

    .line 1221
    :catchall_0
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1224
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    nop

    .line 1226
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1227
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_7

    if-eq v1, p1, :cond_7

    .line 1228
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 1229
    if-eqz p2, :cond_6

    .line 1230
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1232
    :cond_6
    return-object v0

    .line 1236
    .end local v1    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    goto :goto_1

    .line 1234
    :catchall_1
    move-exception v1

    .line 1238
    :goto_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 1239
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1240
    return-object v0

    .line 1241
    :catchall_2
    move-exception v1

    .line 1244
    return-object v0

    .line 1199
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .line 1946
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v0, :cond_0

    .line 1947
    return-void

    .line 1949
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1950
    return-void

    .line 1953
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    goto :goto_0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "error":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 1957
    .end local v0    # "error":Ljava/security/AccessControlException;
    :goto_0
    return-void
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "strVal"    # Ljava/lang/String;

    .line 807
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 809
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 811
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 812
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 814
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1853
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v0, :cond_0

    .line 1855
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1859
    :catchall_0
    move-exception v1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v1

    .line 1856
    :catch_0
    move-exception v1

    .line 1859
    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 1862
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1863
    move-object v0, p0

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

    aget-object v1, v1, v2

    return-object v1

    .line 1868
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    return-object p0
.end method
