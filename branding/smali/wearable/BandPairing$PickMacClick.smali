.class final Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;
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
    name = "PickMacClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 548
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$300(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickMacClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # getter for: Lcom/isaigu/gymapp/wearable/BandPairing;->macField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$400(Lcom/isaigu/gymapp/wearable/BandPairing;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->show(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 553
    return-void
.end method
