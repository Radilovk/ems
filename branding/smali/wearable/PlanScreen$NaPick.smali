.class final Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;
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
    name = "NaPick"
.end annotation


# instance fields
.field final kind:I

.field final n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

.field final value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;II)V
    .registers 4

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    .line 827
    iput p2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    .line 828
    iput p3, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    .line 829
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 833
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    if-nez v0, :cond_10

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->day:I

    .line 842
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->render()V

    .line 843
    return-void

    .line 835
    :cond_10
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 836
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->hour:I

    goto :goto_a

    .line 837
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 838
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->minute:I

    goto :goto_a

    .line 840
    :cond_28
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->dur:I

    goto :goto_a
.end method
