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

.field static final PICK:I = 0x0

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
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 450
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    .line 451
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    .line 452
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 456
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 457
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 458
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-nez v3, :cond_2b

    .line 459
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V

    .line 460
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 492
    :goto_2a
    return-void

    .line 462
    :cond_2b
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v3, v0, :cond_40

    .line 463
    iget-object v3, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aget-boolean v2, v2, v5

    if-nez v2, :cond_3e

    :goto_3b
    aput-boolean v0, v3, v4

    goto :goto_25

    :cond_3e
    move v0, v1

    goto :goto_3b

    .line 464
    :cond_40
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4a

    .line 465
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    goto :goto_25

    .line 466
    :cond_4a
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5c

    .line 467
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-nez v3, :cond_5a

    :goto_57
    iput-boolean v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    goto :goto_25

    :cond_5a
    move v0, v1

    goto :goto_57

    .line 468
    :cond_5c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v0, v5, :cond_6f

    .line 469
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    .line 470
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    if-lez v0, :cond_25

    iget v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    if-nez v0, :cond_25

    iput v5, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    goto :goto_25

    .line 471
    :cond_6f
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_79

    .line 472
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    goto :goto_25

    .line 473
    :cond_79
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_87

    .line 474
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->start()V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_2a

    .line 477
    :cond_87
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_90

    .line 478
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pause()V

    goto :goto_2a

    .line 480
    :cond_90
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v0, v6, :cond_9d

    .line 481
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_2a

    .line 484
    :cond_9d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a9

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->info()V

    goto :goto_2a

    .line 488
    :cond_a9
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->contra()V

    goto/16 :goto_2a
.end method
