.class public Lorg/apache/poi/util/POILogFactory;
.super Ljava/lang/Object;
.source "POILogFactory.java"


# static fields
.field private static _loggerClassName:Ljava/lang/String;

.field private static _loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/util/POILogger;",
            ">;"
        }
    .end annotation
.end field

.field private static _nullLogger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    .line 46
    new-instance v0, Lorg/apache/poi/util/NullLogger;

    invoke-direct {v0}, Lorg/apache/poi/util/NullLogger;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/poi/util/POILogger;"
        }
    .end annotation

    .line 70
    .local p0, "theclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;
    .locals 3
    .param p0, "cat"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 90
    .local v0, "logger":Lorg/apache/poi/util/POILogger;
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 92
    :try_start_0
    const-string v1, "org.apache.poi.util.POILogger"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 97
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    .line 104
    :cond_0
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    return-object v1

    .line 111
    :cond_1
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/util/POILogger;

    goto :goto_2

    .line 116
    :cond_2
    :try_start_1
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 118
    .local v1, "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/util/POILogger;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/util/POILogger;

    move-object v0, v2

    .line 119
    invoke-virtual {v0, p0}, Lorg/apache/poi/util/POILogger;->initialize(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v1    # "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/util/POILogger;>;"
    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_2
    return-object v0
.end method
