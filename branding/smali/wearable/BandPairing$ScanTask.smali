.class final Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScanTask"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 569
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$300(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanLocal(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_1a

    move-result-object v0

    .line 578
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$600()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanTask;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;-><init>(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void

    .line 576
    :catch_1a
    move-exception v1

    goto :goto_b
.end method
