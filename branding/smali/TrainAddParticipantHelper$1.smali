.class Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TrainAddParticipantHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->attach(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4

    .line 54
    # invokes: Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->scheduleRefresh()V
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->access$000()V

    .line 55
    return-void
.end method
