.class public final synthetic Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

.field public final synthetic f$2:Landroid/widget/Switch;

.field public final synthetic f$3:Lcom/isaigu/gymapp/bean/TrainProgram;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/widget/Switch;Lcom/isaigu/gymapp/bean/TrainProgram;Landroid/widget/TextView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$1:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$2:Landroid/widget/Switch;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$3:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$1:Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$2:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$3:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/-$$Lambda$SegmentProgramUiHelper$IaaiPO8PNZqI2kvi_qMPUkhJnyA;->f$4:Landroid/widget/TextView;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->lambda$openEditor$0(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;Landroid/widget/Switch;Lcom/isaigu/gymapp/bean/TrainProgram;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
