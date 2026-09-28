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
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 563
    return-void
.end method


# virtual methods
.method public onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->closed:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1100(Lcom/isaigu/gymapp/wearable/BandPairing;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 575
    :goto_8
    return-void

    .line 570
    :cond_9
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->found(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1200(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_8

    .line 573
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickedFile;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->failed(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1300(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;)V

    goto :goto_8
.end method
