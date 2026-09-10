.class public interface abstract Lcom/isaigu/gymapp/utils/OKHttpUtils$OnDownloadListener;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onDownloading(I)V
.end method
