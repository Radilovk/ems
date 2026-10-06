.class final Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;
.super Ljava/lang/Object;
.source "BtAusScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAusScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stp"
.end annotation


# static fields
.field static final BMS:I = 0x4

.field static final LEVEL:I = 0x0

.field static final MIN:I = 0x1

.field static final OFF:I = 0x3

.field static final ON:I = 0x2

.field static final RAMP:I = 0x5


# instance fields
.field final s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V
    .registers 3

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 583
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    .line 584
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x5

    const/16 v1, 0xa

    const/4 v2, 0x1

    .line 588
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 590
    iget v0, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_47

    iget v0, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-ltz v0, :cond_47

    iget v0, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 591
    :goto_14
    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v6

    .line 592
    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-nez v7, :cond_52

    .line 593
    iget-object v6, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    aget v6, v6, v0

    .line 594
    if-ge v6, v1, :cond_4a

    move v1, v2

    .line 595
    :goto_23
    if-gez p1, :cond_2d

    if-le v6, v2, :cond_2d

    add-int/lit8 v3, v6, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 596
    :cond_2d
    iget-object v3, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    const/16 v4, 0x63

    mul-int/2addr v1, p1

    add-int/2addr v1, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v0

    .line 597
    iget v0, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_77

    .line 598
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    .line 632
    :goto_46
    return-void

    .line 590
    :cond_47
    iget v0, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    goto :goto_14

    .line 594
    :cond_4a
    const/16 v1, 0x28

    if-ge v6, v1, :cond_50

    move v1, v4

    goto :goto_23

    :cond_50
    move v1, v3

    goto :goto_23

    .line 601
    :cond_52
    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-ne v7, v2, :cond_7f

    .line 602
    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v4, v4, v0

    .line 603
    if-ge v4, v1, :cond_7d

    move v1, v2

    .line 604
    :goto_5d
    if-gez p1, :cond_67

    if-le v4, v2, :cond_67

    add-int/lit8 v3, v4, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 605
    :cond_67
    iget-object v3, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    const/16 v5, 0x3c

    mul-int/2addr v1, p1

    add-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v0

    .line 631
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_46

    :cond_7d
    move v1, v3

    .line 603
    goto :goto_5d

    .line 606
    :cond_7f
    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-ne v7, v4, :cond_c3

    .line 607
    iget-object v7, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v7, v7, v0

    if-nez v7, :cond_a5

    .line 608
    if-lez p1, :cond_77

    .line 609
    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    iget v3, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->onS:I

    if-lez v3, :cond_93

    iget v1, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->onS:I

    :cond_93
    aput v1, v2, v0

    .line 610
    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    iget v1, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    if-lez v1, :cond_a0

    iget v1, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    :goto_9d
    aput v1, v2, v0

    goto :goto_77

    :cond_a0
    iget-object v1, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v1, v1, v0

    goto :goto_9d

    .line 613
    :cond_a5
    iget-object v6, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v6, v6, v0

    if-ge v6, v1, :cond_c1

    move v1, v2

    .line 614
    :goto_ac
    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    const/16 v3, 0x3c

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v5, v5, v0

    mul-int/2addr v1, p1

    add-int/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v2, v0

    goto :goto_77

    :cond_c1
    move v1, v3

    .line 613
    goto :goto_ac

    .line 616
    :cond_c3
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_109

    .line 617
    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v4, v4, v0

    if-nez v4, :cond_eb

    .line 618
    if-lez p1, :cond_77

    .line 619
    iget-object v3, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v2, v2, v0

    if-lez v2, :cond_e9

    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v2, v2, v0

    :goto_dc
    aput v2, v3, v0

    .line 620
    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    iget v3, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    if-lez v3, :cond_e6

    iget v1, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    :cond_e6
    aput v1, v2, v0

    goto :goto_77

    :cond_e9
    move v2, v1

    .line 619
    goto :goto_dc

    .line 623
    :cond_eb
    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v4, v4, v0

    if-ge v4, v1, :cond_107

    .line 624
    :goto_f1
    iget-object v1, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    const/16 v3, 0x78

    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v4, v4, v0

    mul-int/2addr v2, p1

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_77

    :cond_107
    move v2, v3

    .line 623
    goto :goto_f1

    .line 626
    :cond_109
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_130

    .line 627
    iget-object v1, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v1, v1, v0

    if-lez v1, :cond_77

    iget-object v1, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    const/16 v3, 0x3e8

    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v4, v4, v0

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v4, v4, v0

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_77

    .line 629
    :cond_130
    iget-object v1, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    iget-object v2, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    aget v2, v2, v0

    add-int/2addr v2, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_77
.end method
