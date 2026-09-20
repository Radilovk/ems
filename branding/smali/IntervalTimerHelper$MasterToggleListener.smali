.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MasterToggleListener"
.end annotation


# instance fields
.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;->root:Landroid/view/View;

    .line 483
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 487
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$200(Landroid/view/View;)V

    .line 488
    return-void
.end method
