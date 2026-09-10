.class Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->onDayClick(IIILcom/isaigu/gymapp/bean/ProgramPlanBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    .line 92
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public programPlanRemove(Lcom/isaigu/gymapp/bean/ProgramPlanBean;Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;)V
    .locals 3
    .param p1, "programPlanBean"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .param p2, "plan"    # Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    .line 94
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    const-class v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->removeData(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->day:I

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->removeDayTask(ILjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    iget-object v2, p2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->removeDayPlan(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    iget v0, p2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->eventId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->removeEvent(ILjava/util/Map;)Z

    .line 101
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method
