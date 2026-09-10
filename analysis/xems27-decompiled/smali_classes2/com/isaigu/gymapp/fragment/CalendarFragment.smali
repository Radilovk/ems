.class public Lcom/isaigu/gymapp/fragment/CalendarFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "CalendarFragment.java"


# static fields
.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x1


# instance fields
.field private calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

.field private logoImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Lcom/isaigu/gymapp/widget/CustomCalendar;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/util/Date;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .line 41
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getDayTaskList(Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getTrainPickerViewData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getTrainPickerViewDataHour()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/CalendarFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getTrainPickerViewDataMinute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/CalendarFragment;Ljava/lang/String;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;III)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p3, "x3"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->handleSelectPlanTime(Ljava/lang/String;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;III)V

    return-void
.end method

.method private getDayTaskList(Ljava/util/Date;)Ljava/util/List;
    .locals 8
    .param p1, "month"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 209
    .local v1, "maxDay":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max day : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/ProgramPlanBean;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 212
    const v4, 0x7f0d004c

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "dayStr":Ljava/lang/String;
    const-class v5, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 214
    .local v5, "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 215
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v4    # "dayStr":Ljava/lang/String;
    .end local v5    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method private getTrainPickerViewData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    new-instance v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 225
    .local v1, "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f0d00fb

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v1, v2

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f0d0025

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v1, v2

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f0d00ce

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v1, v2

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v0
.end method

.method private getTrainPickerViewDataHour()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 243
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 244
    .local v2, "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2    # "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getTrainPickerViewDataMinute()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_0

    .line 252
    new-instance v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 253
    .local v2, "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private handleSelectPlanTime(Ljava/lang/String;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;III)V
    .locals 18
    .param p1, "planText"    # Ljava/lang/String;
    .param p2, "pickerViewData2"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p3, "pickerViewData3"    # Lcom/isaigu/gymapp/bean/PickerViewData;
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "day"    # I

    move-object/from16 v8, p0

    .line 164
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;-><init>()V

    move-object v9, v0

    .line 165
    .local v9, "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->plan:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 166
    move-object/from16 v11, p2

    :try_start_1
    iget-object v0, v11, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move v12, v0

    .line 167
    .local v12, "hour":I
    move-object/from16 v13, p3

    :try_start_2
    iget-object v0, v13, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 168
    .local v14, "minute":I
    const v0, 0x7f0d004e

    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v12, v4, :cond_0

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v2, v6

    if-ge v14, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    .line 169
    const v0, 0x7f0d004c

    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 171
    .local v15, "dayStr":Ljava/lang/String;
    iget-object v0, v8, Lcom/isaigu/gymapp/fragment/CalendarFragment;->calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

    invoke-virtual {v0, v15}, Lcom/isaigu/gymapp/widget/CustomCalendar;->getDayTask(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    .local v0, "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    const/4 v1, 0x0

    .line 173
    .local v1, "programnull":Z
    if-nez v0, :cond_2

    .line 174
    const/4 v1, 0x1

    .line 175
    :try_start_4
    new-instance v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v7, p6

    :try_start_5
    invoke-direct {v2, v7, v15, v3}, Lcom/isaigu/gymapp/bean/ProgramPlanBean;-><init>(ILjava/lang/String;Ljava/util/List;)V

    move-object v0, v2

    .line 176
    iget-object v2, v8, Lcom/isaigu/gymapp/fragment/CalendarFragment;->calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/widget/CustomCalendar;->addDayTask(Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V

    move-object v6, v0

    move/from16 v16, v1

    goto :goto_2

    .line 200
    .end local v0    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .end local v1    # "programnull":Z
    .end local v9    # "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    .end local v12    # "hour":I
    .end local v14    # "minute":I
    .end local v15    # "dayStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v7, p6

    goto/16 :goto_9

    .line 173
    .restart local v0    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .restart local v1    # "programnull":Z
    .restart local v9    # "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    .restart local v12    # "hour":I
    .restart local v14    # "minute":I
    .restart local v15    # "dayStr":Ljava/lang/String;
    :cond_2
    move/from16 v7, p6

    move-object v6, v0

    move/from16 v16, v1

    .line 178
    .end local v0    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .end local v1    # "programnull":Z
    .local v6, "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .local v16, "programnull":Z
    :goto_2
    const/4 v0, 0x0

    .line 179
    .local v0, "contain":Z
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    .line 180
    .local v2, "programPlan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    iget-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    iget-object v4, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const/4 v0, 0x1

    .line 182
    move/from16 v17, v0

    goto :goto_4

    .line 184
    .end local v2    # "programPlan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    :cond_3
    goto :goto_3

    .line 179
    :cond_4
    move/from16 v17, v0

    .line 185
    .end local v0    # "contain":Z
    .local v17, "contain":Z
    :goto_4
    if-nez v17, :cond_5

    .line 186
    iget-object v0, v6, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->plan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v12

    move-object v10, v6

    .end local v6    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .local v10, "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    move v6, v14

    move-object v7, v0

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->saveCalendarEvent(IIIIILjava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "eventID":I
    iput v0, v9, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->eventId:I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    const v2, 0x7f0d0021

    invoke-virtual {v8, v2}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .end local v0    # "eventID":I
    goto :goto_6

    .line 191
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v10    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .restart local v6    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :catch_2
    move-exception v0

    move-object v10, v6

    .line 192
    .end local v6    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v10    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_7

    .line 195
    .end local v10    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .restart local v6    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    :cond_5
    move-object v10, v6

    .end local v6    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .restart local v10    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v8, v1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 197
    :goto_7
    if-eqz v17, :cond_6

    if-eqz v16, :cond_7

    .line 198
    :cond_6
    invoke-static {v15, v10}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 202
    .end local v9    # "plan":Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    .end local v10    # "programPlanBean":Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .end local v12    # "hour":I
    .end local v14    # "minute":I
    .end local v15    # "dayStr":Ljava/lang/String;
    .end local v16    # "programnull":Z
    .end local v17    # "contain":Z
    :cond_7
    goto :goto_a

    .line 200
    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v11, p2

    :goto_8
    move-object/from16 v13, p3

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method private requestWriteSettings()Z
    .locals 4

    .line 309
    const/4 v0, 0x1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v0, 0x0

    return v0

    .line 319
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private saveCalendarEvent(IIIIILjava/lang/String;)I
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "title"    # Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 261
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 262
    .local v1, "endDate":Ljava/util/Date;
    add-int/lit16 v2, p1, -0x76c

    invoke-virtual {v0, v2}, Ljava/util/Date;->setYear(I)V

    .line 263
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMonth(I)V

    .line 264
    invoke-virtual {v0, p3}, Ljava/util/Date;->setDate(I)V

    .line 265
    invoke-virtual {v0, p5}, Ljava/util/Date;->setMinutes(I)V

    .line 266
    invoke-virtual {v0, p4}, Ljava/util/Date;->setHours(I)V

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Date;->setSeconds(I)V

    .line 268
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 270
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "startDateString":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v4, "map":Ljava/util/Map;
    const-string v5, "startDate"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "endDate"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v5, "alarms":Ljava/util/List;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v6, "alarmMap":Ljava/util/Map;
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "date"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v7, "alarms"

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {p6, v4, v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->saveEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I

    move-result v7

    return v7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 293
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/fragment/CalendarFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->requestCalendarReadWritePermission(Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->logoImage:Landroid/widget/ImageView;

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 64
    :cond_0
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CustomCalendar;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

    .line 65
    new-instance v2, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setOnClickListener(Lcom/isaigu/gymapp/widget/CustomCalendar$onClickListener;)V

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 129
    .local v1, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->calendar:Lcom/isaigu/gymapp/widget/CustomCalendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getDayTaskList(Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/CustomCalendar;->setDayTask(Ljava/util/List;)V

    .line 131
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->requestWriteSettings()Z

    move-result v2

    .line 132
    .local v2, "can":Z
    if-eqz v2, :cond_1

    .line 133
    new-instance v3, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V

    invoke-static {v3}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->requestCalendarReadWritePermission(Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;)V

    .line 145
    :cond_1
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 150
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 152
    if-nez p1, :cond_1

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method protected viewId()I
    .locals 1

    .line 50
    const v0, 0x7f0b001f

    return v0
.end method
