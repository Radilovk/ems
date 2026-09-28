.class final Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;
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
    name = "ScanDone"
.end annotation


# instance fields
.field private final f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 3

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 500
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;->f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ScanDone;->f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->scanFinished(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$700(Lcom/isaigu/gymapp/wearable/BandPairing;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 506
    return-void
.end method
