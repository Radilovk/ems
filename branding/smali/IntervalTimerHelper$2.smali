.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBeep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tone:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Landroid/media/ToneGenerator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;->val$tone:Landroid/media/ToneGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;->val$tone:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 403
    goto :goto_7

    .line 402
    :catchall_6
    move-exception v0

    .line 404
    :goto_7
    return-void
.end method
