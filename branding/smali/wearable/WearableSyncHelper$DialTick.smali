.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;
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
    name = "DialTick"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V
    .registers 2

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 780
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$700()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_c

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_d

    .line 788
    :cond_c
    :goto_c
    return-void

    .line 783
    :cond_d
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$800()V

    .line 784
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$900()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_c

    .line 785
    :catch_1a
    move-exception v0

    .line 786
    const-string v1, "WearableSyncHelper.DialTick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
