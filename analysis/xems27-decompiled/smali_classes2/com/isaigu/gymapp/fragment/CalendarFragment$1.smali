.class Lcom/isaigu/gymapp/fragment/CalendarFragment$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddClick(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    const v2, 0x7f0d00b4

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 109
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$200(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$300(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 110
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$400(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$2;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1;III)V

    .line 108
    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/UIFactory;->showOptionView3(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;)V

    .line 125
    return-void
.end method

.method public onDayClick(IIILcom/isaigu/gymapp/bean/ProgramPlanBean;)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "finish"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 87
    if-eqz p4, :cond_0

    .line 88
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;-><init>()V

    .line 89
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "programPlanBean"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->setArguments(Landroid/os/Bundle;)V

    .line 92
    new-instance v2, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->setListener(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;)V

    .line 104
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 106
    .end local v0    # "dialog":Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onLeftRowClick()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->monthChange(I)V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonth()Ljava/util/Date;

    move-result-object v0

    .line 70
    .local v0, "month":Ljava/util/Date;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$100(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setDayTask(Ljava/util/List;)V

    .line 71
    return-void
.end method

.method public onRightRowClick()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CustomCalendar;->monthChange(I)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getMonth()Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "month":Ljava/util/Date;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$100(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setDayTask(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public onTitleClick(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "monthStr"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/util/Date;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u70b9\u51fb\u4e86\u6807\u9898   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onWeekClick(ILjava/lang/String;)V
    .locals 2
    .param p1, "weekIndex"    # I
    .param p2, "weekStr"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u70b9\u51fb\u4e86\u661f\u671f   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 85
    return-void
.end method
