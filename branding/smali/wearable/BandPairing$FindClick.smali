.class final Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 517
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->find()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$100(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 522
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$FindClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->find()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$100(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 527
    return-void
.end method
