.class final Lcom/isaigu/gymapp/wearable/BandPairing$DoneClick;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoneClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$DoneClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 614
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$DoneClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->finish()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$900(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 619
    return-void
.end method
