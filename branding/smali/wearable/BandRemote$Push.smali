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
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;->force:Z

    .line 755
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;->force:Z

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    const-string v1, "BandRemote.push"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
