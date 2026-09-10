.class public abstract Lcom/maning/updatelibrary/http/AbsFileProgressCallback;
.super Ljava/lang/Object;
.source "AbsFileProgressCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCancle()V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onProgress(JJZ)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
