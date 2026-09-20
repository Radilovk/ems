.class Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;
.super Ljava/lang/Object;
.source "SegmentProgramUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->openEditor(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$blocksRoot:Landroid/widget/LinearLayout;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$entry:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

.field final synthetic val$program:Lcom/isaigu/gymapp/bean/TrainProgram;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$blocksRoot:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$entry:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$program:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$SegmentProgramUiHelper$4(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/view/View;)V
    .registers 5

    .line 158
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 159
    :goto_8
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object p1

    .line 160
    iget-object p3, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_38

    .line 161
    iget-object p3, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 162
    iget v0, p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    iput v0, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 163
    iget v0, p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 164
    iget v0, p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    iput v0, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 165
    iget v0, p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    iput v0, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    .line 166
    iget p3, p3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    iput p3, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    .line 168
    :cond_38
    iget-object p2, p2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->run()V

    .line 170
    return-void
.end method

.method public run()V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$blocksRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$entry:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 152
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$blocksRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$entry:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    # invokes: Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->buildBlockRow(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)Landroid/view/View;
    invoke-static {v3, v2, v4, v1, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->access$200(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 154
    :cond_21
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 155
    const v2, 0x7f0d014b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$entry:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    new-instance v3, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;

    invoke-direct {v3, p0, v0, v2}, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$4$ncrkVCzZoQjuu2dugfh98u1hOWQ;-><init>(Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$4;->val$blocksRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method
