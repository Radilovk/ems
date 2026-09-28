.class final Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;
.super Ljava/lang/Object;
.source "BandPairing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancelListener"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 499
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$CancelListener;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->close()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$000(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 504
    return-void
.end method
