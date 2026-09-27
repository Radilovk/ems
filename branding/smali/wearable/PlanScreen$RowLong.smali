.class final Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RowLong"
.end annotation


# instance fields
.field final a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 2

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 341
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 345
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_b

    .line 347
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->pickClient(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    .line 349
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
