.class final Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PickedFile"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 694
    return-void
.end method


# virtual methods
.method public onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1300(Lcom/isaigu/gymapp/wearable/BandPairing;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1400(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1400(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_47

    .line 701
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 703
    const-string v1, "cancelled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    if-eqz v0, :cond_46

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->reopened:J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1500()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-lez v1, :cond_46

    .line 704
    # setter for: Lcom/isaigu/gymapp/wearable/BandPairing;->reopened:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1502(J)J

    .line 705
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->onDone:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1600(Lcom/isaigu/gymapp/wearable/BandPairing;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 714
    :cond_46
    :goto_46
    return-void

    .line 709
    :cond_47
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1700(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_46

    .line 712
    :cond_55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->failed(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    invoke-static {v0, p2, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1800(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_46
.end method
