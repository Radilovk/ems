.class final Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;
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
    name = "ManualClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 442
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ManualClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    const-string v1, ""

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->showManual(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$200(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;)V

    .line 447
    return-void
.end method
