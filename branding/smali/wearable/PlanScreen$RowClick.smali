.class final Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;
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
    name = "RowClick"
.end annotation


# instance fields
.field final a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 311
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 315
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 316
    if-nez v0, :cond_7

    .line 325
    :goto_6
    return-void

    .line 319
    :cond_7
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 320
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_16

    .line 321
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->pickClient(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    goto :goto_6

    .line 323
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    goto :goto_6
.end method
