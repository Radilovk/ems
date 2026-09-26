.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshOverlayRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V
    .registers 2

    .line 1156
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1160
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$800()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 1163
    goto :goto_a

    .line 1161
    :catchall_4
    move-exception v0

    .line 1162
    const-string v1, "WearableSyncHelper.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    :goto_a
    return-void
.end method
