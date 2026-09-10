.class public Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
.super Ljava/lang/Exception;
.source "HSSFUserException.java"


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p2, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;->reason:Ljava/lang/Throwable;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;->reason:Ljava/lang/Throwable;

    .line 72
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;->reason:Ljava/lang/Throwable;

    return-object v0
.end method
