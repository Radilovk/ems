.class final Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CalClick"
.end annotation


# instance fields
.field final id:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;->id:J

    .line 593
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;->id:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/Schedule;->setCalendarId(Landroid/content/Context;J)V

    .line 598
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->invalidate()V

    .line 599
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 600
    return-void
.end method
