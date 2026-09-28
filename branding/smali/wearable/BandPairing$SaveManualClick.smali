.class final Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;
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
    name = "SaveManualClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 468
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$SaveManualClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->saveManual()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$500(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 473
    return-void
.end method
