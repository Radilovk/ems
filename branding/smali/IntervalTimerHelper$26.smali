.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildFooter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1226
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 1227
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3100()V

    .line 1228
    return-void
.end method
