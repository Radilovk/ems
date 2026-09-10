.class public interface abstract Lorg/apache/poi/poifs/dev/POIFSViewable;
.super Ljava/lang/Object;
.source "POIFSViewable.java"


# virtual methods
.method public abstract getShortDescription()Ljava/lang/String;
.end method

.method public abstract getViewableArray()[Ljava/lang/Object;
.end method

.method public abstract getViewableIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract preferArray()Z
.end method
