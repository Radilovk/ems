.class final Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;
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
    name = "PermClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 576
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_19

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_19

    .line 578
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x1c85

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 580
    :cond_19
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;-><init>()V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    return-void
.end method
