.class final Lcom/isaigu/gymapp/wearable/BandRemote$Push;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Push"
.end annotation


# instance fields
.field private final force:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;->force:Z

    .line 502
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 507
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;->force:Z

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 511
    :goto_5
    return-void

    .line 508
    :catch_6
    move-exception v0

    .line 509
    const-string v1, "BandRemote.push"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
