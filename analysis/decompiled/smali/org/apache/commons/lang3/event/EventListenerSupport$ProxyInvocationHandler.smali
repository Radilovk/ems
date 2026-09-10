.class public Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/event/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/lang3/event/EventListenerSupport;

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "unusedProxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iget-object v1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-static {v1}, Lorg/apache/commons/lang3/event/EventListenerSupport;->access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v0, "listener":Ljava/lang/Object;, "TL;"
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    .end local v0    # "listener":Ljava/lang/Object;, "TL;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
