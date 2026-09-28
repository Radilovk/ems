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
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    .line 939
    iput p2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    .line 940
    iput p3, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    .line 941
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 945
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    if-nez v0, :cond_10

    .line 946
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->day:I

    .line 954
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->render()V

    .line 955
    return-void

    .line 947
    :cond_10
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 948
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->hour:I

    goto :goto_a

    .line 949
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 950
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->minute:I

    goto :goto_a

    .line 952
    :cond_28
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->dur:I

    goto :goto_a
.end method
