.class final Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;
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
    name = "PickFileClick"
.end annotation


# instance fields
.field private final p:Lcom/isaigu/gymapp/wearable/BandPairing;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandPairing;)V
    .registers 2

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    .line 627
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandPairing$PickFileClick;->p:Lcom/isaigu/gymapp/wearable/BandPairing;

    # invokes: Lcom/isaigu/gymapp/wearable/BandPairing;->pickFile()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandPairing;->access$1000(Lcom/isaigu/gymapp/wearable/BandPairing;)V

    .line 632
    return-void
.end method
