.class final Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;
.super Ljava/lang/Object;
.source "BtAusScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAusScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Do"
.end annotation


# static fields
.field static final BURST:I = 0x4

.field static final CHAN:I = 0x1

.field static final CONTRA:I = 0xa

.field static final INFO:I = 0x9

.field static final LEVEL:I = 0x2

.field static final MORE:I = 0x3

.field static final PAUSE:I = 0x7

.field static final PHASE:I = 0x0

.field static final SKIP:I = 0xb

.field static final START:I = 0x6

.field static final STOP:I = 0x8

.field static final WAVE:I = 0x5


# instance fields
.field final arg:I

.field final s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V
    .registers 4

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 527
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    .line 528
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    .line 529
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 533
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 534
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 535
    iget v3, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 536
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-nez v4, :cond_1a

    .line 537
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 571
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 572
    :goto_19
    return-void

    .line 538
    :cond_1a
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_24

    .line 539
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->skip()V

    goto :goto_19

    .line 541
    :cond_24
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v4, v0, :cond_39

    .line 542
    iget-object v3, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aget-boolean v2, v2, v5

    if-nez v2, :cond_37

    :goto_34
    aput-boolean v0, v3, v4

    goto :goto_14

    :cond_37
    move v0, v1

    goto :goto_34

    .line 543
    :cond_39
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v4, v6, :cond_44

    .line 544
    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aput v1, v0, v3

    goto :goto_14

    .line 545
    :cond_44
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_56

    .line 546
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-nez v3, :cond_54

    :goto_51
    iput-boolean v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    goto :goto_14

    :cond_54
    move v0, v1

    goto :goto_51

    .line 547
    :cond_56
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_87

    .line 548
    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aput v1, v0, v3

    .line 549
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    if-lez v0, :cond_6f

    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v0, v0, v3

    if-nez v0, :cond_6f

    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aput v6, v0, v3

    .line 550
    :cond_6f
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    if-lez v0, :cond_14

    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    iget-object v1, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v1, v1, v3

    const/16 v2, 0x3e8

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v3

    goto :goto_14

    .line 551
    :cond_87
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_93

    .line 552
    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aput v1, v0, v3

    goto :goto_14

    .line 553
    :cond_93
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a2

    .line 554
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->start()V

    .line 555
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto/16 :goto_19

    .line 557
    :cond_a2
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_ac

    .line 558
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pause()V

    goto/16 :goto_19

    .line 560
    :cond_ac
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_bc

    .line 561
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 562
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto/16 :goto_19

    .line 564
    :cond_bc
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c9

    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->info()V

    goto/16 :goto_19

    .line 568
    :cond_c9
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->contra()V

    goto/16 :goto_19
.end method
