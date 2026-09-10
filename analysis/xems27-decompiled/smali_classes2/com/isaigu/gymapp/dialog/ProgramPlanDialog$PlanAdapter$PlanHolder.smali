.class Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProgramPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlanHolder"
.end annotation


# instance fields
.field plan:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 191
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;->this$1:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

    .line 192
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 193
    const p1, 0x7f0901aa

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;->time:Landroid/widget/TextView;

    .line 194
    const p1, 0x7f0901b1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter$PlanHolder;->plan:Landroid/widget/TextView;

    .line 195
    return-void
.end method
