.class public final synthetic Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;

.field public final synthetic f$1:Lcom/isaigu/gymapp/bean/TrainProgram;

.field public final synthetic f$2:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$0:Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$1:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$2:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$0:Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$1:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;->f$2:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    invoke-virtual {v0, v1, v2, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->lambda$run$0$SegmentProgramUiHelper$4(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/view/View;)V

    return-void
.end method
