.class final Lcom/isaigu/gymapp/wearable/NextClient$Load;
.super Ljava/lang/Object;
.source "NextClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Load"
.end annotation


# instance fields
.field final recommended:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/NextClient$Load;->recommended:Z

    .line 553
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 557
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v1

    .line 558
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$300()Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    move-result-object v2

    .line 559
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pSlot:I
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$500()I

    move-result v3

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 562
    :goto_1a
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 563
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/NextClient$Load;->recommended:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/NextClient;->load(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;IZ)V

    .line 565
    :cond_23
    # invokes: Lcom/isaigu/gymapp/wearable/NextClient;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$400()V

    .line 566
    return-void

    .line 561
    :cond_27
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1a
.end method
