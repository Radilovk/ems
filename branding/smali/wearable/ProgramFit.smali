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
    .line 778
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 779
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 780
    check-cast v0, Landroid/app/Activity;

    .line 784
    :goto_b
    return-object v0

    .line 782
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 784
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

    .line 293
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
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v3

    .line 287
    :try_start_f8
    sget-object v2, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_f8 .. :try_end_100} :catchall_169

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    .line 290
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

    .line 291
    if-eqz v5, :cond_16c

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

    .line 292
    :goto_15c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 288
    :catchall_169
    move-exception v2

    :try_start_16a
    monitor-exit v3
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    throw v2

    .line 292
    :cond_16c
    const-string v2, " as saved (personalisation off)"

    goto :goto_15c
.end method

.method public static attachSwitch(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 688
    if-nez p0, :cond_3

    .line 721
    :cond_2
    :goto_2
    return-void

    .line 692
    :cond_3
    const/4 v3, 0x0

    move-object v2, p0

    .line 693
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_7b

    .line 694
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 695
    instance-of v4, v1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_79

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_79

    .line 696
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 701
    :goto_1f
    if-eqz v1, :cond_2

    .line 704
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->style(Landroid/view/ViewGroup;)V

    .line 705
    const-string v2, "xems_program_fit_switch"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 708
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 709
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 710
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v3

    .line 711
    const-string v4, "\u041f\u0435\u0440\u0441\u043e\u043d\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v5, "Personalisation"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 712
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->hint(Z)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;

    invoke-direct {v6, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;-><init>(Landroid/content/Context;)V

    .line 711
    invoke-static {v2, v4, v5, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 713
    const-string v4, "xems_program_fit_switch"

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 714
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 715
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v3, v4, v5, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 716
    const/4 v2, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_71} :catch_72

    goto :goto_2

    .line 718
    :catch_72
    move-exception v1

    .line 719
    const-string v2, "ProgramFit.attachSwitch"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_79
    move-object v2, v1

    .line 700
    goto :goto_5

    :cond_7b
    move-object v1, v3

    goto :goto_1f
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
    .line 747
    if-eqz p0, :cond_a

    .line 748
    new-instance v0, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 750
    :cond_a
    return-void
.end method

.method private static blockArmed()Z
    .registers 1

    .prologue
    .line 515
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 517
    :goto_4
    return v0

    .line 516
    :catch_5
    move-exception v0

    .line 517
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

    .line 337
    if-eqz p0, :cond_75

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 338
    :goto_c
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v3

    .line 339
    :try_start_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    .line 340
    if-eqz v0, :cond_29

    if-eqz v1, :cond_23

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    iget-wide v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_29

    .line 341
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 344
    :cond_29
    if-nez v0, :cond_7c

    if-eqz p1, :cond_7c

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 345
    new-instance v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;-><init>()V

    .line 346
    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    .line 347
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->program:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 349
    const/4 v1, 0x0

    :goto_4d
    const/4 v2, 0x4

    if-ge v1, v2, :cond_77

    .line 350
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_72

    .line 352
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    aput-object v5, v4, v1

    .line 353
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v5

    aput-object v5, v4, v1

    .line 354
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v4, v1

    .line 349
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_75
    move-object v1, v2

    .line 337
    goto :goto_c

    .line 357
    :cond_77
    sget-object v1, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_7c
    monitor-exit v3

    return-object v0

    .line 360
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

    .line 574
    if-eqz p0, :cond_9

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 575
    :goto_5
    if-nez v2, :cond_b

    move-object v0, v1

    .line 584
    :cond_8
    :goto_8
    return-object v0

    :cond_9
    move-object v2, v1

    .line 574
    goto :goto_5

    .line 578
    :cond_b
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 579
    if-nez v0, :cond_15

    move-object v0, v2

    .line 580
    goto :goto_8

    .line 582
    :cond_15
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->itemOf(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_20

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v1

    .line 584
    :cond_20
    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->strip(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    goto :goto_8
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
    .line 412
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 413
    const/4 v0, 0x0

    .line 414
    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x7

    if-ge v1, v2, :cond_17

    .line 415
    aget-boolean v2, p4, v1

    if-eqz v2, :cond_14

    .line 416
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v2, v2, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 414
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 419
    :cond_17
    if-nez p5, :cond_1b

    .line 420
    const/4 v2, 0x0

    .line 452
    :cond_1a
    :goto_1a
    return v2

    .line 422
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

    .line 423
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

    .line 424
    iget v2, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v2, :cond_50

    .line 425
    iput v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 426
    const/4 v0, 0x1

    .line 429
    :cond_50
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    if-eqz v1, :cond_57

    const/4 v1, 0x2

    if-le p2, v1, :cond_59

    :cond_57
    move v2, v0

    .line 430
    goto :goto_1a

    .line 432
    :cond_59
    const/4 v1, 0x5

    new-array v5, v1, [I

    fill-array-data v5, :array_be

    .line 433
    const/4 v1, 0x0

    move v2, v0

    :goto_61
    array-length v0, v5

    if-ge v1, v0, :cond_1a

    .line 434
    aget v6, v5, v1

    .line 435
    aget-boolean v0, p4, v6

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v0, v0, p2

    if-nez v0, :cond_74

    .line 433
    :cond_70
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_61

    .line 438
    :cond_74
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v3, v3, p2

    aget v3, v3, v6

    sub-int v7, v0, v3

    .line 439
    const/4 v3, 0x0

    move v0, v2

    :goto_82
    const/4 v2, 0x3

    if-ge v3, v2, :cond_bb

    .line 440
    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 441
    if-eq v3, p2, :cond_9b

    if-eqz v2, :cond_9b

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v8, v8, v3

    if-eqz v8, :cond_9b

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v8, v8, v3

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_9f

    .line 439
    :cond_9b
    :goto_9b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_82

    .line 444
    :cond_9f
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    add-int/2addr v8, v7

    .line 445
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v9

    if-eq v9, v8, :cond_9b

    .line 446
    invoke-static {v2, v6, v8}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v0, v0, v3

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v2

    aput v2, v0, v6

    .line 448
    const/4 v0, 0x1

    goto :goto_9b

    :cond_bb
    move v2, v0

    goto :goto_70

    .line 432
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
    .line 724
    if-eqz p0, :cond_b

    const-string v0, "\u0412\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430, \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430 \u0437\u0430 \u043d\u0435\u0433\u043e"

    const-string v1, "Each client gets the saved program, tuned for them"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 726
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

    .line 642
    sget-object v3, Lcom/isaigu/gymapp/wearable/ProgramFit;->items:Ljava/util/List;

    .line 643
    if-eqz v3, :cond_7

    if-nez p0, :cond_9

    :cond_7
    move-object v0, v2

    .line 652
    :cond_8
    :goto_8
    return-object v0

    .line 646
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 647
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 648
    if-eqz v0, :cond_1d

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eq v4, p0, :cond_8

    .line 646
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_21
    move-object v0, v2

    .line 652
    goto :goto_8
.end method

.method public static onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 13

    .prologue
    .line 368
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v0

    .line 369
    if-nez v0, :cond_8

    .line 404
    :cond_7
    :goto_7
    return-void

    .line 372
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v5

    .line 373
    const/4 v2, 0x0

    :goto_e
    const/4 v1, 0x4

    if-ge v2, v1, :cond_63

    .line 374
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 375
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    .line 376
    if-eqz v7, :cond_1d

    if-nez v8, :cond_20

    .line 373
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 379
    :cond_20
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v3

    .line 380
    const/4 v1, 0x7

    new-array v4, v1, [Z

    .line 381
    const/4 v1, 0x0

    move v6, v1

    :goto_29
    const/4 v1, 0x7

    if-ge v6, v1, :cond_3d

    .line 382
    aget v1, v3, v6

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/wearable/ProgramFit;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)I

    move-result v9

    if-eq v1, v9, :cond_3b

    const/4 v1, 0x1

    :goto_35
    aput-boolean v1, v4, v6

    .line 381
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_29

    .line 382
    :cond_3b
    const/4 v1, 0x0

    goto :goto_35

    .line 384
    :cond_3d
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 385
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/ProgramFit;->zones(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v6

    .line 386
    if-eqz v1, :cond_57

    if-eqz v6, :cond_57

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_57

    .line 387
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->manual:[[Z

    aget-object v1, v1, v2

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    :cond_57
    move-object v1, p2

    .line 389
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->handChanged(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;I[I[ZZ)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5b} :catch_5c

    goto :goto_1d

    .line 401
    :catch_5c
    move-exception v0

    .line 402
    const-string v1, "ProgramFit.onEdit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 391
    :cond_63
    const/4 v1, 0x0

    :goto_64
    const/4 v2, 0x4

    if-ge v1, v2, :cond_78

    .line 392
    :try_start_67
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_75

    .line 394
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v3, v1

    .line 391
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 397
    :cond_78
    iput-object p2, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_7

    .line 399
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

    .line 526
    :try_start_3
    invoke-static {p2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 527
    if-eqz v0, :cond_14

    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 528
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V

    .line 530
    :cond_14
    if-eqz p0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v3, v0

    .line 531
    :goto_1f
    if-nez v3, :cond_24

    .line 568
    :goto_21
    return-void

    :cond_22
    move-object v3, v2

    .line 530
    goto :goto_1f

    .line 534
    :cond_24
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v0

    .line 535
    if-eqz v0, :cond_58

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    move-object v4, v0

    .line 536
    :goto_30
    new-instance v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;-><init>()V

    .line 537
    iget-wide v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v6, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->userId:J

    .line 538
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->program:Ljava/lang/String;

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    .line 540
    iput-object p2, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 541
    const/4 v0, 0x4

    new-array v6, v0, [[I

    move v3, v1

    .line 542
    :goto_46
    if-ge v3, v8, :cond_5c

    .line 543
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_5a

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    :goto_52
    aput-object v0, v6, v3

    .line 542
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    :cond_58
    move-object v4, v2

    .line 535
    goto :goto_30

    :cond_5a
    move-object v0, v2

    .line 544
    goto :goto_52

    .line 546
    :cond_5c
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->personalize([[ILcom/isaigu/gymapp/ai/AiProfile;)[[I

    move-result-object v3

    move v2, v1

    .line 547
    :goto_61
    if-ge v2, v8, :cond_a2

    .line 548
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 549
    if-nez v4, :cond_6d

    .line 547
    :goto_69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_61

    :cond_6d
    move v0, v1

    .line 552
    :goto_6e
    const/4 v7, 0x7

    if-ge v0, v7, :cond_8b

    .line 553
    if-ne v0, v8, :cond_7c

    iget-object v7, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v7, :cond_7c

    .line 552
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 556
    :cond_7c
    aget-object v7, v3, v2

    aget v7, v7, v0

    invoke-static {v4, v0, v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_83} :catch_84

    goto :goto_79

    .line 565
    :catch_84
    move-exception v0

    .line 566
    const-string v1, "ProgramFit.onMaster"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 558
    :cond_8b
    :try_start_8b
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v7, v6, v2

    aput-object v7, v0, v2

    .line 559
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v7

    aput-object v7, v0, v2

    .line 560
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_69

    .line 562
    :cond_a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    monitor-enter v1
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_a5} :catch_84

    .line 563
    :try_start_a5
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->FITS:Ljava/util/Map;

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
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
    .line 790
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->init(Landroid/content/Context;)V

    .line 791
    if-eqz p1, :cond_65

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 792
    :goto_7
    if-eqz p0, :cond_67

    if-eqz v0, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v1, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 793
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

    .line 804
    :cond_64
    :goto_64
    return-void

    .line 791
    :cond_65
    const/4 v0, 0x0

    goto :goto_7

    .line 797
    :cond_67
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 798
    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 799
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_64

    .line 801
    :catch_73
    move-exception v0

    .line 802
    const-string v1, "ProgramFit.onSaveClick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64
.end method

.method static own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 5

    .prologue
    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 298
    if-nez v2, :cond_8

    .line 299
    const/4 v0, 0x0

    .line 313
    :goto_7
    return-object v0

    .line 301
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_2d

    .line 303
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 304
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_29

    .line 305
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 306
    if-eqz v0, :cond_29

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_7

    .line 303
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2d
    move-object v0, v2

    .line 313
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
    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 318
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
    .line 656
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 657
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    .line 659
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    return-void
.end method

.method static saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 612
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 613
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 614
    if-eqz v1, :cond_27

    .line 615
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 616
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_27

    .line 617
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 618
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 619
    if-eqz v2, :cond_24

    if-eqz v3, :cond_24

    .line 620
    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 621
    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 616
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 625
    :cond_27
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 626
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_39

    .line 627
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 629
    :cond_39
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 631
    :try_start_3c
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_4e

    .line 634
    :goto_3f
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 636
    const/16 v0, 0x6a

    :try_start_4a
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_50

    .line 639
    :goto_4d
    return-void

    .line 632
    :catch_4e
    move-exception v1

    goto :goto_3f

    .line 637
    :catch_50
    move-exception v0

    goto :goto_4d
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

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 323
    if-eqz p0, :cond_9

    if-nez v3, :cond_b

    :cond_9
    move-object v0, v2

    .line 332
    :cond_a
    :goto_a
    return-object v0

    .line 326
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 327
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 328
    if-eqz v0, :cond_23

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 326
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    move-object v0, v2

    .line 332
    goto :goto_a
.end method

.method static strip(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 9

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 589
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->hasBase:Z

    if-nez v0, :cond_7

    .line 607
    :cond_6
    return-object p1

    :cond_7
    move v2, v1

    .line 592
    :goto_8
    const/4 v0, 0x4

    if-ge v2, v0, :cond_6

    .line 593
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 594
    if-eqz v3, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->fit:[[I

    aget-object v0, v0, v2

    if-nez v0, :cond_21

    .line 592
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_21
    move v0, v1

    .line 597
    :goto_22
    if-ge v0, v6, :cond_44

    .line 598
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

    .line 599
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->base:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->set(Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 597
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 602
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

    .line 603
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 604
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
    .line 457
    sput-object p1, Lcom/isaigu/gymapp/wearable/ProgramFit;->items:Ljava/util/List;

    .line 458
    if-eqz p0, :cond_a

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/ProgramFit;->app:Landroid/content/Context;

    .line 461
    :cond_a
    if-nez p1, :cond_d

    .line 511
    :cond_c
    return-void

    .line 464
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

    .line 465
    :goto_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v5

    .line 466
    const/4 v0, 0x0

    move v8, v0

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 467
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 468
    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_43

    .line 466
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_21

    .line 464
    :cond_40
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1b

    .line 471
    :cond_43
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->fitFor(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_3c

    .line 476
    :try_start_4a
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eq v1, v2, :cond_73

    .line 477
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 478
    const/4 v1, 0x0

    move v2, v1

    :goto_5a
    const/4 v1, 0x4

    if-ge v2, v1, :cond_3c

    .line 479
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->ref:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 480
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    if-eqz v1, :cond_71

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    :goto_6b
    aput-object v1, v3, v2

    .line 478
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5a

    .line 480
    :cond_71
    const/4 v1, 0x0

    goto :goto_6b

    .line 484
    :cond_73
    const/4 v9, 0x0

    .line 485
    const/4 v2, 0x0

    :goto_75
    const/4 v1, 0x4

    if-ge v2, v1, :cond_c8

    .line 486
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 487
    if-eqz v10, :cond_f1

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    aget-object v1, v1, v2

    if-nez v1, :cond_8d

    move v1, v9

    .line 485
    :goto_89
    add-int/lit8 v2, v2, 0x1

    move v9, v1

    goto :goto_75

    .line 490
    :cond_8d
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    aget-object v3, v1, v2

    .line 491
    if-nez v7, :cond_f1

    const/4 v1, 0x2

    aget v1, v3, v1

    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-ne v1, v4, :cond_a1

    const/4 v1, 0x3

    aget v1, v3, v1

    iget v4, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v4, :cond_f1

    .line 492
    :cond_a1
    const/4 v1, 0x7

    new-array v4, v1, [Z

    .line 493
    const/4 v11, 0x2

    const/4 v1, 0x2

    aget v1, v3, v1

    iget v12, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-eq v1, v12, :cond_c4

    const/4 v1, 0x1

    :goto_ad
    aput-boolean v1, v4, v11

    .line 494
    const/4 v11, 0x3

    const/4 v1, 0x3

    aget v1, v3, v1

    iget v10, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eq v1, v10, :cond_c6

    const/4 v1, 0x1

    :goto_b8
    aput-boolean v1, v4, v11

    .line 495
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->handChanged(Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;Lcom/isaigu/gymapp/bean/TrainProgram;I[I[ZZ)Z

    move-result v1

    or-int/2addr v1, v9

    goto :goto_89

    .line 493
    :cond_c4
    const/4 v1, 0x0

    goto :goto_ad

    .line 494
    :cond_c6
    const/4 v1, 0x0

    goto :goto_b8

    .line 498
    :cond_c8
    const/4 v1, 0x0

    :goto_c9
    const/4 v2, 0x4

    if-ge v1, v2, :cond_e1

    .line 499
    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_de

    .line 501
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/ProgramFit$Fit;->last:[[I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v2

    aput-object v2, v3, v1

    .line 498
    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 504
    :cond_e1
    if-eqz v9, :cond_3c

    .line 505
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->refresh(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_e7} :catch_e9

    goto/16 :goto_3c

    .line 507
    :catch_e9
    move-exception v0

    .line 508
    const-string v1, "ProgramFit.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    :cond_f1
    move v1, v9

    goto :goto_89
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
