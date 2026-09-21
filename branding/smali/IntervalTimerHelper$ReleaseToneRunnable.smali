.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReleaseToneRunnable"
.end annotation


# instance fields
.field private final tone:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Landroid/media/ToneGenerator;)V
    .registers 2

    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;->tone:Landroid/media/ToneGenerator;

    .line 1868
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1873
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;->tone:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 1875
    goto :goto_7

    .line 1874
    :catchall_6
    move-exception v0

    .line 1876
    :goto_7
    return-void
.end method
