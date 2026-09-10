.class public interface abstract Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;
.super Ljava/lang/Object;
.source "InstallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maning/updatelibrary/InstallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadCallBack"
.end annotation


# virtual methods
.method public abstract cancle()V
.end method

.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onFail(Ljava/lang/Exception;)V
.end method

.method public abstract onLoading(JJ)V
.end method

.method public abstract onStart()V
.end method
