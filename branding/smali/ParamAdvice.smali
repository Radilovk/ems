.class public final Lcom/isaigu/gymapp/dialog/ParamAdvice;
.super Ljava/lang/Object;
.source "ParamAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;,
        Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final TAG:Ljava/lang/String; = "xems_param_advice"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/dialog/ParamAdvice;->COLORS:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0xd161a5
        -0x2cd0d1
        -0xa8400
        -0xe6892e
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 20

    .prologue
    .line 42
    if-eqz p0, :cond_12

    :try_start_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "multiEdit"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 77
    :cond_12
    :goto_12
    return-void

    .line 45
    :cond_13
    const-string v2, "wrapper"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    instance-of v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_b4

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v3, v2

    .line 47
    :goto_24
    const-string v2, "trainProgram"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 48
    const-string v2, "inputramp"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    if-eqz v3, :cond_12

    instance-of v4, v11, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v4, :cond_12

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_12

    .line 52
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .line 53
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 54
    const-string v2, "xems_param_advice0"

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_12

    .line 57
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 58
    const/4 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v2, v4, v6, v7}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->from(Lcom/isaigu/gymapp/ai/AiProfile;ID)Lcom/isaigu/gymapp/ai/PulseAdvice$Input;

    move-result-object v15

    .line 59
    iget-wide v2, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v14, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->log(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v16

    .line 60
    const/4 v2, 0x0

    move v12, v2

    :goto_63
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_ba

    .line 61
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 62
    iget-object v0, v15, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v3, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    const-string v4, "start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "activeS"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "planS"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "modes"

    .line 63
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "program"

    const-string v10, "type"

    const-string v18, "program"

    move-object/from16 v0, v18

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b8

    const/4 v9, 0x1

    :goto_a2
    const-string v10, "hrAvg"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;-><init>(JIIIZI)V

    .line 62
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_63

    .line 46
    :cond_b4
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_24

    .line 63
    :cond_b8
    const/4 v9, 0x0

    goto :goto_a2

    .line 65
    :cond_ba
    invoke-static {v15}, Lcom/isaigu/gymapp/ai/PulseAdvice;->all(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)[Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    move-result-object v4

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v2

    invoke-static {v15, v2}, Lcom/isaigu/gymapp/ai/PulseAdvice;->context(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Z)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v14}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 68
    const/4 v2, 0x0

    move v3, v2

    :goto_cb
    const/4 v2, 0x4

    if-ge v3, v2, :cond_12

    .line 69
    invoke-static {v13, v3}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->column(Landroid/view/View;I)Landroid/view/ViewGroup;

    move-result-object v6

    .line 70
    if-eqz v6, :cond_f7

    move-object v0, v11

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    move-object v2, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    if-eqz v2, :cond_f7

    .line 71
    aget-object v2, v4, v3

    move-object/from16 v0, p0

    invoke-static {v14, v0, v2, v5}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->strip(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v14, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f7} :catch_fb

    .line 68
    :cond_f7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_cb

    .line 74
    :catch_fb
    move-exception v2

    .line 75
    const-string v3, "ParamAdvice.attach"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12
.end method

.method static column(Landroid/view/View;I)Landroid/view/ViewGroup;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_12

    .line 82
    const-string v0, "xems_param_main"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 83
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    :goto_f
    return-object v0

    :cond_10
    move-object v0, v1

    .line 83
    goto :goto_f

    .line 85
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequencyview"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x3

    if-ge v2, v3, :cond_40

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_40

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 89
    :cond_40
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_47

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_f

    :cond_47
    move-object v0, v1

    goto :goto_f
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 214
    :try_start_0
    const-class v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 218
    :goto_e
    return-object v0

    .line 217
    :catch_f
    move-exception v0

    .line 218
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static from(Lcom/isaigu/gymapp/ai/AiProfile;ID)Lcom/isaigu/gymapp/ai/PulseAdvice$Input;
    .registers 8

    .prologue
    .line 191
    new-instance v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;-><init>()V

    .line 192
    if-nez p0, :cond_9

    move-object v0, v2

    .line 209
    :goto_8
    return-object v0

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_62

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1c
    iput v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_28
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->weightKg:D

    .line 198
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->heightCm:I

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 201
    iput p1, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    .line 202
    iput-wide p2, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_44
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 204
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->muscleLow:Z

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    .line 205
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fatObese:Z

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatObese:Z

    .line 206
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    .line 207
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->measured:Z

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->measured:Z

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v1, "sensitive"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sensitive:Z

    move-object v0, v2

    .line 209
    goto :goto_8

    .line 195
    :cond_62
    const/4 v0, 0x0

    goto :goto_10

    .line 196
    :cond_64
    const/4 v0, -0x1

    goto :goto_1c

    .line 197
    :cond_66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_28

    .line 203
    :cond_69
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_44
.end method

.method static put(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v0, "trainProgram"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v3, :cond_18

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 156
    :goto_14
    if-nez v0, :cond_1a

    move v0, v1

    .line 179
    :goto_17
    return v0

    .line 155
    :cond_18
    const/4 v0, 0x0

    goto :goto_14

    .line 159
    :cond_1a
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 160
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 161
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 162
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 163
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-eq v1, v2, :cond_4e

    .line 164
    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 165
    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v1, :cond_4e

    .line 166
    iget v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 167
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-gtz v1, :cond_4e

    .line 168
    const/16 v1, 0xa

    const/16 v3, 0x64

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 173
    :cond_4e
    :try_start_4e
    const-class v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const-string v1, "initSetData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 175
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_63} :catch_65

    :goto_63
    move v0, v2

    .line 179
    goto :goto_17

    .line 176
    :catch_65
    move-exception v0

    .line 177
    const-string v1, "ParamAdvice.redraw"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63
.end method

.method private static reasons(Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v5, 0xa

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 138
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_14
    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->whyBg:Ljava/util/List;

    move-object v1, v0

    .line 141
    :goto_19
    const/4 v0, 0x0

    move v2, v0

    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 142
    const-string v0, "\u2022 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 140
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->whyEn:Ljava/util/List;

    move-object v1, v0

    goto :goto_19

    .line 144
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 145
    const-string v0, "\u2022 \u041e\u0441\u043d\u043e\u0432\u043d\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0437\u0430 \u0440\u0435\u0436\u0438\u043c\u0430"

    const-string v1, "\u2022 The mode\'s base values"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_51
    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0438 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430\u0442 \u2014 \u0442\u0435 \u0441\u0430 \u043f\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u0432 \u043c\u043e\u043c\u0435\u043d\u0442\u0430."

    const-string v1, "Strength and channels are not suggested \u2014 they follow what the person feels now."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static same(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 183
    const-string v0, "trainProgram"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    instance-of v2, v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v2, :cond_43

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 185
    :goto_13
    if-eqz v0, :cond_45

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    if-ne v2, v3, :cond_45

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    if-ne v2, v3, :cond_45

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    if-ne v2, v3, :cond_45

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    if-ne v2, v3, :cond_45

    iget v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-eq v2, v1, :cond_41

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iget-boolean v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-ne v2, v3, :cond_45

    iget-boolean v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v2, :cond_41

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    if-ne v0, v2, :cond_45

    :cond_41
    move v0, v1

    :goto_42
    return v0

    .line 184
    :cond_43
    const/4 v0, 0x0

    goto :goto_13

    .line 185
    :cond_45
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static strip(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;Ljava/lang/String;)Landroid/view/View;
    .registers 12

    .prologue
    .line 94
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v2

    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems_param_advice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/dialog/ParamAdvice;->COLORS:[I

    iget v1, p2, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    aget v0, v0, v1

    .line 98
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x66

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 99
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 98
    invoke-static {v1, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 103
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 105
    iget-boolean v0, p2, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->best:Z

    if-eqz v0, :cond_12d

    const-string v0, "\u2605 \u0414\u043d\u0435\u0441 \u043d\u0430\u0439-\u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449 \u00b7 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0430"

    const-string v1, "\u2605 Best for today \u00b7 suggested"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_7a
    const/high16 v6, 0x41500000    # 13.0f

    .line 107
    iget-boolean v1, p2, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->best:Z

    if-eqz v1, :cond_137

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_82
    iget-boolean v7, p2, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->best:Z

    .line 105
    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p2, v2}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->line(Z)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {p2, v2, p3}, Lcom/isaigu/gymapp/dialog/ParamAdvice;->reasons(Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 112
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    const-string v1, "i"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v6, 0x30

    invoke-static {p0, v1, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 115
    const-string v2, "\u0417\u0430\u0449\u043e"

    const-string v5, "Why"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v2, Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/dialog/ParamAdvice$Fold;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    const-string v1, "\u041f\u0440\u0438\u043b\u043e\u0436\u0438"

    const-string v2, "Apply"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 123
    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v2, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;

    invoke-direct {v2, p1, p2, v1}, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;Landroid/widget/TextView;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/ParamAdvice$Apply;->show()V

    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 130
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 131
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-object v3

    .line 106
    :cond_12d
    const-string v0, "\u2726 \u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0430 \u043f\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435"

    const-string v1, "\u2726 Suggested by the profile and the log"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7a

    .line 107
    :cond_137
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_82
.end method
