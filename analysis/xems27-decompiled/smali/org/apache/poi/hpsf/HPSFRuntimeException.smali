.class public Lorg/apache/poi/hpsf/HPSFRuntimeException;
.super Ljava/lang/RuntimeException;
.source "HPSFRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c4e57bc3addbe77L


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    .line 72
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    return-object v0
.end method
