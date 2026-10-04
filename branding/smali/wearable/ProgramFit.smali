.class public final Lcom/isaigu/gymapp/wearable/ProgramFit;
.super Ljava/lang/Object;
.source "ProgramFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;,
        Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;,
        Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;,
        Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;
    }
.end annotation


# static fields
.field private static final FILE_PROGRAMS:Ljava/lang/String; = "file_name_train_data"

.field private static final FITS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;",
            ">;"
        }
    .end annotation
.end field

.field static final HZ:I = 0x0

.field private static final KEY_ON:Ljava/lang/String; = "personal"

.field static final MODES:I = 0x4

.field static final N:I = 0x7

.field static final OFF:I = 0x3

.field static final ON:I = 0x2

.field private static final PREFS:Ljava/lang/String; = "xems_program_fit"

.field static final RIN:I = 0x5

.field static final ROUT:I = 0x6

.field private static final SWITCH_TAG:Ljava/lang/String; = "xems_program_fit_switch"

.field static final W:I = 0x1

.field static final WORK:I = 0x4

.field static final ZONES:I = 0x7

.field private static app:Landroid/content/Context;

.field private static volatile items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation
.end field

.field private static main:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 798
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 799
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 800
    check-cast v0, Landroid/app/Activity;

    .line 804
    :goto_b
    return-object v0

    .line 802
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 804
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static add([[IIII)V
    .registers 6

    .prologue
    .line 232
    aget-object v0, p0, p1

    if-eqz v0, :cond_b

    .line 233
    aget-object v0, p0, p1

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    .line 235
    :cond_b
    return-void
.end method

.method static applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 19

    .prologue
    .line 241
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v2, :cond_b

    .line 305
    :cond_a
    :goto_a
    return-void

    .line 244
    :cond_b
    if-eqz p0, :cond_59

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_11
    sput-object v2, Lcom/isaigu/gymapp/wearable/ProgramFit;->app:Landroid/content/Context;

    .line 245
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    .line 246
    if-eqz v4, :cond_a

    .line 249
    iget-object v2, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_5c

    move-object v3, v2

    .line 251
    :goto_22
    new-instance v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;-><init>()V

    .line 252
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v6, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    .line 253
    iget-object v2, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->program:Ljava/lang/String;

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    .line 255
    iput-object v4, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v2

    .line 257
    if-eqz v2, :cond_5e

    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    move-object v5, v2

    .line 258
    :goto_41
    const/4 v2, 0x4

    new-array v11, v2, [[I

    .line 259
    const/4 v2, 0x0

    move v6, v2

    :goto_46
    const/4 v2, 0x4

    if-ge v6, v2, :cond_63

    .line 260
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_61

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    :goto_53
    aput-object v2, v11, v6

    .line 259
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_46

    .line 244
    :cond_59
    sget-object v2, Lcom/isaigu/gymapp/wearable/ProgramFit;->app:Landroid/content/Context;

    goto :goto_11

    :cond_5c
    move-object v3, v4

    .line 250
    goto :goto_22

    .line 257
    :cond_5e
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_41

    .line 261
    :cond_61
    const/4 v2, 0x0

    goto :goto_53

    .line 263
    :cond_63
    invoke-static {v11, v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->personalize([[ILcom/isaigu/gymapp/ai/AiProfile;)[[I

    move-result-object v12

    .line 264
    if-eqz v5, :cond_81

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v2

    move-object v6, v2

    .line 265
    :goto_6e
    const/4 v2, 0x0

    move v9, v2

    :goto_70
    const/4 v2, 0x4

    if-ge v9, v2, :cond_f5

    .line 266
    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v13

    .line 267
    if-eqz v13, :cond_7d

    aget-object v2, v11, v9

    if-nez v2, :cond_84

    .line 265
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_70

    .line 264
    :cond_81
    const/4 v2, 0x0

    move-object v6, v2

    goto :goto_6e

    .line 270
    :cond_84
    const/4 v2, 0x0

    :goto_85
    const/4 v7, 0x7

    if-ge v2, v7, :cond_92

    .line 271
    aget-object v7, v12, v9

    aget v7, v7, v2

    invoke-static {v13, v2, v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 273
    :cond_92
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v7, v11, v9

    aput-object v7, v2, v9

    .line 274
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    aput-object v7, v2, v9

    .line 275
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    aput-object v7, v2, v9

    .line 276
    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    .line 277
    if-eqz v7, :cond_7d

    iget-object v2, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v2, :cond_7d

    iget-object v2, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_7d

    .line 278
    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v2

    .line 279
    :goto_c8
    const/4 v8, 0x0

    :goto_c9
    array-length v14, v2

    iget-object v15, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v15, v15, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v8, v14, :cond_e2

    .line 280
    iget-object v14, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v14, v14, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v15, v2, v8

    aput v15, v14, v8

    .line 279
    add-int/lit8 v8, v8, 0x1

    goto :goto_c9

    :cond_e0
    move-object v2, v7

    .line 278
    goto :goto_c8

    .line 282
    :cond_e2
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneBase:[[I

    aput-object v7, v2, v9

    .line 283
    iget-object v7, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneFit:[[I

    iget-object v2, v13, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aput-object v2, v7, v9

    goto :goto_7d

    .line 286
    :cond_f5
    if-eqz v5, :cond_125

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->overlay(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainUser;[[I)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 287
    const/4 v2, 0x0

    :goto_103
    const/4 v3, 0x4

    if-ge v2, v3, :cond_125

    .line 288
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_122

    iget-object v6, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v6, v6, v2

    if-eqz v6, :cond_122

    .line 290
    iget-object v6, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    aput-object v7, v6, v2

    .line 291
    iget-object v6, v10, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    aput-object v3, v6, v2

    .line 287
    :cond_122
    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    .line 295
    :cond_125
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v3

    .line 296
    :try_start_128
    sget-object v2, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v3
    :try_end_130
    .catchall {:try_start_128 .. :try_end_130} :catchall_1b1

    .line 298
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v2, :cond_148

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    if-eqz v2, :cond_148

    .line 299
    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    move-object/from16 v0, p1

    iput v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 301
    :cond_148
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    .line 302
    const-string v3, "manual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 303
    if-eqz v5, :cond_1b4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " personalised ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    :goto_1a4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 297
    :catchall_1b1
    move-exception v2

    :try_start_1b2
    monitor-exit v3
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    throw v2

    .line 304
    :cond_1b4
    const-string v2, " as saved (personalisation off)"

    goto :goto_1a4
.end method

.method public static attachSwitch(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 707
    if-nez p0, :cond_3

    .line 741
    :cond_2
    :goto_2
    return-void

    .line 711
    :cond_3
    const/4 v3, 0x0

    move-object v2, p0

    .line 712
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_86

    .line 713
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 714
    instance-of v4, v1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_82

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_82

    .line 715
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    move-object v2, v1

    .line 720
    :goto_20
    if-eqz v2, :cond_2

    .line 723
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->style(Landroid/view/ViewGroup;)V

    .line 724
    const-string v1, "xems_program_fit_switch"

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 727
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 728
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 729
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v3

    .line 730
    const-string v4, "\u041f\u0435\u0440\u0441\u043e\u043d\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v5, "Personalisation"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->hint(Z)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;

    invoke-direct {v6, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;-><init>(Landroid/content/Context;)V

    .line 730
    invoke-static {v1, v4, v5, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 732
    const-string v4, "xems_program_fit_switch"

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 733
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 734
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v3, v4, v5, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 735
    const-string v1, "xems_param_header"

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_84

    const/4 v1, 0x1

    .line 736
    :goto_70
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_7a} :catch_7b

    goto :goto_2

    .line 738
    :catch_7b
    move-exception v1

    .line 739
    const-string v2, "ProgramFit.attachSwitch"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_82
    move-object v2, v1

    .line 719
    goto :goto_5

    .line 735
    :cond_84
    const/4 v1, 0x0

    goto :goto_70

    :cond_86
    move-object v2, v3

    goto :goto_20
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 114
    if-nez p0, :cond_4

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 118
    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 119
    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3
.end method

.method public static bindSaveAs(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 767
    if-eqz p0, :cond_a

    .line 768
    new-instance v0, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 770
    :cond_a
    return-void
.end method

.method private static blockArmed()Z
    .registers 1

    .prologue
    .line 535
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 537
    :goto_4
    return v0

    .line 536
    :catch_5
    move-exception v0

    .line 537
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static clamp(III)I
    .registers 4

    .prologue
    .line 159
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static enabled(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    :goto_3
    if-nez p0, :cond_9

    .line 95
    :goto_5
    return v0

    .line 88
    :cond_6
    sget-object p0, Lcom/isaigu/gymapp/wearable/ProgramFit;->app:Landroid/content/Context;

    goto :goto_3

    .line 93
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "personal"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_5

    .line 94
    :catch_15
    move-exception v1

    goto :goto_5
.end method

.method static fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 356
    if-eqz p0, :cond_75

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 357
    :goto_c
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v3

    .line 358
    :try_start_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    .line 359
    if-eqz v0, :cond_29

    if-eqz v1, :cond_23

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    iget-wide v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_29

    .line 360
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 363
    :cond_29
    if-nez v0, :cond_7c

    if-eqz p1, :cond_7c

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 364
    new-instance v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;-><init>()V

    .line 365
    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    .line 366
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->program:Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 368
    const/4 v1, 0x0

    :goto_4d
    const/4 v2, 0x4

    if-ge v1, v2, :cond_77

    .line 369
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 370
    if-eqz v2, :cond_72

    .line 371
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    aput-object v5, v4, v1

    .line 372
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    aput-object v5, v4, v1

    .line 373
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v4, v1

    .line 368
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_75
    move-object v1, v2

    .line 356
    goto :goto_c

    .line 376
    :cond_77
    sget-object v1, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_7c
    monitor-exit v3

    return-object v0

    .line 379
    :catchall_7e
    move-exception v0

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method public static forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 594
    if-eqz p0, :cond_9

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 595
    :goto_5
    if-nez v2, :cond_b

    move-object v0, v1

    .line 604
    :cond_8
    :goto_8
    return-object v0

    :cond_9
    move-object v2, v1

    .line 594
    goto :goto_5

    .line 598
    :cond_b
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 599
    if-nez v0, :cond_15

    move-object v0, v2

    .line 600
    goto :goto_8

    .line 602
    :cond_15
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->itemOf(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 603
    if-eqz v2, :cond_20

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v1

    .line 604
    :cond_20
    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->strip(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    goto :goto_8
.end method

.method static forget(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 349
    sget-object v1, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v1

    .line 350
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method static get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I
    .registers 3

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_18

    .line 130
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    :goto_5
    return v0

    .line 124
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    goto :goto_5

    .line 125
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    goto :goto_5

    .line 126
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_5

    .line 127
    :pswitch_f
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_5

    .line 128
    :pswitch_12
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    goto :goto_5

    .line 129
    :pswitch_15
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    goto :goto_5

    .line 123
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method static handChanged(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;I[I[ZZ)Z
    .registers 16

    .prologue
    .line 431
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 432
    const/4 v0, 0x0

    .line 433
    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x7

    if-ge v1, v2, :cond_17

    .line 434
    aget-boolean v2, p4, v1

    if-eqz v2, :cond_14

    .line 435
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v2, v2, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 433
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 438
    :cond_17
    if-nez p5, :cond_1b

    .line 439
    const/4 v2, 0x0

    .line 471
    :cond_1a
    :goto_1a
    return v2

    .line 441
    :cond_1b
    const/4 v1, 0x2

    aget-boolean v1, p4, v1

    if-eqz v1, :cond_50

    const/4 v1, 0x3

    aget-boolean v1, p4, v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v1, v1, p2

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_50

    const/4 v1, 0x2

    aget v1, p3, v1

    if-lez v1, :cond_50

    .line 442
    const/4 v1, 0x0

    const/4 v2, 0x3

    aget v2, p3, v2

    int-to-float v2, v2

    iget v3, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 443
    iget v2, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v2, :cond_50

    .line 444
    iput v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 445
    const/4 v0, 0x1

    .line 448
    :cond_50
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    if-eqz v1, :cond_57

    const/4 v1, 0x2

    if-le p2, v1, :cond_59

    :cond_57
    move v2, v0

    .line 449
    goto :goto_1a

    .line 451
    :cond_59
    const/4 v1, 0x5

    new-array v5, v1, [I

    fill-array-data v5, :array_be

    .line 452
    const/4 v1, 0x0

    move v2, v0

    :goto_61
    array-length v0, v5

    if-ge v1, v0, :cond_1a

    .line 453
    aget v6, v5, v1

    .line 454
    aget-boolean v0, p4, v6

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v0, v0, p2

    if-nez v0, :cond_74

    .line 452
    :cond_70
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_61

    .line 457
    :cond_74
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v3, v3, p2

    aget v3, v3, v6

    sub-int v7, v0, v3

    .line 458
    const/4 v3, 0x0

    move v0, v2

    :goto_82
    const/4 v2, 0x3

    if-ge v3, v2, :cond_bb

    .line 459
    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 460
    if-eq v3, p2, :cond_9b

    if-eqz v2, :cond_9b

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v8, v8, v3

    if-eqz v8, :cond_9b

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v8, v8, v3

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_9f

    .line 458
    :cond_9b
    :goto_9b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_82

    .line 463
    :cond_9f
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    add-int/2addr v8, v7

    .line 464
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v9

    if-eq v9, v8, :cond_9b

    .line 465
    invoke-static {v2, v6, v8}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 466
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v0, v0, v3

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v2

    aput v2, v0, v6

    .line 467
    const/4 v0, 0x1

    goto :goto_9b

    :cond_bb
    move v2, v0

    goto :goto_70

    .line 451
    nop

    :array_be
    .array-data 4
        0x1
        0x3
        0x5
        0x6
        0x4
    .end array-data
.end method

.method static hint(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 744
    if-eqz p0, :cond_b

    const-string v0, "\u0412\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430, \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430 \u0437\u0430 \u043d\u0435\u0433\u043e"

    const-string v1, "Each client gets the saved program, tuned for them"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 746
    :cond_b
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u2014 \u0432\u0441\u0438\u0447\u043a\u043e \u0435 \u0440\u044a\u0447\u043d\u043e, \u0442\u043e\u0447\u043d\u043e \u043a\u0430\u043a\u0442\u043e \u0433\u043e \u0437\u0430\u0434\u0430\u0434\u0435\u0448"

    const-string v1, "Off \u2014 everything is manual, exactly as you set it"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static itemOf(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 661
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->items:Ljava/util/List;

    .line 662
    if-eqz v3, :cond_7

    if-nez p0, :cond_9

    :cond_7
    move-object v0, v2

    .line 671
    :cond_8
    :goto_8
    return-object v0

    .line 665
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 666
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 667
    if-eqz v0, :cond_1d

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eq v4, p0, :cond_8

    .line 665
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_21
    move-object v0, v2

    .line 671
    goto :goto_8
.end method

.method public static onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 13

    .prologue
    .line 387
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v0

    .line 388
    if-nez v0, :cond_8

    .line 423
    :cond_7
    :goto_7
    return-void

    .line 391
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v5

    .line 392
    const/4 v2, 0x0

    :goto_e
    const/4 v1, 0x4

    if-ge v2, v1, :cond_63

    .line 393
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 394
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    .line 395
    if-eqz v7, :cond_1d

    if-nez v8, :cond_20

    .line 392
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 398
    :cond_20
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    .line 399
    const/4 v1, 0x7

    new-array v4, v1, [Z

    .line 400
    const/4 v1, 0x0

    move v6, v1

    :goto_29
    const/4 v1, 0x7

    if-ge v6, v1, :cond_3d

    .line 401
    aget v1, v3, v6

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v9

    if-eq v1, v9, :cond_3b

    const/4 v1, 0x1

    :goto_35
    aput-boolean v1, v4, v6

    .line 400
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_29

    .line 401
    :cond_3b
    const/4 v1, 0x0

    goto :goto_35

    .line 403
    :cond_3d
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 404
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/ProgramFit;->zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 405
    if-eqz v1, :cond_57

    if-eqz v6, :cond_57

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_57

    .line 406
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v1, v1, v2

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    :cond_57
    move-object v1, p2

    .line 408
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->handChanged(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;I[I[ZZ)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5b} :catch_5c

    goto :goto_1d

    .line 420
    :catch_5c
    move-exception v0

    .line 421
    const-string v1, "ProgramFit.onEdit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 410
    :cond_63
    const/4 v1, 0x0

    :goto_64
    const/4 v2, 0x4

    if-ge v1, v2, :cond_78

    .line 411
    :try_start_67
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_75

    .line 413
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v3, v1

    .line 410
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 416
    :cond_78
    iput-object p2, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_7

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_8b} :catch_5c

    goto/16 :goto_7
.end method

.method public static onMaster(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x4

    .line 546
    :try_start_3
    invoke-static {p2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 547
    if-eqz v0, :cond_14

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 548
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V

    .line 550
    :cond_14
    if-eqz p0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v3, v0

    .line 551
    :goto_1f
    if-nez v3, :cond_24

    .line 588
    :goto_21
    return-void

    :cond_22
    move-object v3, v2

    .line 550
    goto :goto_1f

    .line 554
    :cond_24
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v0

    .line 555
    if-eqz v0, :cond_58

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 556
    :goto_30
    new-instance v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;-><init>()V

    .line 557
    iget-wide v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v6, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    .line 558
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->program:Ljava/lang/String;

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    .line 560
    iput-object p2, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 561
    const/4 v0, 0x4

    new-array v6, v0, [[I

    move v3, v1

    .line 562
    :goto_46
    if-ge v3, v8, :cond_5c

    .line 563
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_5a

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    :goto_52
    aput-object v0, v6, v3

    .line 562
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    :cond_58
    move-object v4, v2

    .line 555
    goto :goto_30

    :cond_5a
    move-object v0, v2

    .line 564
    goto :goto_52

    .line 566
    :cond_5c
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->personalize([[ILcom/isaigu/gymapp/ai/AiProfile;)[[I

    move-result-object v3

    move v2, v1

    .line 567
    :goto_61
    if-ge v2, v8, :cond_a2

    .line 568
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 569
    if-nez v4, :cond_6d

    .line 567
    :goto_69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_61

    :cond_6d
    move v0, v1

    .line 572
    :goto_6e
    const/4 v7, 0x7

    if-ge v0, v7, :cond_8b

    .line 573
    if-ne v0, v8, :cond_7c

    iget-object v7, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v7, :cond_7c

    .line 572
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 576
    :cond_7c
    aget-object v7, v3, v2

    aget v7, v7, v0

    invoke-static {v4, v0, v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_83} :catch_84

    goto :goto_79

    .line 585
    :catch_84
    move-exception v0

    .line 586
    const-string v1, "ProgramFit.onMaster"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 578
    :cond_8b
    :try_start_8b
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v7, v6, v2

    aput-object v7, v0, v2

    .line 579
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    aput-object v7, v0, v2

    .line 580
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_69

    .line 582
    :cond_a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v1
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_a5} :catch_84

    .line 583
    :try_start_a5
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    monitor-exit v1

    goto/16 :goto_21

    :catchall_ad
    move-exception v0

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_ad

    :try_start_af
    throw v0
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b0} :catch_84
.end method

.method public static onSaveClick(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 6

    .prologue
    .line 810
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->init(Landroid/content/Context;)V

    .line 811
    if-eqz p1, :cond_65

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 812
    :goto_7
    if-eqz p0, :cond_67

    if-eqz v0, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v1, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u0417\u0430\u043f\u0438\u0441\u0430\u043d\u043e \u0437\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 Saved for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 824
    :cond_64
    :goto_64
    return-void

    .line 811
    :cond_65
    const/4 v0, 0x0

    goto :goto_7

    .line 817
    :cond_67
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 818
    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 819
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_64

    .line 821
    :catch_73
    move-exception v0

    .line 822
    const-string v1, "ProgramFit.onSaveClick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64
.end method

.method static own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 310
    if-nez v2, :cond_8

    .line 311
    const/4 v0, 0x0

    .line 325
    :goto_7
    return-object v0

    .line 313
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_2d

    .line 315
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 316
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_29

    .line 317
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 318
    if-eqz v0, :cond_29

    .line 319
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_7

    .line 315
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2d
    move-object v0, v2

    .line 325
    goto :goto_7
.end method

.method static personalize([[ILcom/isaigu/gymapp/ai/AiProfile;)[[I
    .registers 13

    .prologue
    .line 169
    const/4 v0, 0x4

    new-array v4, v0, [[I

    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1c

    .line 171
    aget-object v0, p0, v1

    if-eqz v0, :cond_1a

    aget-object v0, p0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_14
    aput-object v0, v4, v1

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 171
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14

    .line 173
    :cond_1c
    if-nez p1, :cond_20

    move-object v0, v4

    .line 228
    :goto_1f
    return-object v0

    .line 176
    :cond_20
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v6

    .line 177
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x1

    .line 178
    :goto_2b
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v1, v2, :cond_50

    const/4 v1, 0x1

    .line 179
    :goto_32
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_52

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_52

    const/4 v2, 0x1

    .line 180
    :goto_41
    const/4 v3, 0x0

    move v5, v3

    :goto_43
    const/4 v3, 0x3

    if-ge v5, v3, :cond_c5

    .line 181
    aget-object v3, v4, v5

    if-nez v3, :cond_54

    .line 180
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_43

    .line 177
    :cond_4e
    const/4 v0, 0x0

    goto :goto_2b

    .line 178
    :cond_50
    const/4 v1, 0x0

    goto :goto_32

    .line 179
    :cond_52
    const/4 v2, 0x0

    goto :goto_41

    .line 184
    :cond_54
    if-eqz v0, :cond_6b

    .line 185
    aget-object v3, v4, v5

    const/4 v7, 0x1

    aget v8, v3, v7

    add-int/lit8 v8, v8, -0x32

    aput v8, v3, v7

    .line 186
    aget-object v7, v4, v5

    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v3, 0x2

    if-ge v5, v3, :cond_c1

    const/4 v3, 0x1

    :goto_68
    add-int/2addr v3, v9

    aput v3, v7, v8

    .line 188
    :cond_6b
    if-eqz v2, :cond_82

    .line 189
    aget-object v3, v4, v5

    const/4 v7, 0x1

    aget v8, v3, v7

    add-int/lit8 v8, v8, -0x19

    aput v8, v3, v7

    .line 190
    aget-object v7, v4, v5

    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v3, 0x2

    if-ge v5, v3, :cond_c3

    const/4 v3, 0x1

    :goto_7f
    add-int/2addr v3, v9

    aput v3, v7, v8

    .line 192
    :cond_82
    aget-object v3, v4, v5

    const/4 v7, 0x3

    aget v8, v3, v7

    iget v9, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v8, v9

    aput v8, v3, v7

    .line 193
    iget v3, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    if-lez v3, :cond_4a

    .line 194
    const/16 v3, 0x5dc

    aget-object v7, v4, v5

    const/4 v8, 0x5

    aget v7, v7, v8

    iget v8, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x1f3

    div-int/lit16 v7, v7, 0x1f4

    mul-int/lit16 v7, v7, 0x1f4

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 195
    aget-object v7, v4, v5

    const/4 v8, 0x5

    aget-object v9, v4, v5

    const/4 v10, 0x5

    aget v9, v9, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v7, v8

    .line 196
    aget-object v7, v4, v5

    const/4 v8, 0x6

    aget-object v9, v4, v5

    const/4 v10, 0x6

    aget v9, v9, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v7, v8

    goto :goto_4a

    .line 186
    :cond_c1
    const/4 v3, 0x0

    goto :goto_68

    .line 190
    :cond_c3
    const/4 v3, 0x0

    goto :goto_7f

    .line 199
    :cond_c5
    if-eqz v1, :cond_e7

    if-nez v2, :cond_e7

    .line 200
    const/4 v0, 0x0

    aget-object v0, v4, v0

    if-eqz v0, :cond_d8

    .line 201
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 203
    :cond_d8
    const/4 v0, 0x1

    aget-object v0, v4, v0

    if-eqz v0, :cond_e7

    .line 204
    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x32

    aput v2, v0, v1

    .line 207
    :cond_e7
    iget v0, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    if-lez v0, :cond_114

    const/4 v0, 0x3

    aget-object v0, v4, v0

    if-eqz v0, :cond_114

    .line 208
    const/4 v0, 0x3

    aget-object v0, v4, v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    aget-object v2, v4, v2

    const/4 v3, 0x5

    aget v2, v2, v3

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 209
    const/4 v0, 0x3

    aget-object v0, v4, v0

    const/4 v1, 0x6

    const/4 v2, 0x3

    aget-object v2, v4, v2

    const/4 v3, 0x6

    aget v2, v2, v3

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 211
    :cond_114
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_154

    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x12c

    invoke-static {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->add([[IIII)V

    .line 213
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v2, 0x12c

    invoke-static {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->add([[IIII)V

    .line 222
    :cond_128
    :goto_128
    const/4 v0, 0x0

    :goto_129
    const/4 v1, 0x4

    if-ge v0, v1, :cond_18f

    .line 223
    aget-object v1, v4, v0

    if-eqz v1, :cond_151

    .line 224
    aget-object v1, v4, v0

    const/4 v2, 0x1

    aget-object v3, v4, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    const/16 v5, 0x32

    const/16 v6, 0x190

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v3

    aput v3, v1, v2

    .line 225
    aget-object v1, v4, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-object v5, v4, v0

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v1, v2

    .line 222
    :cond_151
    add-int/lit8 v0, v0, 0x1

    goto :goto_129

    .line 214
    :cond_154
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_181

    .line 215
    const/4 v0, 0x3

    aget-object v0, v4, v0

    if-eqz v0, :cond_179

    .line 216
    const/4 v0, 0x3

    aget-object v0, v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    aget-object v3, v4, v3

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 218
    :cond_179
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/16 v2, 0x12c

    invoke-static {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->add([[IIII)V

    goto :goto_128

    .line 219
    :cond_181
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_128

    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/16 v2, 0x12c

    invoke-static {v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->add([[IIII)V

    goto :goto_128

    :cond_18f
    move-object v0, v4

    .line 228
    goto/16 :goto_1f
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_program_fit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static programs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static refresh(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 4

    .prologue
    .line 675
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 676
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    .line 678
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method static saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 632
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 633
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 634
    if-eqz v1, :cond_23

    .line 635
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 636
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_23

    .line 637
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 638
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 639
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    .line 640
    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 636
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 644
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 645
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_35

    .line 646
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 648
    :cond_35
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 650
    :try_start_38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_4a

    .line 653
    :goto_3b
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 655
    const/16 v0, 0x6a

    :try_start_46
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4c

    .line 658
    :goto_49
    return-void

    .line 651
    :catch_4a
    move-exception v1

    goto :goto_3b

    .line 656
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method static set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    .registers 5

    .prologue
    const/16 v1, 0xbb8

    const/4 v0, 0x0

    .line 135
    packed-switch p1, :pswitch_data_40

    .line 142
    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 144
    :goto_c
    return-void

    .line 136
    :pswitch_d
    const/4 v0, 0x1

    const/16 v1, 0x78

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    goto :goto_c

    .line 137
    :pswitch_17
    const/16 v0, 0x32

    const/16 v1, 0x190

    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    goto :goto_c

    .line 138
    :pswitch_22
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_c

    .line 139
    :pswitch_29
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_c

    .line 140
    :pswitch_30
    const/16 v0, 0x3c

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    goto :goto_c

    .line 141
    :pswitch_39
    invoke-static {p2, v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    goto :goto_c

    .line 135
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
        :pswitch_22
        :pswitch_29
        :pswitch_30
        :pswitch_39
    .end packed-switch
.end method

.method static setEnabled(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personal"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    const-string v1, "manual"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "personalisation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2e

    const-string v0, "on"

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_2d
    return-void

    .line 102
    :cond_2e
    const-string v0, "off"
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_22

    .line 103
    :catch_31
    move-exception v0

    goto :goto_2d
.end method

.method static stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 335
    if-eqz p0, :cond_9

    if-nez v3, :cond_b

    :cond_9
    move-object v0, v2

    .line 344
    :cond_a
    :goto_a
    return-object v0

    .line 338
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 339
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 340
    if-eqz v0, :cond_23

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 338
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    move-object v0, v2

    .line 344
    goto :goto_a
.end method

.method static strip(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 9

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 609
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    if-nez v0, :cond_7

    .line 627
    :cond_6
    return-object p1

    :cond_7
    move v2, v1

    .line 612
    :goto_8
    const/4 v0, 0x4

    if-ge v2, v0, :cond_6

    .line 613
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 614
    if-eqz v3, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v0, v0, v2

    if-nez v0, :cond_21

    .line 612
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_21
    move v0, v1

    .line 617
    :goto_22
    if-ge v0, v6, :cond_44

    .line 618
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v0

    if-nez v4, :cond_41

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    if-ne v4, v5, :cond_41

    .line 619
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 617
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 622
    :cond_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneBase:[[I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneFit:[[I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v0, v0, v2

    aget-boolean v0, v0, v6

    if-nez v0, :cond_1d

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_1d

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneFit:[[I

    aget-object v4, v4, v2

    .line 623
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 624
    iget-object v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->zoneBase:[[I

    aget-object v0, v0, v2

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    goto :goto_1d
.end method

.method static tick(Landroid/content/Context;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    sput-object p1, Lcom/isaigu/gymapp/wearable/ProgramFit;->items:Ljava/util/List;

    .line 477
    if-eqz p0, :cond_a

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->app:Landroid/content/Context;

    .line 480
    :cond_a
    if-nez p1, :cond_d

    .line 531
    :cond_c
    return-void

    .line 483
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->blockArmed()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_19
    const/4 v0, 0x1

    move v7, v0

    .line 484
    :goto_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v5

    .line 485
    const/4 v0, 0x0

    move v8, v0

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 486
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 487
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_43

    .line 485
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_21

    .line 483
    :cond_40
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1b

    .line 490
    :cond_43
    invoke-static {v6}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->seen(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 491
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_3c

    .line 496
    :try_start_4d
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eq v1, v2, :cond_76

    .line 497
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 498
    const/4 v1, 0x0

    move v2, v1

    :goto_5d
    const/4 v1, 0x4

    if-ge v2, v1, :cond_3c

    .line 499
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 500
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    if-eqz v1, :cond_74

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    :goto_6e
    aput-object v1, v3, v2

    .line 498
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5d

    .line 500
    :cond_74
    const/4 v1, 0x0

    goto :goto_6e

    .line 504
    :cond_76
    const/4 v9, 0x0

    .line 505
    const/4 v2, 0x0

    :goto_78
    const/4 v1, 0x4

    if-ge v2, v1, :cond_cb

    .line 506
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 507
    if-eqz v10, :cond_f4

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    aget-object v1, v1, v2

    if-nez v1, :cond_90

    move v1, v9

    .line 505
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    move v9, v1

    goto :goto_78

    .line 510
    :cond_90
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    aget-object v3, v1, v2

    .line 511
    if-nez v7, :cond_f4

    const/4 v1, 0x2

    aget v1, v3, v1

    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-ne v1, v4, :cond_a4

    const/4 v1, 0x3

    aget v1, v3, v1

    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v4, :cond_f4

    .line 512
    :cond_a4
    const/4 v1, 0x7

    new-array v4, v1, [Z

    .line 513
    const/4 v11, 0x2

    const/4 v1, 0x2

    aget v1, v3, v1

    iget v12, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-eq v1, v12, :cond_c7

    const/4 v1, 0x1

    :goto_b0
    aput-boolean v1, v4, v11

    .line 514
    const/4 v11, 0x3

    const/4 v1, 0x3

    aget v1, v3, v1

    iget v10, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v10, :cond_c9

    const/4 v1, 0x1

    :goto_bb
    aput-boolean v1, v4, v11

    .line 515
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->handChanged(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;I[I[ZZ)Z

    move-result v1

    or-int/2addr v1, v9

    goto :goto_8c

    .line 513
    :cond_c7
    const/4 v1, 0x0

    goto :goto_b0

    .line 514
    :cond_c9
    const/4 v1, 0x0

    goto :goto_bb

    .line 518
    :cond_cb
    const/4 v1, 0x0

    :goto_cc
    const/4 v2, 0x4

    if-ge v1, v2, :cond_e4

    .line 519
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 520
    if-eqz v2, :cond_e1

    .line 521
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v3, v1

    .line 518
    :cond_e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 524
    :cond_e4
    if-eqz v9, :cond_3c

    .line 525
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_ea} :catch_ec

    goto/16 :goto_3c

    .line 527
    :catch_ec
    move-exception v0

    .line 528
    const-string v1, "ProgramFit.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    :cond_f4
    move v1, v9

    goto :goto_8c
.end method

.method static values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 147
    new-array v1, v3, [I

    .line 148
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_f

    .line 149
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v2

    aput v2, v1, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 151
    :cond_f
    return-object v1
.end method

.method static zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 2

    .prologue
    .line 155
    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
