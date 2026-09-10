.class public Lorg/apache/poi/util/SystemOutLogger;
.super Lorg/apache/poi/util/POILogger;
.source "SystemOutLogger.java"


# instance fields
.field private _cat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 84
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "poi.log.level"

    const-string v2, "5"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v1, "currentLevel":I
    goto :goto_0

    .line 85
    .end local v1    # "currentLevel":I
    :catch_0
    move-exception v1

    move v2, v0

    .line 86
    .local v1, "e":Ljava/lang/SecurityException;
    .local v2, "currentLevel":I
    const/4 v2, 0x1

    move v1, v2

    .line 89
    .end local v2    # "currentLevel":I
    .local v1, "currentLevel":I
    :goto_0
    if-lt p1, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    return v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lorg/apache/poi/util/SystemOutLogger;->_cat:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public log(ILjava/lang/Object;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/util/SystemOutLogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/SystemOutLogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/util/SystemOutLogger;->_cat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/util/SystemOutLogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    sget-object v3, Lorg/apache/poi/util/SystemOutLogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    if-eqz p3, :cond_0

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 68
    :cond_0
    return-void
.end method
