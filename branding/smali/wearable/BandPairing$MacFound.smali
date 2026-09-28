.class final Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/BandMacFinder$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MacFound"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 674
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->key:Ljava/lang/String;

    .line 675
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->name:Ljava/lang/String;

    .line 676
    return-void
.end method


# virtual methods
.method public onBands(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$MacFound;->name:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->macResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1200(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method
