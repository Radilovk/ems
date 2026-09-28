.class final Lcom/isaigu/gymapp/wearable/NextClient$Dismissed;
.super Ljava/lang/Object;
.source "NextClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismissed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 521
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 522
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->SNOOZE:Ljava/util/Map;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$100()Ljava/util/Map;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_22
    # setter for: Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextClient;->access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 525
    # setter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextClient;->access$002(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 526
    # setter for: Lcom/isaigu/gymapp/wearable/NextClient;->pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextClient;->access$302(Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    .line 527
    return-void
.end method
