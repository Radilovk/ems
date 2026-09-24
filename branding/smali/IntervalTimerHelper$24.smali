.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1192
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2602(I)I

    .line 1193
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2802(Landroid/net/Uri;)Landroid/net/Uri;

    .line 1194
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()V

    .line 1195
    return-void
.end method
