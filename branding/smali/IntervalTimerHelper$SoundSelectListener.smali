.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;
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
    name = "SoundSelectListener"
.end annotation


# instance fields
.field private final sound:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;->sound:I

    .line 811
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 815
    iget p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;->sound:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$400()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_11

    .line 816
    const p1, 0x7f0d0133

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500(I)V

    .line 818
    :cond_11
    iget p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;->sound:I

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectSound(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600(I)V

    .line 819
    return-void
.end method
