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
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 447
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    .line 448
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    .line 449
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 453
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 454
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 455
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v3, v0, :cond_24

    .line 456
    iget-object v3, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    aget-boolean v2, v2, v5

    if-nez v2, :cond_22

    :goto_1a
    aput-boolean v0, v3, v4

    .line 484
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 485
    :goto_21
    return-void

    :cond_22
    move v0, v1

    .line 456
    goto :goto_1a

    .line 457
    :cond_24
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e

    .line 458
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    goto :goto_1c

    .line 459
    :cond_2e
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_40

    .line 460
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-nez v3, :cond_3e

    :goto_3b
    iput-boolean v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    goto :goto_1c

    :cond_3e
    move v0, v1

    goto :goto_3b

    .line 461
    :cond_40
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    if-ne v0, v5, :cond_53

    .line 462
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    .line 463
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    if-lez v0, :cond_1c

    iget v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    if-nez v0, :cond_1c

    iput v5, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    goto :goto_1c

    .line 464
    :cond_53
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5d

    .line 465
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->arg:I

    iput v0, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    goto :goto_1c

    .line 466
    :cond_5d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6b

    .line 467
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->start()V

    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_21

    .line 470
    :cond_6b
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_74

    .line 471
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pause()V

    goto :goto_21

    .line 473
    :cond_74
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_83

    .line 474
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    goto :goto_21

    .line 477
    :cond_83
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8f

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->info()V

    goto :goto_21

    .line 481
    :cond_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->contra()V

    goto :goto_21
.end method
