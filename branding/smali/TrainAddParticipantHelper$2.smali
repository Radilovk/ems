.class Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$2;
.super Ljava/lang/Object;
.source "TrainAddParticipantHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 1

    .line 60
    # invokes: Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->scheduleRefresh()V
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->access$000()V

    .line 61
    return-void
.end method
