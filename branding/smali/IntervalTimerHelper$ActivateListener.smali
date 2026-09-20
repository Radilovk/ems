.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;
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
    name = "ActivateListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 494
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$300()V

    .line 495
    return-void
.end method
