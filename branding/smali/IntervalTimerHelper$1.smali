.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 642
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0175

    const v2, 0x7f0d0176

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;II)V

    .line 643
    return-void
.end method
