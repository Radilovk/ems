.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildMoreRows(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 846
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 849
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;->val$a:Landroid/app/Activity;

    const/4 v0, 0x2

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openSub(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1400(Landroid/app/Activity;I)V

    .line 850
    return-void
.end method
