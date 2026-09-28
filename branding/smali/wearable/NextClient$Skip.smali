.class final Lcom/isaigu/gymapp/wearable/NextClient$Skip;
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
    name = "Skip"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 528
    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->markDone(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    .line 531
    :cond_15
    # invokes: Lcom/isaigu/gymapp/wearable/NextClient;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$400()V

    .line 532
    return-void
.end method
