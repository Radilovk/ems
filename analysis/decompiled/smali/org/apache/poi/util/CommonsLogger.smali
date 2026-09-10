.class public Lorg/apache/poi/util/CommonsLogger;
.super Lorg/apache/poi/util/POILogger;
.source "CommonsLogger.java"


# static fields
.field private static _creator:Lorg/apache/commons/logging/LogFactory;


# instance fields
.field private log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getFactory()Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/CommonsLogger;->_creator:Lorg/apache/commons/logging/LogFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 181
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 190
    iget-object v1, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 197
    iget-object v1, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 202
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 204
    iget-object v1, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 209
    :cond_5
    if-ne p1, v0, :cond_2

    .line 211
    iget-object v1, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lorg/apache/poi/util/CommonsLogger;->_creator:Lorg/apache/commons/logging/LogFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/logging/LogFactory;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    .line 46
    return-void
.end method

.method public log(ILjava/lang/Object;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 65
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 79
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 86
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 122
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    if-eqz p2, :cond_3

    .line 125
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 132
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    if-eqz p2, :cond_5

    .line 135
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 142
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    if-eqz p2, :cond_7

    .line 145
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_7
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 152
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    if-eqz p2, :cond_9

    .line 155
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_9
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_a
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    if-eqz p2, :cond_b

    .line 165
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :cond_b
    iget-object v0, p0, Lorg/apache/poi/util/CommonsLogger;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_0
.end method
