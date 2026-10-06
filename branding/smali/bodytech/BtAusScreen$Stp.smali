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
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 503
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    .line 504
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x5

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 508
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 509
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-nez v5, :cond_45

    .line 510
    iget v5, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    if-ge v5, v0, :cond_3b

    move v0, v1

    .line 511
    :goto_13
    if-gez p1, :cond_21

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    if-le v2, v1, :cond_21

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 512
    :cond_21
    const/16 v2, 0x63

    iget v3, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    .line 513
    iget v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_6c

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    .line 547
    :goto_3a
    return-void

    .line 510
    :cond_3b
    iget v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    const/16 v5, 0x28

    if-ge v0, v5, :cond_43

    move v0, v3

    goto :goto_13

    :cond_43
    move v0, v2

    goto :goto_13

    .line 517
    :cond_45
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-ne v5, v1, :cond_74

    .line 518
    iget v3, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    if-ge v3, v0, :cond_72

    move v0, v1

    .line 519
    :goto_4e
    if-gez p1, :cond_5c

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    if-le v2, v1, :cond_5c

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    :cond_5c
    const/16 v2, 0x5a

    iget v3, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    .line 546
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_3a

    :cond_72
    move v0, v2

    .line 518
    goto :goto_4e

    .line 521
    :cond_74
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    if-ne v5, v3, :cond_b2

    .line 522
    iget v5, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v5, :cond_9a

    .line 523
    if-lez p1, :cond_6c

    .line 524
    iget-object v1, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->onS:I

    if-lez v1, :cond_88

    iget-object v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->onS:I

    :cond_88
    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    .line 525
    iget-object v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    if-lez v0, :cond_97

    iget-object v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    :goto_94
    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    goto :goto_6c

    :cond_97
    iget v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    goto :goto_94

    .line 528
    :cond_9a
    iget v5, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    if-ge v5, v0, :cond_b0

    move v0, v1

    .line 529
    :goto_9f
    const/16 v1, 0x3c

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    goto :goto_6c

    :cond_b0
    move v0, v2

    .line 528
    goto :goto_9f

    .line 531
    :cond_b2
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_eb

    .line 532
    iget v3, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v3, :cond_d4

    .line 533
    if-lez p1, :cond_6c

    .line 534
    iget v1, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    if-lez v1, :cond_d2

    iget v1, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    :goto_c3
    iput v1, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    .line 535
    iget-object v1, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    if-lez v1, :cond_cf

    iget-object v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    :cond_cf
    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    goto :goto_6c

    :cond_d2
    move v1, v0

    .line 534
    goto :goto_c3

    .line 538
    :cond_d4
    iget v3, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-ge v3, v0, :cond_e9

    .line 539
    :goto_d8
    const/16 v0, 0x78

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    mul-int/2addr v1, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    goto :goto_6c

    :cond_e9
    move v1, v2

    .line 538
    goto :goto_d8

    .line 541
    :cond_eb
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;->what:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_10a

    .line 542
    iget v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    if-lez v0, :cond_6c

    const/16 v0, 0x3e8

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    goto/16 :goto_6c

    .line 544
    :cond_10a
    iget v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:I

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:I

    goto/16 :goto_6c
.end method
