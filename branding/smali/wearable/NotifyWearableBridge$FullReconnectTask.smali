.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FullReconnectTask"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;->activity:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->connect(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400(Landroid/app/Activity;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 235
    goto :goto_c

    .line 233
    :catchall_6
    move-exception v0

    .line 234
    const-string v1, "NotifyWearableBridge.fullReconnect"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$FullReconnectTask;->activity:Landroid/app/Activity;

    .line 237
    return-void
.end method
