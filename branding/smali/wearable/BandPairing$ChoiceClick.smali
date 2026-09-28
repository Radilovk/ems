.class final Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;
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
    name = "ChoiceClick"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final mac:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 530
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->mac:Ljava/lang/String;

    .line 531
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->key:Ljava/lang/String;

    .line 532
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->name:Ljava/lang/String;

    .line 533
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 537
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->name:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->saveBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$900(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method
