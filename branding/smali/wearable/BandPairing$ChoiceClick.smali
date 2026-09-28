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
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 654
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->mac:Ljava/lang/String;

    .line 655
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->key:Ljava/lang/String;

    .line 656
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->name:Ljava/lang/String;

    .line 657
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->mac:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$ChoiceClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->showBands(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1100(Lcom/isaigu/gymapp/wearable/BandPairing;Ljava/util/List;)V

    .line 664
    return-void
.end method
