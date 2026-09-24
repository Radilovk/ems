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

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V
    .registers 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1076
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$800()V

    .line 1077
    return-void
.end method
