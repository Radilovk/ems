.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;
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
    name = "CloseOverlayListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1857
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->disarmTimerKeepSettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2900()V

    .line 1858
    return-void
.end method
