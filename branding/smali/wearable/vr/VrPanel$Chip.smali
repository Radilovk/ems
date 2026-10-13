.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chip"
.end annotation


# instance fields
.field private final channel:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;->channel:I

    .line 456
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 460
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;->channel:I

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;->channel:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_12
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setRests(Landroid/content/Context;IZ)V

    .line 462
    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->fillFeel()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$900()V

    .line 463
    return-void

    .line 461
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method
