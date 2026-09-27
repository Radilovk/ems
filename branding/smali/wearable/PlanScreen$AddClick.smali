.class final Lcom/isaigu/gymapp/wearable/PlanScreen$AddClick;
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
    name = "AddClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 615
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 616
    if-nez v0, :cond_7

    .line 628
    :goto_6
    return-void

    .line 619
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 620
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2b

    .line 621
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x1c85

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 624
    :cond_2b
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;-><init>()V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 627
    :cond_3a
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->open()V

    goto :goto_6
.end method
