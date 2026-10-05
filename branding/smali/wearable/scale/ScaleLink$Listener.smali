.class public interface abstract Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;
.super Ljava/lang/Object;
.source "ScaleLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onLive(DZ)V
.end method

.method public abstract onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
.end method

.method public abstract onState(I)V
.end method
