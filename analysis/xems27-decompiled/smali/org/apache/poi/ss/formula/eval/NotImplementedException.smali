.class public Lorg/apache/poi/ss/formula/eval/NotImplementedException;
.super Ljava/lang/RuntimeException;
.source "NotImplementedException.java"


# static fields
.field private static final serialVersionUID:J = -0x510e58bd3a3b51b5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
