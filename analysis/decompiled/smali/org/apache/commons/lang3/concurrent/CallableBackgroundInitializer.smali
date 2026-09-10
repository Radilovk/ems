.class public Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;
.super Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.source "CallableBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;, "Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    .line 82
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p2, "exec"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;, "Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    .line 99
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    .line 100
    return-void
.end method

.method private checkCallable(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;, "Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Callable must not be null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void

    :cond_0
    move v0, v1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method protected initialize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;, "Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
